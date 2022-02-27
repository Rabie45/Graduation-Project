#include "Serial.h"
uint8_t Serial_begin(const long int baudrate)
{
    unsigned int x;
    x = (_XTAL_FREQ - baudrate * 64) / (baudrate * 64);
    if (x > 255)
    {
        x = (_XTAL_FREQ - baudrate * 16) / (baudrate * 16);
        BRGH = 1;
    }
    if (x < 256)
    {
        SPBRG = x;
        SYNC = 0;
        SPEN = 1;
        TRISC7 = 1;
        TRISC6 = 1;
        CREN = 1;
        TXEN = 1;
        return 1;
    }
    return 0;
}

uint8_t Serial_available()
{
    return RCIF;
}
uint8_t Serial_read()
{

    while (!RCIF)
        ;
    return RCREG;
}
void Serial_write(uint8_t data)
{
    while (!TRMT)
        ;
    TXREG = data;
}

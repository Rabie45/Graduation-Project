#include "Serial.h"
#if _16f877a
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
#elif _16F1828
uint8_t Serial_begin(const long int baudrate)
{
    unsigned int x = (_XTAL_FREQ - baudrate * 66) / (baudrate * 64);
    SPBRG = x;
    BRGH = 1;
    RXDTSEL = 0;
    TXCKSEL = 1;
    ANSELBbits.ANSB5 = 0;
    SYNC = 0;
    SPEN = 1;
    TRISC4 = 1;
    TRISB5 = 1;
    SENDB = 0;
    CREN = 1;
    TXEN = 1;
    return 1;
    if (x < 256)
    {
        /*ANSELC4 = 0;
        ANSLB5 = 0;
        RXDTSEL = 0;
        SPBRG = x;
        SYNC = 0;
        SPEN = 1;
        TRISC4 = 0;
        TRISB5 = 1;
        SENDB = 0;
        CREN = 1;
        TXEN = 1;
        BAUDCON = 0b00000000;
        return 1;*/
    }
    return 0;
}
#endif

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

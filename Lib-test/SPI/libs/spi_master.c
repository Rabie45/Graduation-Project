#include <spi_master.h>
#ifdef _16F1828
void SPI_initialize()
{
    SSP1STAT = 0b01000000; // pg 290/420
    SSPEN = 1;
    TRISB4 = 1; // SDI must have corresponding TRIS bit set
    TRISC7 = 0; // SDO must have corresponding TRIS bit cleared
    TRISB6 = 0; // SCK (Master mode) must have corresponding TRIS bit cleared
    SSP1CON = (SSP1CON & 0xf0) | 0b0010;
    SSP1CON3 = (SSP1CON3 & 0x10);
}

uint8_t SPI_exchangeByte(uint8_t byte)
{

    SSP1BUF = byte;
    while (SSP1IF == 0)
        ; // wait for the byte to be sent
    SSP1IF = 0;
    return SSP1BUF;
}
#endif
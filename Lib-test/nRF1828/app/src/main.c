/*
Author: Abdallah rabie
https://github.com/Rabie45
Module: -
*/
#include <pic16f1828.h>
#include <stdint.h>
#include <rf24.h>
#include <internet.h>
#include <buffers.h>
#include <string.h>
#include <packets.h>
#include <OXPacket.h>
#include <wait.h>
#include <spi_master.h>
#pragma config FOSC = INTOSC  // Oscillator Selection (INTOSC oscillator: I/O function on CLKIN pin)
#pragma config WDTE = OFF     // Watchdog Timer Enable (WDT disabled)
#pragma config PWRTE = ON     // Power-up Timer Enable (PWRT disabled)
#pragma config MCLRE = ON     // MCLR Pin Function Select (MCLR/VPP pin function is MCLR)
#pragma config CP = OFF       // Flash Program Memory Code Protection (Program memory code protection is disabled)
#pragma config CPD = OFF      // Data Memory Code Protection (Data memory code protection is disabled)
#pragma config BOREN = OFF    // Brown-out Reset Enable (Brown-out Reset enabled)
#pragma config CLKOUTEN = OFF // Clock Out Enable (CLKOUT function is disabled. I/O or oscillator function on the CLKOUT pin)
#pragma config IESO = OFF     // Internal/External Switchover (Internal/External Switchover mode is disabled)
#pragma config FCMEN = ON     // Fail-Safe Clock Monitor Enable (Fail-Safe Clock Monitor is enabled)
#define _XTAL_FREQ 16000000
uint8_t network_pipe[] = {0x00, 0xfc, 0xb0, 0xe8, 0xf5};
const uint8_t address[6] = "00001";
#define CONNECTE_LED RC3
void main()
{
    // TRISB = 0xFF; // PORTB as Input
    // nRBPU = 0;
    OSCCON = 0b01111010;
    TRISC3 = 0;
    RC3 = 1;
    SPI_initialize();
    Network_begin();
    internet_setChannel(115);
    internet_setNetworkPipe(network_pipe);
    internet_setAddress(0);

    // internet_process();

    while (!RF24_isChipConnected())
    {
        RC3 = 1;
        __delay_ms(100);
        RC3 = 0;
        __delay_ms(100);
    }
    RC3 = 1;
    while (1)
    {
        const char text[] = "Hello World";
        RF24_write(&text, sizeof(text));
        __delay_ms(1000);
    }
}

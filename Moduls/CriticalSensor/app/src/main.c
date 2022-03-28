/*
Author: Abdallah rabie
https://github.com/Rabie45
Module: -
*/
#include <xc.h>
#include <stdint.h>
#include <wait.h>
#include <time.h>
#include <rf24.h>
#include <internet.h>
#include <buffers.h>
#include <string.h>
#include <packets.h>
#include <OXPacket.h>
#pragma config FOSC = HS  // Oscillator Selection bits (XT3 oscillator)
#pragma config WDTE = OFF // Watchdog Timer Enable bit (WDT disabled)
#pragma config PWRTE = ON // Power-up Timer Enable bit (PWRT enabled)
#pragma config BOREN = ON // Brown-out Reset Enable bit (BOR enabled)
#pragma config LVP = OFF  // Low-Voltage (Single-Supply) In-Circuit Serial Programming Enable bit (RB3 is digital I/O, HV on MCLR must be used for programming)
#pragma config CPD = OFF  // Data EEPROM Memory Code Protection bit (Data EEPROM code protection off)
#pragma config WRT = OFF  // Flash Program Memory Write Enable bits (Write protection off; all program memory may be written to by EECON control)
#pragma config CP = OFF   // Flash Program Memory Code Protection bit (Code protection off)
#define _XTAL_FREQ 16000000
#define FLAME RB1
#define GAS RB2

#define BUZZ1 RD1
#define BUZZ2 RD2

enum val
{
    FALSE,
    TRUE
};

typedef struct
{
    uint8_t value;
} Property;

Property prop[1] = {
    {FALSE},
    {FALSE},
};
int main()
{
    TRISB1 = 1;
    TRISB2 = 1;

    TRISD1 = 0;
    TRISD2 = 0;
    BUZZ1 = 0;
    BUZZ2 = 0;

    wait_init(16);
    uint32_t stopTime = 0, startTime;

    while (1)
    {
        if (FLAME)
        {
            prop[0].value = 1;
            OXPacket *packet = (OXPacket *)buffer_tx;
            packet->object[0].id = 0;
            packet->object[0].value = prop[0].value;
            packet->length = 1;
            packet->type = OXP_CHANGE_EVENT;
            transport_udp_tx(packet, 32, 1, 6, 6);
            BUZZ1 = prop[0].value;
        }
        else
        {
            prop[0].value = 0;
            BUZZ1 = prop[0].value;
        }
        if (GAS)
        {
            prop[1].value = 1;
            OXPacket *packet = (OXPacket *)buffer_tx;
            packet->object[0].id = 0;
            packet->object[0].value = prop[1].value;
            packet->length = 1;
            packet->type = OXP_CHANGE_EVENT;
            transport_udp_tx(packet, 32, 1, 6, 6);
            BUZZ2 = prop[1].value;
        }
        else
        {
            prop[1].value = 0;
            BUZZ2 = prop[1].value;
        }

        /* code */
    }
}
void __interrupt() ISR(void)
{
    timeISR();
}

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
#define DOOR_WATCHER RD0
#define LED1 RD1

enum val
{
    FALSE,
    TRUE
};

typedef struct
{
    uint8_t value;
} Property;

Property prop = {FALSE};
int main()
{
    TRISD1 = 0;
    LED1 = 0;
    TRISD0 = 1;
    wait_init(16);
    uint32_t stopTime = 0, startTime;

    while (1)
    {
        if (DOOR_WATCHER)
        {
            prop.value = 1;
            LED1 = prop.value;
            OXPacket *packet = (OXPacket *)buffer_tx;
            packet->object[0].id = 0;
            packet->object[0].value = prop.value;
            packet->length = 1;
            packet->type = OXP_CHANGE_EVENT;
            transport_udp_tx(packet, 32, 1, 6, 6);
        }
        else
            prop.value = 0;
            LED1 = prop.value;

        /* code */
    }
}
void __interrupt() ISR(void)
{
    timeISR();
}

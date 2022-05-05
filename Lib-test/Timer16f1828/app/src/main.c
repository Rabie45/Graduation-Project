/*
Project Discription: 5rduino framework
Author: Abdallah rabie
https://github.com/Rabie45
*/
#pragma config FOSC = HS // Oscillator Selection (INTOSC oscillator: I/O function on CLKIN pin)
#pragma config WDTE = OFF    // Watchdog Timer Enable bit (WDT disabled)
#pragma config PWRTE = ON    // Power-up Timer Enable bit (PWRT enabled)
#pragma config BOREN = ON    // Brown-out Reset Enable bit (BOR enabled)
#pragma config LVP = OFF     // Low-Voltage (Single-Supply) In-Circuit Serial Programming Enable bit (RB3 is digital I/O, HV on MCLR must be used for programming)
#pragma config CPD = OFF     // Data EEPROM Memory Code Protection bit (Data EEPROM code protection off)
#pragma config WRT = OFF     // Flash Program Memory Write Enable bits (Write protection off; all program memory may be written to by EECON control)
#pragma config CP = OFF      // Flash Program Memory Code Protection bit (Code protection off)
#define _XTAL_FREQ 16000000
#include <xc.h>
#include <wait.h>

int main()
{
    wait_init(16);

    TRISC = 0x00;

    while (1)
    {
        PORTC = 0xff;
        __delay_ms(1000);
        PORTC = 0x00;
        waitMillis(100);
    }
}
void __interrupt() ISR(void)
{
    timeISR();
}

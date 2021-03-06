#include "timer.h"
uint32_t _microsMSB = 0;
void timerInit(uint8_t mhz)
{
    mhz >>= 2;
    uint8_t prescaler = 0;
    while (mhz && !(mhz & 1))
    {
        prescaler++;
        mhz >>= 1;
        /* code */
    }


    PEIE = 1;                   // enable peripheral interrupts
    GIE = 1;                    // enable global interrupts
    TMR1IE = 1;                 // enable TMR 1 interupt
    TMR1CS = 0;                 // TMR 1 with inernal source
    T1OSCEN = 1;                // enable timer Oscillator
    T1CKPS1 = (prescaler >> 1); // prescale bit 1
    T1CKPS0 = (prescaler & 1);  // prescale bit 0
    TMR1ON = 1;                 // enable TMR 1
    TMR1 = 0;                   // set TMR1 value to zero

}

inline uint32_t micros()
{
    return (_microsMSB | TMR1);
}

void timeISR()
{
    if (TMR1IF)
    {
        _microsMSB += 0x10000;
        TMR1IF = 0;
    }
}

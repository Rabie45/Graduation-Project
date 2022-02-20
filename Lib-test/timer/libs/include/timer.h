#ifndef _TIMER_H
#define _TIMER_H

#include <xc.h>
#include <stdint.h>
void timerInit(uint8_t);
inline uint32_t micros();
void timeISR();
#endif
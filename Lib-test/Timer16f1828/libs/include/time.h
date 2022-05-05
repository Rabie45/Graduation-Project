#ifndef _TIME_H
#define _TIME_H

#include <xc.h>
#include <stdint.h>
void timerInit(uint8_t);
uint32_t micros();
void timeISR();
#endif
#ifndef _ADC_H
#define _ADC_H
#include <xc.h>
#include <stdint.h>
void ADC_Init();
uint16_t analogRead(uint8_t);
#endif
#ifndef __SERIAL_H
#define __SERIAL_H
#include <stdint.h>
#include <xc.h>
#include <pic16f877a.h>
#define _XTAL_FREQ 16000000

uint8_t Serial_begin(const long int baudrate);
uint8_t Serial_available();
uint8_t Serial_read();
void Serial_write(uint8_t data);

#endif
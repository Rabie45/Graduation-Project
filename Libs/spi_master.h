#ifndef _SPI_H
#define _SPI_H
#include <stdint.h>
#include <xc.h>

#ifdef _16F877A

void SPI_initialize();
uint8_t SPI_exchangeByte(uint8_t byte);

#else
#error The spi_master library doesn't support the current chip!
#endif

#endif

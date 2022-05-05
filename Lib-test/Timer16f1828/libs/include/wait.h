#ifndef _WAIT_H
#define _WAIT_H
#include <stdint.h>
#include <xc.h>
#include "time.h"
void wait_init(uint8_t );
void waitMicros(uint32_t );
void waitMillis(uint32_t);
#endif

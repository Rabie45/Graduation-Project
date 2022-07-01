#ifdef _OXP_H
#define _OXP_H
#include <stdint.h>
#include <xc.h>
unit8_t oxp_get(uint8_t destination, uint8_t destinationPort);
unit8_t oxp_post(uint8_t destination, uint8_t destinationPort, OXPProperty *properties, uint8_t propertiesLength);
#endif

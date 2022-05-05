#ifndef _OXPACKET_H
#define _OXPACKET_H
#include <stdint.h>
#include <packets.h>
#define OXP_GET_REQUEST 0
#define OXP_POST_REQUEST 1
#define OXP_RESPONSE 2
#define OXP_CHANGE_EVENT 3

typedef struct
{
    uint8_t id;
    uint8_t value;

} OXProperty;
typedef struct
{
    struct UDPPacket *udpHeader;
    uint8_t type;
    uint8_t length;
    OXProperty object[12];

} OXPacket;

#endif
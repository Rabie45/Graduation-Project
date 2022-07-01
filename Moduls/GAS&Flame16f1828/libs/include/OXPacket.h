#ifndef _OXPACKET_H
#define _OXPACKET_H
#include <stdint.h>
#include <packets.h>

#define OXP_MIN_SIZE (sizeof(UDPPacket) + sizeof(OXPHeader))
#define OXP_GET_REQUEST 0b00
#define OXP_POST_REQUEST 0b01
#define OXP_RESPONSE_STATUS_OK 0b10
#define OXP_RESPONSE_STATUS_FAIL 0b11
#define OXP_REQUEST_TIMEOUT 230000
typedef struct
{
    uint8_t id;
    uint8_t value;

} OXProperty;

typedef struct
{
    uint8_t rid;      // request id
    uint8_t type : 2; // post get response ok response fail
     uint8_t fin : 1;
} OXPHeader;
typedef struct
{
    UDPPacket udpHeader;
    OXPHeader oxp;
    OXProperty properties[(32 - OXP_MIN_SIZE) / sizeof(OXProperty)];

} OXPacket;
struct
{
    uint8_t isRequestAlive : 1;
    uint8_t isRequestFinished : 1;
    uint8_t responsePropertyCount : 4;

    uint8_t nextRid, aliveRequestId, oxpResponseBuffer[32];

} OXPSTASTS;
uint8_t oxp_get(uint8_t destination, uint8_t destinationPort);
uint8_t oxp_post(uint8_t destination, uint8_t destinationPort, OXProperty *properties, uint8_t propertiesLength);

#endif
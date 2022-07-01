#ifndef _PACKETS_H
#define _PACKETS_H
#include <stdint.h>
struct Packet
{
    uint8_t ttl;
    uint8_t protocol;
    uint8_t source;
    uint8_t destination;
};

struct UDPPacket
{
    uint8_t ttl;
    uint8_t protocol;
    uint8_t source;
    uint8_t destination;
    uint8_t sourcePort : 4;
    uint8_t destinationPort : 4;
};

#endif
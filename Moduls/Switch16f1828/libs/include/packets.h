#ifndef _PACKETS_H
#define _PACKETS_H
#include <stdint.h>
typedef struct
{
    uint8_t ttl;
    uint8_t protocol;
    uint8_t source;
    uint8_t destination;
} Packet;

typedef struct
{
    uint8_t ttl;
    uint8_t protocol;
    uint8_t source;
    uint8_t destination;
    uint8_t sourcePort : 4;
    uint8_t destinationPort : 4;
} UDPPacket;
typedef struct
{
    Packet ip;
    uint8_t address;
    uint8_t network_pipe[5];

    /* data */
} ConfigPacket;

#endif
// TCP over IP with nRF
//LINK leayer enhanced chuck 
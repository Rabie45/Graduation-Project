#ifndef _DHCP_H
#define _DHCP_H
#include <stdint.h>
#include <internet.h>
#pragma pack(1)

typedef struct
{
    uint8_t ttl;
    uint8_t protocol;
    uint8_t source;
    uint8_t destination;
    // dhcp fields
    uint8_t code;
    uint8_t baseAddress[5];
    uint8_t uuid[16];
} DHCPDiscoverPacket;

typedef struct
{
    uint8_t ttl;
    uint8_t protocol;
    uint8_t source;
    uint8_t destination;
    // dhcp fields
    uint8_t code;
    uint8_t networkAddress[5];
    uint8_t offeredSARP;
    uint8_t defaultGatewaySARP;
} DHCPOfferPacket;

typedef struct
{
    uint8_t ttl;
    uint8_t protocol;
    uint8_t source;
    uint8_t destination;
    // dhcp fields
    uint8_t code;
    uint8_t baseAddress[5];
    uint8_t offeredSARP;
} DHCPAcceptPacket;

typedef struct
{
    uint8_t ttl;
    uint8_t protocol;
    uint8_t source;
    uint8_t destination;
    // dhcp fields
    uint8_t code;
} DHCPAckPacket;
#endif
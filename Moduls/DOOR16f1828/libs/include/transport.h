#ifndef _TRANSPORT_H
#define _TRANSPORT_H
#include "packets.h"
#include "protocols.h"
#include <stdint.h>
//#include <xc8.h>
#define PROCESS(currentPort, processPort, code) \
    if (currentPort == processPort)             \
    {                                           \
        code;                                   \
        return;                                 \
    }

void transport_udp_tx(uint8_t *payload, uint8_t size, uint8_t destination, uint8_t sourcePort, uint8_t destinationPort);
void transport_udp_rx(uint8_t *payload, uint8_t size);
void transport_udp_process(uint8_t *payload, uint8_t size, uint8_t port);
#endif
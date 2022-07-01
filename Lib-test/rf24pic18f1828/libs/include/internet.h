#ifndef _INTERNET_H
#define _INTERNET_H
#include <xc.h>
#include <stdint.h>
#include "packets.h"
#include "transport.h"
#include "protocols.h"
#include "rf24.h"
#include "spi_master.h"
const uint8_t BASE_PIPE[5] = {0x59, 0xec, 0xad, 0xfc, 0x84};
const uint8_t BROADCAST_PIPE[5] = {0xf9, 0x36, 0xcd, 0xac, 0xe7};
void initializeRF24();
void startListeningBroadcasts();
void stopListeningBroadcasts();
void internet_setChannel(uint8_t channel);
void internet_setNetworkPipe(uint8_t *pipe);
void internet_process();
uint8_t *internet_getTransmissionBuffer();
uint8_t *internet_getRecievingBuffer();
struct Node
{
    uint8_t address;
    uint8_t mask;
    uint8_t routingMask;
    uint8_t child0, child1;
};
// don' write directly!!
// Node node;

struct NetworkInfo
{
    uint8_t networkPipe[5];
    uint8_t defaultGateway;
};

void internet_tx(uint8_t *payload, uint8_t size, uint8_t destination);
void internet_rx(uint8_t *payload, uint8_t size);
void internet_relay(uint8_t *payload, uint8_t size);
uint8_t internet_calculateMask(uint8_t address);
void internet_setAddress(uint8_t address);
uint8_t internet_hasChild(uint8_t address);
void log_tx();
// String ToString(uint64_t x);
#endif
#include "internet.h"
#include "rf24.h"
#include <string.h>
// #include "logline.h"
struct Node node;
struct NetworkInfo networkInfo;
// RF24 radio(CE_PIN, CSN_PIN);

void internet_setChannel(uint8_t channel)
{
    RF24_setChannel(channel);
}
void internet_process()
{
    while (RF24_available())
    {

        uint8_t size = RF24_getDynamicPayloadSize();
        RF24_read(buffer_rx, size);
        internet_rx(buffer_rx, size);
    }
}
void internet_setNetworkPipe(uint8_t *pipe)
{
    memcpy(networkInfo.networkPipe, pipe, 5);
    networkInfo.networkPipe[0] = node.address;
    RF24_openReadingPipe(1, networkInfo.networkPipe);
}
void internet_tx(uint8_t *payload, uint8_t size)
{

    Packet *packetHeader = (struct Packet *)payload;
    packetHeader->ttl = 32;
    packetHeader->source = node.address;
    internet_relay(payload, size);
}
void internet_rx(uint8_t *payload, uint8_t size)
{
    Packet *packetHeader = (struct Packet *)payload;
    if (packetHeader->destination != node.address)
    {

        internet_relay(payload, size);
        return;
    }
    switch (packetHeader->protocol)
    {
    case PROTOCOL_ICMP:
        // println("Received ICMP packet but it is not supported yet!");
        break;
    case PROTOCOL_TCP:
        // println("Received TCP packet but it is not supported yet!");
        break;
    case PROTOCOL_UDP:
        transport_udp_rx(payload, size);
        break;
    case PROTOCOL_CONFIG:
        internet_config_rx(payload, size);
        break;
    default:
        // ignore, unkown protocol
        break;
    }
}
void internet_relay(uint8_t *payload, uint8_t size)
{

    Packet *packetHeader = (struct Packet *)payload;
    if (node.address == 0)
    {

        // no address, cannot relay
        // Serial.println("couldn't relay a packet with node.address=0");
        return;
    }
    uint8_t dstMask = internet_calculateMask(packetHeader->destination);
    uint8_t status;
    if (dstMask > node.mask && internet_hasChild(packetHeader->destination))
    {
        if (packetHeader->destination & node.routingMask)
        {

            networkInfo.networkPipe[0] = node.child1;
            RF24_openReadingPipe(0, networkInfo.networkPipe); // for ack
            RF24_openWritingPipe(networkInfo.networkPipe);
            RF24_stopListening();
            RF24_write(payload, size);
            RF24_openReadingPipe(0, BASE_PIPE); // restore pipe
        }
        else
        {

            networkInfo.networkPipe[0] = node.child0;
            RF24_openReadingPipe(0, networkInfo.networkPipe); // for ack
            RF24_openWritingPipe(networkInfo.networkPipe);
            RF24_stopListening();
            RF24_write(payload, size);
            RF24_openReadingPipe(0, BASE_PIPE); // restore pipe
        }
    }
    else
    {

        networkInfo.networkPipe[0] = node.address;
        RF24_openReadingPipe(0, networkInfo.networkPipe); // for ack
        RF24_openWritingPipe(networkInfo.networkPipe);
        RF24_stopListening();
        /* logline_print("payload =");
         logline_println(payload);*/
        RF24_write(payload, size);

        RF24_openReadingPipe(0, BASE_PIPE); // restore pipe
    }
    RF24_startListening(); /////////////////////
}
uint8_t internet_calculateMask(uint8_t address)
{
    uint8_t mask = 0;
    while (address > 1)
    {
        mask = (mask << 1) | 1;
        address >>= 1;
    }
    return mask;
}

void internet_setAddress(uint8_t address)
{
    node.address = address;
    node.mask = internet_calculateMask(address);
    node.routingMask = node.mask + 1;
    node.child0 = (node.address & node.mask) | (node.routingMask << 1);
    node.child1 = (node.address & node.mask) | (node.routingMask << 1) | node.routingMask;
    internet_setNetworkPipe(networkInfo.networkPipe);
}

uint8_t internet_hasChild(uint8_t address)
{
    return (address & node.mask) == (node.address & node.mask);
}
///////////////////////////////
void Network_begin()
{

    RF24_begin();
    RF24_setAddressWidth(5);
    RF24_enableDynamicPayloads();
    RF24_setDataRate(RF24_1MBPS);
    RF24_setCRCLength(RF24_CRC_8);
    RF24_openReadingPipe(0, BASE_PIPE);
    RF24_setAutoAck(1);
    RF24_getPALevel(RF24_PA_MAX);
    RF24_setPayloadSize(32);
    RF24_startListening();
}
void startListeningBroadcasts()
{
    RF24_setAutoAck(1);
    RF24_startListening();
}
uint8_t *internet_getTransmissionBuffer()
{
    return buffer_tx;
}
uint8_t *internet_getRecievingBuffer()
{
    return buffer_rx;
}

// void internet_setC
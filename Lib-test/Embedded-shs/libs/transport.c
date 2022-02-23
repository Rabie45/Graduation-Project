#include "transport.h"
#include "internet.h"
void transport_udp_tx(uint8_t *payload, uint8_t size, uint8_t destination, uint8_t sourcePort, uint8_t destinationPort)
{
    struct UDPPacket *packetHeader = (struct UDPPacket *)payload;
    packetHeader->protocol = PROTOCOL_UDP;
    packetHeader->destination = destination;
    packetHeader->sourcePort = sourcePort;
    packetHeader->destinationPort = destinationPort;
    internet_tx(payload, size);
}
void transport_udp_rx(uint8_t *payload, uint8_t size)
{
    struct UDPPacket *packetHeader = (struct UDPPacket *)payload;
    transport_udp_process(payload, size, packetHeader->destinationPort);
}


#include "Node.h"
uint8_t compareUUID(uint8_t *target,uint8_t* UUID)
{
    for (int i = 0; i < 16; i++)
    {
        if (target[i] != UUID[i])
        {
            return 0;
        }
    }
    return 0xff;
}
void setAddress(Node *node, uint8_t address)
{
    node->address = address;
    node->mask = calculateMask(address);
    node->routingMask = address & ~node->mask;
}
uint8_t isChild(Node *node, uint8_t address)
{
    return (address & node->mask) == node->address;
}
/*void forward(uint8_t *pipeAddress)
{
    radio.openWritingPipe(pipeAddress);
    radio.stopListening();
    radio.write(incomingBuffer, incomingPacketSize);
    radio.startListening();
    radio.openWritingPipe(BASE_ADDRESS);
}/*
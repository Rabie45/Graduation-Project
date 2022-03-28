#ifndef _NODE_H
#define _NODE_H
#include <stdint.h>
typedef struct 
{
    uint8_t address, mask, routingMask, channel, child0[5], child1[5];
}Node;
uint8_t calculateMask(uint8_t address);
void setAddress(Node* node, uint8_t address);
uint8_t isChild(Node* node, uint8_t address);
#endif

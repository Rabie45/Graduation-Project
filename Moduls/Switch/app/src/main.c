#include <xc.h>
// CONFIG

#include <pic16f877a.h>
#include <Serial.h>
#include <logline.h>
#include <rf24.h>
#include <internet.h>
#include <buffers.h>
#include <string.h>
#include <packets.h>
#include <OXPacket.h>
#include <wait.h>

#include <config.h>
#include <stdint.h>

OXProperty props[] = {{.id = 1, .value = 1},
                      {.id = 2, .value = 255}};

// BEGIN CONFIG
#define CONNECTE_LED RD1
#define LED RD1
#define SW1 RB2

////////////////////max NUMOFPINS 24
uint8_t network_pipe[] = {0x00, 0xfc, 0xb0, 0xe8, 0xf5};
enum val
{
    FALSE,
    TRUE
};

typedef struct
{
    uint8_t value;
} Property;

typedef struct
{
    long nextMills;
    uint8_t wasPressed;
} Button;

// END CONFIG
uint8_t checkButton(Button *btn, uint8_t pinState)
{
    uint8_t isPressed = (!(btn->wasPressed) && pinState && micros() > btn->nextMills);
    if (isPressed)
    {
        btn->nextMills = micros() + 100000;
    }
    btn->wasPressed = pinState;
    return isPressed;
}

Button btn1;
uint8_t isConfigerd = 0;

void main()
{
    // TRISB = 0xFF; // PORTB as Input
    TRISD1 = 0;
    TRISD0 = 0;
    // nRBPU = 0;
    TRISB1 = 0;
    LED = 0;
    TRISB2 = 1;

    wait_init(16);
    SPI_initialize();
    Network_begin();
    internet_setChannel(115);

    internet_setNetworkPipe(network_pipe);
    internet_setAddress(0);
    while (1)
    {
        internet_process();
        if (!isConfigerd)
        {
            RD0 = 0;

            CONNECTE_LED = ~CONNECTE_LED;
            __delay_ms(300);
        }
        else
        {
            CONNECTE_LED = 0;
            RD0 = 1;

            oxp_post(1, 3, &props, 2);
        }
    }
    while (1)
        ;

    /*  uint32_t stopTime = 0, startTime;
      CONNECTE_LED = 0;

      // memcpy(buffer_tx + sizeof(struct UDPPacket), "hi", 3);
      while (1)
      {

          while (!RF24_isChipConnected())
           {
               CONNECTE_LED = ~CONNECTE_LED;
               __delay_ms(100);


          // internet_process();

          /*for (uint8_t i = 0; i < 10; i++)
  {
      CONNECTE_LED = ~CONNECTE_LED;
      __delay_ms(100);
  }*/
    //  transport_udp_tx(buffer_tx, sizeof(struct UDPPacket) + 3, 1, 3, 3); // send pay load
    // __delay_ms(1000);
    /* startTime = micros();

     if (startTime - stopTime > 150)
     {
         stopTime = startTime;
         LED = props[0].value;
     }

     if (checkButton(&btn1, SW1))
     {
         props[0].value = ~props[0].value;
         oxp_post(1, 3, &props[0], 2);
     }
    /* if (RD0 == 0)
     {
         props[1].value = ~props[1].value;
         oxp_post(1, 3, &props[1], 2);
     }
if (oxp_get(1, 3))
     {
         for (uint8_t i = 0; i < 10; i++)
         {
             CONNECTE_LED = ~CONNECTE_LED;
             __delay_ms(100);
         }
     }

 }*/
}

void transport_udp_process(uint8_t *payload, uint8_t size, uint8_t port)
{
   
    if (port == 3)
    { // oxp proccess

        if (size < OXP_MIN_SIZE)
            return; // malformed
        OXPacket *packet = (OXPacket *)payload;
        if (packet->oxp.type == OXP_GET_REQUEST)
        {
            OXPacket *response = (OXPacket *)buffer_tx;
            response->oxp.rid = packet->oxp.rid;
            response->oxp.fin = 1;
            response->oxp.type = OXP_RESPONSE_STATUS_OK;
            response->udpHeader.destination = packet->udpHeader.source;
            response->udpHeader.destinationPort = packet->udpHeader.sourcePort;
            response->udpHeader.ttl = 32;
            memcpy(response->properties, props, sizeof(props));
            transport_udp_tx((uint8_t *)buffer_tx, sizeof(UDPPacket) + sizeof(OXPHeader) + sizeof(props), packet->udpHeader.source, 3, packet->udpHeader.sourcePort);
        }
        else if (packet->oxp.type == OXP_POST_REQUEST)
        {
            for (uint8_t i = 0; i < OXPSTASTS.responsePropertyCount; i++)
            {
                OXProperty prop = packet->properties[i];
                if (prop.id < sizeof(props))
                    props[prop.id].value = prop.value;
            }
            OXPacket *response = (OXPacket *)buffer_tx;
            response->oxp.rid = packet->oxp.rid;
            response->oxp.fin = 1;
            response->oxp.type = OXP_RESPONSE_STATUS_OK;
            response->udpHeader.destination = packet->udpHeader.source;
            response->udpHeader.destinationPort = packet->udpHeader.sourcePort;
            response->udpHeader.ttl = 32;
            transport_udp_tx(buffer_tx, OXP_MIN_SIZE, packet->udpHeader.source, 3, packet->udpHeader.sourcePort);
        }
        if (OXPSTASTS.isRequestAlive && packet->oxp.rid == OXPSTASTS.aliveRequestId)
        {
            memcpy(OXPSTASTS.oxpResponseBuffer, payload, size);
            OXPSTASTS.isRequestAlive = 0;
            OXPSTASTS.isRequestFinished = 1;
        } // else this request is not valid, timeout or malicious
    }
    return;
}

void __interrupt() ISR(void)
{
    timeISR();
}
uint8_t oxp_post(uint8_t destination, uint8_t destinationPort, OXProperty *properties, uint8_t propertiesLength)
{

    OXPacket *packet = (OXPacket *)buffer_tx;
    packet->oxp.fin = 1;
    packet->oxp.rid = OXPSTASTS.nextRid;
    packet->oxp.type = OXP_POST_REQUEST;
    OXPSTASTS.aliveRequestId = OXPSTASTS.nextRid;
    OXPSTASTS.isRequestAlive = 1;
    OXPSTASTS.isRequestFinished = 0;
    OXPSTASTS.nextRid++; // generate next rid
    memcpy(buffer_tx + OXP_MIN_SIZE,)
    memcpy(buffer_tx + OXP_MIN_SIZE, properties, sizeof(OXProperty) * propertiesLength);

    transport_udp_tx(buffer_tx, OXP_MIN_SIZE + propertiesLength * sizeof(OXProperty), destination, 3, destinationPort);
    uint32_t timeoutTime = micros() + OXP_REQUEST_TIMEOUT;
    while (micros() < timeoutTime && !OXPSTASTS.isRequestFinished)
    {
        internet_process();
    }
    if (OXPSTASTS.isRequestFinished)
    {
        OXPacket const *response = (OXPacket *)OXPSTASTS.oxpResponseBuffer;
        return response->oxp.type == OXP_RESPONSE_STATUS_OK;
    }
    return 0;
}
uint8_t oxp_get(uint8_t destination, uint8_t destinationPort)
{
    OXPacket *packet = (OXPacket *)buffer_tx;
    packet->oxp.fin = 1;
    packet->oxp.rid = OXPSTASTS.nextRid;
    packet->oxp.type = OXP_GET_REQUEST;
    OXPSTASTS.aliveRequestId = OXPSTASTS.nextRid;
    OXPSTASTS.isRequestAlive = 1;
    OXPSTASTS.isRequestFinished = 0;
    OXPSTASTS.nextRid++; // generate next rid

    transport_udp_tx(buffer_tx, OXP_MIN_SIZE, destination, 3, destinationPort);
    uint32_t timeoutTime = micros() + OXP_REQUEST_TIMEOUT;
    while (micros() < timeoutTime && !OXPSTASTS.isRequestFinished)
    {
        internet_process();
    }
    if (OXPSTASTS.isRequestFinished)
    {
        const OXPacket *response = (OXPacket *)OXPSTASTS.oxpResponseBuffer;
        return response->oxp.type == OXP_RESPONSE_STATUS_OK;
    } // else, timeout
    return 0;
}
void internet_config_rx(uint8_t *payload, uint8_t size)
{
    ConfigPacket *confPacket = (ConfigPacket *)payload;
    internet_setNetworkPipe(confPacket->network_pipe);
    internet_setAddress(confPacket->address);
    isConfigerd = 1;
}

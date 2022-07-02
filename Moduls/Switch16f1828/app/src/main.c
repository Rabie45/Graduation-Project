#include <xc.h>
// CONFIG
#include <pic16f1828.h>
#include <rf24.h>
#include <internet.h>
#include <buffers.h>
#include <string.h>
#include <packets.h>
#include <OXPacket.h>
#include <wait.h>
#include <logline.h>
#include <Serial.h>

#include <config.h>
#include <stdint.h>

OXProperty props[] = {{.id = 0, .value = 1},
                      {.id = 2, .value = 255}};

// BEGIN CONFIG
#define CONNECTE_LED RC3
#define IS_CONFIGURED RC4
#define LED RB7
#define SW1 RC1

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
void checkRF24Connection();
void main()
{

    OSCCON = 0b01111010;
    TRISC3 = 0;
    TRISC4 = 0;
    ANSELA = 0x00;
    ANSELB = 0x00;
    ANSELC = 0x00;
    TRISB7 = 0;
    LED = 0;
    TRISC1 = 1;

    wait_init(16);
    SPI_initialize();
    Serial_begin(9600);
    Network_begin();
    internet_setChannel(115);
    internet_setNetworkPipe(network_pipe);
    internet_setAddress(0);
    RF24_printDetails();

    checkRF24Connection();
    CONNECTE_LED = 1;

    logline_println("waiting for configuration message...");
    while (!isConfigerd)
    {
        internet_process();
        logline_print("#");
        checkRF24Connection();
        IS_CONFIGURED = ~IS_CONFIGURED;
        __delay_ms(300);
    }
    IS_CONFIGURED = 1;
    oxp_post(1, 3, &props, 2);

    while (1)
    {
        internet_process();
        uint32_t stopTime = 0, startTime;
        CONNECTE_LED = 0;
        checkRF24Connection();
        // while (!RF24_isChipConnected())
        // {
        //     CONNECTE_LED = ~CONNECTE_LED;
        //     __delay_ms(100);
        // }
        LED = props[0].value;
        if (checkButton(&btn1, SW1))
        {
            props[0].value = !props[0].value;
            oxp_post(1, 3, &props[0], 2);
        }
    }
}
void checkRF24Connection()
{
    if (!RF24_isChipConnected())
    {
        // RED = 1;
        logline_println("RF24 disconnected!");
        while (!RF24_isChipConnected())
            ;
        logline_println("RF24 connected");
        Network_begin();
        RF24_printDetails();
        // RED = 0;
    }
}

void transport_udp_process(uint8_t *payload, uint8_t size, uint8_t port)
{

    if (port == 3)
    { // oxp proccess

        if (size < OXP_MIN_SIZE)
            return; // malformed
        OXPacket *packet = (OXPacket *)payload;
        OXPSTASTS.responsePropertyCount = (size - OXP_MIN_SIZE) / sizeof(OXProperty);
        if (packet->oxp.type == OXP_GET_REQUEST)
        {
            logline_println("get");
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
            logline_print("post ");
            logline_prop_int("req.prop.size", OXPSTASTS.responsePropertyCount);
            for (uint8_t i = 0; i < OXPSTASTS.responsePropertyCount; i++)
            {
                OXProperty prop = packet->properties[i];
                if (prop.id < sizeof(props))
                {
                    logline_prop_int("id", prop.id);
                    logline_prop_int("value", prop.value);
                    props[prop.id].value = prop.value;
                }
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

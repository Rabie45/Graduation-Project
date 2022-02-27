#include <xc.h>
#include <pic16f877a.h>
// #include <Serial.h>
// #include <logline.h>
#include <rf24.h>
#include <internet.h>
#include <buffers.h>
#include <string.h>
#include <packets.h>
#include <wait.h>
#include <time.h>
#include <config.h>
#include <stdint.h>
// BEGIN CONFIG
#define CONNECTE_LED RD1
#define LED RB1
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

Property prop[2] = {
    {FALSE},
    {FALSE},
};
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
        btn->nextMills = micros() + 1000;
    }
    btn->wasPressed = pinState;
    return isPressed;
}

Button btn1;
void main()
{
    // TRISB = 0xFF; // PORTB as Input
    TRISD1 = 0;
    // nRBPU = 0;
    TRISB2 = 0;
    TRISB3 = 1;
    wait_init(16);
    // Serial_begin(9600);
    SPI_initialize();
    Network_begin();
    internet_setChannel(115);
    internet_setNetworkPipe(network_pipe);
    internet_setAddress(2);
    uint32_t stopTime = 0, startTime;

    // memcpy(buffer_tx + sizeof(struct UDPPacket), "hi", 3);
    while (1)
    {
        while (!RF24_isChipConnected())
        {
            CONNECTE_LED = ~CONNECTE_LED;
            __delay_ms(1000);
        }
        transport_udp_tx(buffer_tx, sizeof(struct UDPPacket) + 3, 1, 3, 6); // send pay load
        __delay_ms(1000);
        internet_process();
        startTime = micros();

        if (startTime - stopTime > 150)
        {
            stopTime = startTime;
            RB1 = prop[0].value;
        }
        uint8_t var1 = checkButton(&btn1, SW1);
        if (var1)
        {
            prop[0].value = ~prop[0].value;
        }
    }
}

void transport_udp_process(uint8_t *payload, uint8_t size, uint8_t port)
{
    const struct UDPPacket *load = payload;

    uint8_t *data = buffer_rx + sizeof(struct UDPPacket);
    uint8_t id = data[0];
    uint8_t value = data[1];

    PROCESS(port, 6, {
        prop[id].value = value;
        // 6post
        /* do something*/
    });
    PROCESS(port, 7, { // get
        memcpy(buffer_tx + sizeof(struct UDPPacket), prop, sizeof(prop));
        transport_udp_tx(buffer_tx, 32, 1, 7, load->sourcePort);
    });
}

void __interrupt() ISR(void)
{
    timeISR();
}

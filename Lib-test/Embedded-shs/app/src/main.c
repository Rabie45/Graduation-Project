#include <xc.h>
#include <pic16f877a.h>
#include <Serial.h>
#include <logline.h>
#include <rf24.h>
#include <internet.h>
#include <buffers.h>
#include <string.h>
#include <packets.h>
#include <wait.h>
#include <time.h>
#define OXP_GET_REQUEST 0
#define OXP_POST_REQUEST 1
#define OXP_RESPONSE 2
#define OXP_CHANGE_EVENT 3
#define SW1 RD0
uint32_t stopTime = 0, startTime;

typedef struct
{
    uint8_t id;
    uint8_t value;

} OXProperty;
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
    struct UDPPacket udpHeader;
    uint8_t type;
    uint8_t length;
    OXProperty object[12];

} OXPacket;
typedef struct
{
    long nextMills;
    uint8_t wasPressed;
} Button;
Button btn1;

// BEGIN CONFIG
#pragma config FOSC = HS   // Oscillator Selection bits (HS oscillator)
#pragma config WDTE = OFF  // Watchdog Timer Enable bit (WDT enabled)
#pragma config PWRTE = OFF // Power-up Timer Enable bit (PWRT disabled)
#pragma config BOREN = ON  // Brown-out Reset Enable bit (BOR enabled)
#pragma config LVP = OFF   // Low-Voltage (Single-Supply) In-Circuit Serial Programming Enable bit (RB3 is digital I/O, HV on MCLR must be used for programming)
#pragma config CPD = OFF   // Data EEPROM Memory Code Protection bit (Data EEPROM code protection off)
#pragma config WRT = OFF   // Flash Program Memory Write Enable bits (Write protection off; all program memory may be written to by EECON control)
#pragma config CP = OFF    // Flash Program Memory Code Protection bit (Code protection off)
//  * | | TTL 1-byte | protocol 4-bit  | src 1-byte | dst 1-byte | payload 28-byte |

uint8_t network_pipe[] = {0x00, 0xfc, 0xb0, 0xe8, 0xf5};
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
// END CONFIG
void main()
{
    TRISB = 0xFF; // PORTB as Input
    TRISD1 = 0;
    nRBPU = 0;
    TRISD0 = 1;
    Serial_begin(9600);
    wait_init(16);
    SPI_initialize();
    Network_begin();
    internet_setChannel(115);
    internet_setNetworkPipe(network_pipe);
    internet_setAddress(2);
    while (1)
    {
        logline_println("================START =============================");
        /*while (!RF24_isChipConnected())
        {
            logline_println("Chip not connected");

            RD1 = ~RD1;
            __delay_ms(1000);
        }*/
        internet_process();

        startTime = micros();

        if (startTime - stopTime > 150)
        {
            stopTime = startTime;
            RD1 = prop[0].value;
        }
        uint8_t var1 = checkButton(&btn1, SW1);

        if (var1 == 1)
        {
            logline_println("Switch pressed");

            prop[0].value = ~prop[0].value;
            OXPacket *const packet = (OXPacket *)buffer_tx;
            packet->object[0].id = 0;
            packet->object[0].value = prop[0].value;
            packet->length = 1;
            packet->type = OXP_CHANGE_EVENT;
            transport_udp_tx(packet, 32, 1, 6, 6);
        }
       

        {
            logline_println("Switch Not pressed");

            prop[0].value = prop[0].value;
        }
    }
}

/*void transport_udp_process(uint8_t *payload, uint8_t size, uint8_t port)
{
    uint8_t *data = buffer_rx + sizeof(struct UDPPacket);
    if (*data == 'h')
    {
        RD1 = ~RD1;
        __delay_ms(500);
    }
    logline_print("data =");
    logline_println(data);

    logline_println("=========RX========");
    logline_prop_int("RX_SIZE", size);
    logline_prop_int("RX_PORT", port);
}*/
void transport_udp_process(uint8_t *payload, uint8_t size, uint8_t port)
{
    logline_println("Recived Data");

    OXPacket const *packet = (OXPacket *)payload;
    logline_println("Recived Data =");
    logline_print("data =");

    PROCESS(port, 6, {
        if (packet->type == OXP_GET_REQUEST)
        {
        }
        else if (packet->type == OXP_POST_REQUEST)
        {
            OXProperty *ppnt = packet->object;
            logline_prop_int("id", ppnt->id);
            logline_prop_int("value", ppnt->value);
            uint8_t count = packet->length;
            while (count--)
            {
                prop[ppnt->id].value = ppnt->value;
                ppnt++;
            }
        }
    });
    PROCESS(port, 6, { // get
        memcpy(buffer_tx + sizeof(struct UDPPacket), prop, sizeof(prop));
        // transport_udp_tx(buffer_tx, 32, 1, 7, load->sourcePort);
    });
}
void __interrupt() ISR(void)
{
    timeISR();
}

#include <xc.h>
#include <pic16f877a.h>
#include <Serial.h>
#include <logline.h>
#include <rf24.h>
#include <internet.h>
#include <buffers.h>
#include <string.h>
#include <packets.h>
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

// END CONFIG
void main()
{
    TRISB = 0xFF; // PORTB as Input
    TRISD1 = 0;
    nRBPU = 0;

    Serial_begin(9600);
    SPI_initialize();
    Network_begin();
    internet_setChannel(115);
    internet_setNetworkPipe(network_pipe);
    internet_setAddress(2);
    memcpy(buffer_tx + sizeof(struct UDPPacket), "hi", 3);
    while (1)
    {
        while (!RF24_isChipConnected())
        {
            RD1 = ~RD1;
            __delay_ms(1000);
        }
        transport_udp_tx(buffer_tx, sizeof(struct UDPPacket) + 3, 1, 3, 6); // send pay load
        __delay_ms(1000);
        internet_process();
    }
}

void transport_udp_process(uint8_t *payload, uint8_t size, uint8_t port)
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
}
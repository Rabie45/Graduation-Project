#include <xc.h>
#include <rf24.h>
#include <timer.h>
#include <wait.h>
#include <config.h>
#include <pic16f1828.h>
#include <logline.h>
#include <Serial.h>
#define RED RC4
#define RED RC3

const uint8_t address[6] = "00001";
uint8_t buffer[32];
void configureNRF();
void main()
{
    OSCCON = 0b01111010;
    TRISC3 = 0;
    TRISC4 = 0;
    ANSELA = 0x00;
    ANSELB = 0x00;
    ANSELC = 0x00;
    Serial_begin(9600);

    wait_init(16);
    SPI_initialize();
    configureNRF();

    RC4 = 1;
    RC3 = 1;
    while (1)
    {

        __delay_ms(1000);
        if (!RF24_isChipConnected())
        {
            RED = 1;
            logline_println("RF24 disconnected!");
            while (!RF24_isChipConnected())
                ;
            logline_println("RF24 connected");
            configureNRF();
            RED = 0;
        }

        // RC4 = 0;

        const char text[] = "Your Button State is HIGH";
        RF24_stopListening();
        if (!RF24_write(&text, sizeof(text)))
        {
            for (uint8_t i = 0; i < 5; i++)
            {
                __delay_ms(50);
                RC3 = ~RC3;
            }
            RC3 = 0;
        }
    }
}

void configureNRF()
{
    uint8_t status = RF24_begin();
    RF24_setAddressWidth(5);
    RF24_enableDynamicPayloads();
    RF24_setDataRate(RF24_1MBPS);
    RF24_setCRCLength(RF24_CRC_8);
    RF24_setAutoAck(1);
    RF24_setPALevel(RF24_PA_MAX);
    RF24_setPayloadSize(32);
    RF24_setChannel(115);
    RF24_startListening();
    RF24_openReadingPipe(0, address);
    RF24_openWritingPipe(address);
    RF24_printDetails();
    logline_prop_status("RF24 configuratin finished with result", status);
}
void __interrupt() ISR(void)
{
    timeISR();
}
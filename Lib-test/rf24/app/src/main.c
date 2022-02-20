#include <xc.h>
#include <rf24.h>
#include <timer.h>
#include <wait.h>
#include <config.h>
const uint8_t ADDR[] = {0xe1, 0xe1, 0xe1, 0xe1, 0xe1};
uint8_t buffer[32];

void main()
{
    wait_init(16);
    SPI_initialize();
    RF24_initialize();
    RF24_startListening();
    RF24_openReadingPipe(RF24_DATA_PIPE_0, ADDR);
    RF24_openWritingPipe(ADDR);
    RF24_enableDynamicPayloadLength(RF24_DATA_PIPE_ALL);
    RF24_setAutoAck(RF24_DATA_PIPE_ALL, 1); // enable auto ack at pipe 0
    RF24_setDataRate(RF24_DATARATE_1Mbps);
    RF24_setChannel(115);
    RF24_setCRCEncoding(RF24_CRC_1_BYTE);
    RF24_setPayloadWidth(0, 32);
    RF24_stopListening();
    TRISD1 = 0;
    RD1 = 0;
    while (1)
    {

        while (!RF24_isChipConnected())
        {
            RD1 = ~RD1;
            wait_init(30);
        }
        RF24_write(buffer, 32);
        wait_init(1000);
        RF24DataPipe availablePipeNo;
        if (RF24_available(&availablePipeNo))
        {
            RF24_read(buffer, 32);
            RD1 = 0;
            for (uint8_t i = 0; i < 5; i++)
            {
                RD1 = ~RD1;
                __delay_ms(50);
            }
        }
    }
}
void __interrupt() ISR(void)
{
    timeISR();
}
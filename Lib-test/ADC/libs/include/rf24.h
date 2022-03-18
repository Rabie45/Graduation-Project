#ifndef _RF24_H
#define _RF24_H

#include <stdint.h>
#include "spi_master.h"
#include "wait.h"
#define _XTAL_FREQ 16000000
/******************************************************************************/
// NRF24L01 Constants.
/******************************************************************************/
#define RF24_AUTO_RETRANSMIT_DELAY_250uS 0
#define RF24_AUTO_RETRANSMIT_DELAY_500uS 1
#define RF24_AUTO_RETRANSMIT_DELAY_750uS 2
#define RF24_AUTO_RETRANSMIT_DELAY_1000uS 3
#define RF24_AUTO_RETRANSMIT_DELAY_1250uS 4
#define RF24_AUTO_RETRANSMIT_DELAY_1500uS 5
#define RF24_AUTO_RETRANSMIT_DELAY_1750uS 6
#define RF24_AUTO_RETRANSMIT_DELAY_2000uS 7
#define RF24_AUTO_RETRANSMIT_DELAY_2250uS 8
#define RF24_AUTO_RETRANSMIT_DELAY_2500uS 9
#define RF24_AUTO_RETRANSMIT_DELAY_2750uS 10
#define RF24_AUTO_RETRANSMIT_DELAY_3000uS 11
#define RF24_AUTO_RETRANSMIT_DELAY_3250uS 12
#define RF24_AUTO_RETRANSMIT_DELAY_3500uS 13
#define RF24_AUTO_RETRANSMIT_DELAY_3750uS 14
#define RF24_AUTO_RETRANSMIT_DELAY_4000uS 15

typedef enum
{
    RF24_MODE_RECEIVER = 0,
    RF24_MODE_TRANSMETTER = 1
} RF24Mode;

typedef enum
{
    RF24_POWER_MAX = (uint8_t)0b00000110U,
    RF24_POWER_HIGH = (uint8_t)0b00000010U,
    RF24_POWER_LOW = (uint8_t)0b00000100U,
    RF24_POWER_MIN = (uint8_t)0b00000000U
} RF24OutputPower;

typedef enum
{
    RF24_DATARATE_250Kbps,
    RF24_DATARATE_1Mbps,
    RF24_DATARATE_2Mbps
} RF24DataRate;

typedef enum
{
    RF24_DATA_PIPE_0 = (uint8_t)0U,
    RF24_DATA_PIPE_1 = (uint8_t)1U,
    RF24_DATA_PIPE_2 = (uint8_t)2U,
    RF24_DATA_PIPE_3 = (uint8_t)3U,
    RF24_DATA_PIPE_4 = (uint8_t)4U,
    RF24_DATA_PIPE_5 = (uint8_t)5U,
    RF24_DATA_PIPE_ALL = (uint8_t)7U,
} RF24DataPipe;

typedef enum
{
    RF24_CRC_OFF,
    RF24_CRC_1_BYTE,
    RF24_CRC_2_BYTE
} RF24CRCEncoding;
/******************************************************************************/
// NRF24L01 Functions.
/******************************************************************************/

/**
 * @brief  Set the NRF24L01 Operation Mode Tx/Rx
 *
 * @param[in]	mode NRF24L01 Tx/Rx Operation Mode
 *
 */
void RF24_startListening();
void RF24_stopListening();

/**
 * @brief  Set NRF24L01 RF Channel Frequency
 *
 * @param[in]	rf_channel NRF24L01 RF channel - radio frequency channel, value from 0 to 127
 *
 * @Note: NRF24L01 frequency will be (2400 + rf_channel)GHz
 *
 */
void RF24_initialize();
void RF24_setChannel(uint8_t rf_channel);
void RF24_setDataRate(RF24DataRate rate);
void RF24_setOutputPower(RF24OutputPower power);
void RF24_setDataRate(RF24DataRate rate);
void RF24_closeDataPipe(RF24DataPipe pipe);
void RF24_openWritingPipe(uint8_t *addressBytes); //
void RF24_openReadingPipe(RF24DataPipe pipe, uint8_t *addressBytes); // open reading
void RF24_enableDynamicPayloadLength(RF24DataPipe pipe);
void RF24_disableDynamicPayloadLength(RF24DataPipe pipe);
uint8_t RF24_available(RF24DataPipe *pipeNo);
uint8_t RF24_getDynamicPayloadSize();
uint8_t RF24_isChipConnected();
void RF24_read(uint8_t *buffer, uint8_t length);
uint8_t RF24_write(uint8_t *buffer, uint8_t length);
void RF24_setCRCEncoding(RF24CRCEncoding encoding);
void RF24_setAutoAck(RF24DataPipe pipe, uint8_t enabledOrDisabled);
void RF24_powerUp(uint8_t upOrDown); // 0 for power down 1 for power up
void RF24_setPayloadWidth(RF24DataPipe pipe, uint8_t width);
inline uint8_t RF24_isCarierDetected();
void RF24_flashTX();
void RF24_flashRX();
void RF24_debug();
#endif
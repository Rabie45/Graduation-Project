#ifndef _RF24_H
#define _RF24_H

#include <stdint.h>
#include "spi_master.h"
#include "wait.h"
#include <logline.h>
#define RF24_CE RC6
#define RF24_CSN RC5
#define RF24_CE_TRIS TRISC6
#define RF24_CSN_TRIS TRISC5
#define _XTAL_FREQ 16000000

/**
 * @defgroup PALevel Power Amplifier level
 * Power Amplifier level. The units dBm (decibel-milliwatts or dB<sub>mW</sub>)
 * represents a logarithmic signal loss.
 * @see
 * - RF24::setPALevel()
 * - RF24::getPALevel()
 * @{
 */
typedef enum
{
    /**
     * (0) represents:
     * nRF24L01 | Si24R1 with<br>lnaEnabled = 1 | Si24R1 with<br>lnaEnabled = 0
     * :-------:|:-----------------------------:|:----------------------------:
     *  -18 dBm | -6 dBm | -12 dBm
     */
    RF24_PA_MIN = 0,
    /**
     * (1) represents:
     * nRF24L01 | Si24R1 with<br>lnaEnabled = 1 | Si24R1 with<br>lnaEnabled = 0
     * :-------:|:-----------------------------:|:----------------------------:
     *  -12 dBm | 0 dBm | -4 dBm
     */
    RF24_PA_LOW,
    /**
     * (2) represents:
     * nRF24L01 | Si24R1 with<br>lnaEnabled = 1 | Si24R1 with<br>lnaEnabled = 0
     * :-------:|:-----------------------------:|:----------------------------:
     *  -6 dBm | 3 dBm | 1 dBm
     */
    RF24_PA_HIGH,
    /**
     * (3) represents:
     * nRF24L01 | Si24R1 with<br>lnaEnabled = 1 | Si24R1 with<br>lnaEnabled = 0
     * :-------:|:-----------------------------:|:----------------------------:
     *  0 dBm | 7 dBm | 4 dBm
     */
    RF24_PA_MAX,
    /**
     * (4) This should not be used and remains for backward compatibility.
     */
    RF24_PA_ERROR
} rf24_pa_dbm_e;

/**
 * @}
 * @defgroup Datarate datarate
 * How fast data moves through the air. Units are in bits per second (bps).
 * @see
 * - RF24::setDataRate()
 * - RF24::getDataRate()
 * @{
 */
typedef enum
{
    /** (0) represents 1 Mbps */
    RF24_1MBPS = 0,
    /** (1) represents 2 Mbps */
    RF24_2MBPS,
    /** (2) represents 250 kbps */
    RF24_250KBPS
} rf24_datarate_e;

/**
 * @}
 * @defgroup CRCLength CRC length
 * The length of a CRC checksum that is used (if any).<br>Cyclical Redundancy
 * Checking (CRC) is commonly used to ensure data integrity.
 * @see
 * - RF24::setCRCLength()
 * - RF24::getCRCLength()
 * - RF24::disableCRC()
 * @{
 */
typedef enum
{
    /** (0) represents no CRC checksum is used */
    RF24_CRC_DISABLED = 0,
    /** (1) represents CRC 8 bit checksum is used */
    RF24_CRC_8,
    /** (2) represents CRC 16 bit checksum is used */
    RF24_CRC_16
} rf24_crclength_e;

uint8_t RF24_attr_status;
uint8_t RF24_attr_config;

void RF24_flush_tx();
void RF24_flush_rx();
uint8_t RF24_rxFifoFull();
void RF24_setChannel(uint8_t channel);
uint8_t RF24_getChannel();
void RF24_openWritingPipe(uint8_t *address);
uint8_t RF24_getARC();
uint8_t RF24_getPALevel();
void RF24_setRetries(uint8_t delay, uint8_t count);
void RF24_setAddressWidth(uint8_t w);

uint8_t RF24_begin(void);
uint8_t RF24_isChipConnected(void);
void RF24_startListening(void);
void RF24_stopListening(void);
uint8_t RF24_available(void);
// uint8_t available (uint8_t *pipe_num);
void RF24_read(void *buffer, uint8_t length);
uint8_t RF24_write(void *buffer, uint8_t length);
uint8_t RF24_writeFast(void *buffer, uint8_t length);
void RF24_openReadingPipe(uint8_t pipe, uint8_t *address);
void RF24_powerDown(void);
void RF24_powerUp(void);
// void printDetails (void);
// void printPrettyDetails (void);
// uint8_t write (const void *buf, uint8_t len, const uint8_t multicast);
// uint8_t writeFast (const void *buf, uint8_t len);
// uint8_t writeFast (const void *buf, uint8_t len, const uint8_t multicast);
// uint8_t writeBlocking (const void *buf, uint8_t len, uint32_t timeout);
// uint8_t txStandBy ();
// uint8_t txStandBy (uint32_t timeout, uint8_t startTx=0);
// uint8_t writeAckPayload (uint8_t pipe, const void *buf, uint8_t len);
// void RF24_whatHappened(uint8_t &tx_ok, uint8_t &tx_fail, uint8_t &rx_ready);
// void startFastWrite (const void *buf, uint8_t len, const uint8_t multicast, uint8_t startTx=1);
// uint8_t startWrite (const void *buf, uint8_t len, const uint8_t multicast);
// void reUseTX ();
// uint8_t testCarrier (void);
// uint8_t testRPD (void);
// uint8_t isValid ();
void RF24_closeReadingPipe(uint8_t pipe);
void RF24_setPayloadSize(uint8_t size);
uint8_t RF24_getPayloadSize(void);
uint8_t RF24_getDynamicPayloadSize(void);
void RF24_enableAckPayload(void);
void RF24_disableAckPayload(void);
void RF24_enableDynamicPayloads(void);
void RF24_enableDynamicPayloads(void);
void RF24_disableDynamicPayloadLength(void);
void RF24_enableDynamicAck();
// uint8_t isPVariant(void);
void RF24_setAutoAck(uint8_t enable);
void RF24_setAutoAck2(uint8_t pipe, uint8_t enable);
void RF24_setPALevel(uint8_t level);
void RF24_setDataRate(rf24_datarate_e rate);
rf24_datarate_e getDataRate(void);
void RF24_setCRCLength(rf24_crclength_e encoding);
rf24_crclength_e getCRCLength(void);
// void RF24_disableCRC(void);
void RF24_maskIRQ(uint8_t tx_ok, uint8_t tx_fail, uint8_t rx_ready);
// void RF24_startConstCarrier(rf24_pa_dbm_e level, uint8_t channel);
// void RF24_stopConstCarrier(void);
// void RF24_toggleAllPipes(uint8_t isEnabled);
// ------
uint8_t RF24_isCarierDetected(void);

void RF24_printDetails(void);
#endif
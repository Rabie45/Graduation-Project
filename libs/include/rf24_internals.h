#ifndef _RF24_INT_H
#define _RF24_INT_H

#ifndef bitset
#define bitset(var, bitno) ((var) |= 1UL << (bitno))
#endif
#ifndef bitclr
#define bitclr(var, bitno) ((var) &= ~(1UL << (bitno)))
#endif

/******************************************************************************/
// NRF24L01 PINS.
/******************************************************************************/
#ifdef _16F877A
#define CE RD2
#define CSN RD3
#define CE_TRIS TRISD2
#define CSN_TRIS TRISD3
#else
#error rf24 library doesn't support this chip!
#endif

/******************************************************************************/
// NRF24L01 Registers.
/******************************************************************************/
#include <stdint.h>

#define REG_CONFIG 0x00
#define REG_EN_AA 0x01
#define REG_EN_RXADDR 0x02
#define REG_SETUP_AW 0x03
#define REG_SETUP_RETR 0x04
#define REG_RF_CH 0x05
#define REG_RF_SETUP 0x06
#define REG_STATUSS 0x07
#define REG_OBSERVE_TX 0x08
#define REG_CD 0x09
#define REG_RX_ADDR_P0 0x0A
#define REG_RX_ADDR_P1 0x0B
#define REG_RX_ADDR_P2 0x0C
#define REG_RX_ADDR_P3 0x0D
#define REG_RX_ADDR_P4 0x0E
#define REG_RX_ADDR_P5 0x0F
#define REG_TX_ADDR 0x10
#define REG_RX_PW_P0 0x11
#define REG_RX_PW_P1 0x12
#define REG_RX_PW_P2 0x13
#define REG_RX_PW_P3 0x14
#define REG_RX_PW_P4 0x15
#define REG_RX_PW_P5 0x16
#define REG_FIFO_STATUS 0x17
#define REG_DYNPD 0x1C
#define REG_FEATURE 0x1D


/******************************************************************************/
// NRF24L01 Commands.
/******************************************************************************/
#define CMD_R_REGISTER 0x00
#define CMD_W_REGISTER 0x20
#define CMD_R_RX_PAYLOAD 0x61
#define CMD_W_TX_PAYLOAD 0xA0
#define CMD_FLUSH_TX 0xE1
#define CMD_FLUSH_RX 0xE2
#define CMD_REUSE_TX_PL 0xE3
#define CMD_NOP 0xFF // No operation (used for reading status register)
#define CMD_R_RX_PL_WID 0x60

/******************************************************************************/
// NRF24L01 Masks.
/******************************************************************************/
#define MASK_REGISTER_ADDRESS 0x1F

/******************************************************************************/
// NRF24L01 Functions.
/******************************************************************************/

/**
 * @brief  Write or update value into the Memory Address of NRF24L01
 *
 * @param[in]	mnemonic_addr NRF24L01 Memory Address
 * @param[in]	value NRF24L01 Memory Address's value
 * @return      current status of NRF24L01
 */
uint8_t writeRegister(uint8_t mnemonic_addr, uint8_t value);

/**
 * @brief  Read value from the Memory Address of NRF24L01
 *
 * @param[in]	mnemonic_addr NRF24L01 Memory Address
 * 
 * @return      current value of the read NRF24L01 Memory Address
 *
 */
uint8_t readRegister(uint8_t mnemonic_addr);

/**
 * @brief  Write or update buffer into the Memory Address of NRF24L01
 *
 * @param[in]	mnemonic_addr NRF24L01 Memory Address
 * @param[in]	buffer write buffer data for NRF24L01 Memory Address's value
 * @param[in]	start start in buffer (inclusive)
 * @param[in]	end end in buffer (exclusive) *
 */
void writeMultibyteRegister(uint8_t mnemonic_addr, uint8_t *buffer, uint8_t length);

/**
 * @brief  Read buffer data from the Memory Address of NRF24L01
 *
 * @param[in]	mnemonic_addr NRF24L01 Memory Address
 * @param[out]	buffer read buffer for read NRF24L01 Memory Address's data
 * @param[in]	start start in buffer (inclusive)
 * @param[in]	end end in buffer (exclusive)
 * @return      current status of NRF24L01
 *
 */
void readMultibyteRegister(uint8_t mnemonic_addr, uint8_t *buffer, uint8_t length);

uint8_t readStatus();
#endif
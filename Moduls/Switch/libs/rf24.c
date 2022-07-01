#include "rf24.h"
#include <nRF24l01.h>
// #include <logline.h>
#include <bitwise.h>

// void RF24::RF24_read_register(uint8_t reg, uint8_t* buf, uint8_t len)
uint8_t RF24_read_n_register(uint8_t mnemonic_addr, uint8_t *buf, uint8_t len)
{
    RF24_CSN = 0;
    RF24_attr_status = SPI_exchangeByte(R_REGISTER | mnemonic_addr);
    while (len--)
    {
        *buf++ = SPI_exchangeByte(RF24_NOP);
    }
    RF24_CSN = 1;
}
// uint8_t RF24::RF24_read_register(uint8_t reg)
uint8_t RF24_read_register(uint8_t mnemonic_addr)
{
    RF24_CSN = 0;
    uint8_t result;
    RF24_attr_status = SPI_exchangeByte(R_REGISTER | mnemonic_addr);
    result = SPI_exchangeByte(RF24_NOP);
    RF24_CSN = 1;

    return result;
}
// void RF24::RF24_write_register(uint8_t reg, const uint8_t* buf, uint8_t len)
void RF24_write_n_register(uint8_t mnemonic_addr, uint8_t *buffer, uint8_t length)
{
    RF24_CSN = 0;
    RF24_attr_status = SPI_exchangeByte(W_REGISTER | mnemonic_addr); // exchange with status
    while (length)
    {
        SPI_exchangeByte(*buffer++);
        length--;
    }
    RF24_CSN = 1;
}

// void RF24::RF24_write_register(uint8_t reg, uint8_t value, bool is_cmd_only)
void RF24_write_register(uint8_t mnemonic_addr, uint8_t value)
{

    RF24_CSN = 0;
    RF24_attr_status = SPI_exchangeByte(W_REGISTER | mnemonic_addr); // exchange with status
    SPI_exchangeByte(value);
    RF24_CSN = 1;
}

uint8_t RF24_get_status()
{
    RF24_CSN = 0;
    RF24_attr_status = SPI_exchangeByte(RF24_NOP);
    RF24_CSN = 1;
    return RF24_attr_status;
}

uint8_t RF24_begin()
{
    // RF24::_init_pins()
    RF24_CE_TRIS = 0;  // RF24_CE as output
    RF24_CSN_TRIS = 0; // RF24_CSN as output
    RF24_CE = 0;
    RF24_CSN = 1;
    __delay_ms(100);
    // init spi
    // SPI_initialize();
    // RF24::_init_radio()
    // Must allow the radio time to settle else configuration bits will not necessarily stick.
    // This is actually only required following power up but some settling time also appears to
    // be required after resets too. For full coverage, we'll always assume the worst.
    // Enabling 16b CRC is by far the most obvious case if the wrong timing is used - or skipped.
    // Technically we require 4.5ms + 14us as a worst case. We'll just call it 5ms for good measure.
    // WARNING: Delay is based on P-variant whereby non-P *may* require different timing.
    __delay_ms(5);
    // Set 1500uS (minimum for 32B payload in ESB@250KBPS) timeouts, to make testing a little easier
    // WARNING: If this is ever lowered, either 250KBS mode with AA is broken or maximum packet
    // sizes must never be used. See datasheet for a more complete explanation.
    RF24_setRetries(5, 15);

    // Then set the data rate to the slowest (and most reliable) speed supported by all
    // hardware. Since this value occupies the same register as the PA level value, set
    // the PA level to MAX
    RF24_setPALevel(RF24_PA_MAX);
    RF24_setDataRate(RF24_1MBPS);

    // allow use of multicast parameter and dynamic payloads by default
    RF24_write_register(FEATURE, 0);
    RF24_write_register(DYNPD, 0);     // disable dynamic payloads by default (for all pipes)
    RF24_write_register(EN_AA, 0x3F);  // enable auto-ack on all pipes
    RF24_write_register(EN_RXADDR, 3); // only open RX pipes 0 & 1
    RF24_setPayloadSize(32);           // set static payload size to 32 (max) bytes by default
    RF24_setAddressWidth(5);           // set default address length to (max) 5 bytes

    // Set up default configuration.  Callers can always change it later.
    // This channel should be universally safe and not bleed over into adjacent
    // spectrum.
    RF24_setChannel(76);

    // Reset current status
    // Notice reset and flush is the last thing we do
    RF24_write_register(NRF_STATUS, _BV(RX_DR) | _BV(TX_DS) | _BV(MAX_RT));

    // Flush buffers
    RF24_flush_rx();
    RF24_flush_tx();

    // Clear CONFIG register:
    //      Reflect all IRQ events on IRQ pin
    //      Enable PTX
    //      Power Up
    //      16-bit CRC (CRC required by auto-ack)
    // Do not write RF24_CE high so radio will remain in standby I mode
    // PTX should use only 22uA of power
    RF24_write_register(NRF_CONFIG, (_BV(EN_CRC) | _BV(CRCO)));
    RF24_powerUp();
    RF24_attr_config = RF24_read_register(NRF_CONFIG);
    return RF24_attr_config == (_BV(EN_CRC) | _BV(CRCO) | _BV(PWR_UP));
}

void RF24_setPALevel(uint8_t level)
{
    uint8_t setup = RF24_read_register(RF_SETUP) & 0xF8;
    setup |= (level > RF24_PA_MAX ? RF24_PA_MAX : level) << 1;
    RF24_write_register(RF_SETUP, setup);
}

uint8_t RF24_isChipConnected()
{
    uint8_t width = RF24_read_register(SETUP_AW) & 0b11;
    if (width > 0 && width < 4)
    {
        return 1;
    }
    return 0;
}

void RF24_startListening(void)
{
    RF24_write_register(NRF_CONFIG, RF24_read_register(NRF_CONFIG) | _BV(PRIM_RX));
    RF24_write_register(NRF_STATUS, _BV(RX_DR) | _BV(TX_DS) | _BV(MAX_RT));
    RF24_CE = 1;
    // TODO
    // // Restore the pipe0 address, if exists
    // if (_is_p0_rx)
    // {
    //     RF24_write_register(RX_ADDR_P0, pipe0_reading_address, addr_width);
    // }
    // else
    // {
    //     closeReadingPipe(0);
    // }
}

void RF24_stopListening(void)
{
    RF24_CE = 0;
    // TODO
    // if (ack_payloads_enabled)
    // {
    //     flush_tx();
    // }
    // config_reg = static_cast<uint8_t>(config_reg & ~_BV(PRIM_RX));
    RF24_write_register(NRF_CONFIG, RF24_read_register(NRF_CONFIG) & ~_BV(PRIM_RX));
    RF24_write_register(EN_RXADDR, RF24_read_register(EN_RXADDR) | 1); // Enable RX on pipe0
    __delay_us(130);
}

void RF24_powerDown(void)
{
    RF24_CE = 0;
    RF24_write_register(NRF_CONFIG, RF24_read_register(NRF_CONFIG) & ~_BV(PWR_UP));
}

// Power up now. Radio will not power down unless instructed by MCU for config changes etc.
void RF24_powerUp(void)
{
    RF24_write_register(NRF_CONFIG, RF24_read_register(NRF_CONFIG) | _BV(PWR_UP));
    __delay_ms(5);
}

void RF24_setPayloadSize(uint8_t size)
{
    RF24_write_register(RX_PW_P0, size);
    RF24_write_register(RX_PW_P1, size);
    RF24_write_register(RX_PW_P2, size);
    RF24_write_register(RX_PW_P3, size);
    RF24_write_register(RX_PW_P4, size);
    RF24_write_register(RX_PW_P5, size);
}

uint8_t RF24_getPayloadSize(void)
{
    return RF24_read_register(RX_PW_P0);
}

uint8_t RF24_write(void *buf, uint8_t len)
{

    // write payload
    RF24_CSN = 0;
    RF24_attr_status = SPI_exchangeByte(W_TX_PAYLOAD); // exchange with status
    while (len--)
    {
        SPI_exchangeByte(*(uint8_t *)buf++);
    }
    RF24_CSN = 1;
    // start transmitting
    RF24_CE = 1;
    while (!(RF24_get_status() & (_BV(TX_DS) | _BV(MAX_RT))))
    {
        ;
    }

    RF24_CE = 0;
    RF24_write_register(NRF_STATUS, _BV(RX_DR) | _BV(TX_DS) | _BV(MAX_RT));

    // Max retries exceeded
    if (RF24_attr_status & _BV(MAX_RT))
    {
        RF24_flush_tx(); // Only going to be 1 packet in the FIFO at a time using this method, so just flush
        return 0;
    }
    return 1;
}

uint8_t RF24_writeFast(void *buf, uint8_t len)
{

    // Blocking only if FIFO is full. This will loop and block until TX is successful or fail
    while ((RF24_get_status() & _BV(TX_FULL)))
    {
        if (RF24_attr_status & _BV(MAX_RT))
        {
            return 0; // Return 0. The previous payload has not been retransmitted
        }
    }
    // write payload
    RF24_CSN = 0;
    RF24_attr_status = SPI_exchangeByte(W_TX_PAYLOAD); // exchange with status
    while (len)
    {
        SPI_exchangeByte(*(uint8_t *)buf);
        len--;
        buf++;
    }
    RF24_CSN = 1;
    // start transmitting
    RF24_CE = 1;
    return 1;
}

/****************************************************************************/

void RF24_maskIRQ(uint8_t tx, uint8_t fail, uint8_t rx)
{
    /* clear the interrupt flags */
    RF24_attr_config &= ~(_BV(MASK_MAX_RT) | _BV(MASK_TX_DS) | _BV(MASK_RX_DR));
    RF24_attr_config |= _BV(MASK_MAX_RT) | _BV(MASK_TX_DS) | _BV(MASK_RX_DR);
    RF24_write_register(NRF_CONFIG, RF24_attr_config);
}

uint8_t RF24_getDynamicPayloadSize(void)
{
    uint8_t result = RF24_read_register(R_RX_PL_WID);

    if (result > 32)
    {
        RF24_flush_rx();
        __delay_ms(2);
        return 0;
    }
    return result;
}

uint8_t RF24_available(void)
{

    // get implied RX FIFO empty flag from status byte
    uint8_t pipe = (RF24_get_status() >> RX_P_NO) & 0x07;
    if (pipe > 5)
        return 0;

    // // If the caller wants the pipe number, include that
    // if (pipe_num)
    //     *pipe_num = pipe;

    return 1;
}

void RF24_read(void *buf, uint8_t len)
{

    // Fetch the payload
    RF24_read_n_register(R_RX_PAYLOAD, (uint8_t *)buf, len);
    // Clear the only applicable interrupt flags
    RF24_write_register(NRF_STATUS, _BV(RX_DR));
}

// void RF24_whatHappened(uint8_t &tx_ok, uint8_t &tx_fail, uint8_t &rx_ready)
// {
//     // Read the status & reset the status in one easy call
//     // Or is that such a good idea?
//     RF24_write_register(NRF_STATUS, _BV(RX_DR) | _BV(TX_DS) | _BV(MAX_RT));

//     // Report to the user what happened
//     tx_ok = status & _BV(TX_DS);
//     tx_fail = status & _BV(MAX_RT);
//     rx_ready = status & _BV(RX_DR);
// }

void RF24_openReadingPipe(uint8_t child, uint8_t *address)
{
    if (child < 2)
    {
        RF24_write_n_register(RX_ADDR_P0 + child, address, 5);
    }
    else
    {
        RF24_write_register(RX_ADDR_P0 + child, *address);
    }
    RF24_write_register(EN_RXADDR, RF24_read_register(EN_RXADDR) | _BV(ERX_P0 + child));
}

void RF24_closeReadingPipe(uint8_t pipe)
{
    RF24_write_register(EN_RXADDR, RF24_read_register(EN_RXADDR) & ~_BV(ERX_P0 + pipe));
}

void RF24_enableDynamicPayloads(void)
{
    RF24_write_register(FEATURE, RF24_read_register(FEATURE) | _BV(EN_DPL));
    RF24_write_register(DYNPD, RF24_read_register(DYNPD) | _BV(DPL_P5) | _BV(DPL_P4) | _BV(DPL_P3) | _BV(DPL_P2) | _BV(DPL_P1) | _BV(DPL_P0));
}

void RF24_disableDynamicPayloads(void)
{
    RF24_write_register(FEATURE, 0);
    RF24_write_register(DYNPD, 0);
}

void RF24_setAutoAck(uint8_t enable)
{
    if (enable)
    {
        RF24_write_register(EN_AA, 0x3F);
    }
    else
    {
        RF24_write_register(EN_AA, 0);
    }
}

/****************************************************************************/

void RF24_setAutoAck2(uint8_t pipe, uint8_t enable)
{
    uint8_t en_aa = RF24_read_register(EN_AA);
    if (enable)
    {
        en_aa |= BV(pipe);
    }
    else
    {
        en_aa &= ~_BV(pipe);
    }
    RF24_write_register(EN_AA, en_aa);
}

void RF24_setDataRate(rf24_datarate_e speed)
{
    uint8_t setup = RF24_read_register(RF_SETUP);
    // HIGH and LOW '00' is 1Mbs - our default
    setup = setup & ~(_BV(RF_DR_LOW) | _BV(RF_DR_HIGH));
    if (speed == RF24_250KBPS)
    {
        setup |= _BV(RF_DR_LOW);
    }
    else if (speed == RF24_2MBPS)
    {
        setup |= _BV(RF_DR_HIGH);
    }
    RF24_write_register(RF_SETUP, setup);
}

rf24_datarate_e RF24_getDataRate(void)
{
    rf24_datarate_e result;
    uint8_t dr = RF24_read_register(RF_SETUP) & (_BV(RF_DR_LOW) | _BV(RF_DR_HIGH));

    // switch uses RAM (evil!)
    // Order matters in our case below
    if (dr == _BV(RF_DR_LOW))
    {
        // '10' = 250KBPS
        result = RF24_250KBPS;
    }
    else if (dr == _BV(RF_DR_HIGH))
    {
        // '01' = 2MBPS
        result = RF24_2MBPS;
    }
    else
    {
        // '00' = 1MBPS
        result = RF24_1MBPS;
    }
    return result;
}

void RF24_setCRCLength(rf24_crclength_e length)
{
    RF24_attr_config = RF24_attr_config & ~(_BV(CRCO) | _BV(EN_CRC));

    // switch uses RAM (evil!)
    if (length == RF24_CRC_DISABLED)
    {
        // Do nothing, we turned it off above.
    }
    else if (length == RF24_CRC_8)
    {
        RF24_attr_config |= _BV(EN_CRC);
    }
    else
    {
        RF24_attr_config |= _BV(EN_CRC);
        RF24_attr_config |= _BV(CRCO);
    }
    RF24_write_register(NRF_CONFIG, RF24_attr_config);
}
void RF24_disableCRC(void)
{
    RF24_attr_config = RF24_attr_config & ~_BV(EN_CRC);
    RF24_write_register(NRF_CONFIG, RF24_attr_config);
}

void RF24_flush_tx()
{
    RF24_write_register(FLUSH_TX, RF24_NOP);
}
void RF24_flush_rx()
{
    RF24_write_register(FLUSH_RX, RF24_NOP);
}
uint8_t RF24_rxFifoFull()
{
    return (RF24_read_register(FIFO_STATUS) & _BV(RX_FULL));
}
void RF24_setChannel(uint8_t channel)
{
    RF24_write_register(RF_CH, channel);
}
uint8_t RF24_getChannel()
{
    return RF24_read_register(RF_CH);
}
void RF24_openWritingPipe(uint8_t *address)
{
    RF24_write_n_register(TX_ADDR, address, 5);
}
uint8_t RF24_getARC()
{
    return (RF24_read_register(OBSERVE_TX) & 0x0F);
}
uint8_t RF24_getPALevel()
{
    return ((RF24_read_register(RF_SETUP) & (_BV(RF_PWR_LOW) | _BV(RF_PWR_HIGH))) >> 1);
}
void RF24_setRetries(uint8_t delay, uint8_t count)
{
    RF24_write_register(SETUP_RETR, ((delay & 0x0f) << ARD) | (count & 0x0f));
}
void RF24_setAddressWidth(uint8_t w)
{
    RF24_write_register(SETUP_AW, (w - 2) & 0b11);
}

/******************************************************************
 * ****************************************************************
 * ****************************************************************
 * ****************************************************************
 * ****************************************************************
 * ****************************************************************
 * ****************************************************************
 * */

void RF24_printDetails()
{
    uint8_t buffer[5];
    logline_println("===START OF DETAILS===");
    logline_prop_bin("CONFIG", RF24_read_register(NRF_CONFIG));
    logline_prop_bin("EN_AA", RF24_read_register(EN_AA));
    logline_prop_bin("EN_RXADDR", RF24_read_register(EN_RXADDR));
    logline_prop_int("SETUP_AW", RF24_read_register(SETUP_AW));
    logline_prop_bin("SETUP_RETR", RF24_read_register(SETUP_RETR));
    logline_prop_int("RF_CH", RF24_read_register(RF_CH));
    logline_prop_bin("RF_SETUP", RF24_read_register(RF_SETUP));
    logline_prop_bin("STATUS", RF24_read_register(NRF_STATUS));
    logline_prop_bin("OBSERVE_TX", RF24_read_register(OBSERVE_TX));
    RF24_read_n_register(RX_ADDR_P0, buffer, 5);
    logline_prop_n_hex("RX_P0", buffer, 5);
    RF24_read_n_register(RX_ADDR_P1, buffer, 5);
    logline_prop_n_hex("RX_P1", buffer, 5);
    logline_prop_hex("RX_P2", RF24_read_register(RX_ADDR_P2));
    logline_prop_hex("RX_P3", RF24_read_register(RX_ADDR_P3));
    logline_prop_hex("RX_P4", RF24_read_register(RX_ADDR_P4));
    logline_prop_hex("RX_P5", RF24_read_register(RX_ADDR_P5));
    RF24_read_n_register(TX_ADDR, buffer, 5);
    logline_prop_n_hex("TX", buffer, 5);
    logline_println("====END OF DETAILS====");
}

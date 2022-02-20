#include "rf24.h"
#include "rf24_internals.h"
uint8_t temp0, temp1;

void RF24_initialize()
{
    CE_TRIS = 0;  // CE as output
    CSN_TRIS = 0; // CSN as output
    CE = 0;
    CSN = 1;
    waitMillis(10);

    // waitMillis(10); //

    temp0 = readStatus();
    writeRegister(REG_STATUSS, temp0);
}
uint8_t writeRegister(uint8_t mnemonic_addr, uint8_t value)
{
    CSN = 0;
    temp0 = SPI_exchangeByte(CMD_W_REGISTER | mnemonic_addr); // exchange with status
    SPI_exchangeByte(value);
    CSN = 1;
    // temp1 = readRegister(mnemonic_addr);

    return temp0;
}

void writeMultibyteRegister(uint8_t mnemonic_addr, uint8_t *buffer, uint8_t length)
{
    CSN = 0;
    SPI_exchangeByte(CMD_W_REGISTER | mnemonic_addr); // exchange with status
    for (uint8_t i = 0; i < length; i++)
    {
        SPI_exchangeByte(buffer[i]);
    }
    CSN = 1;
}

uint8_t readRegister(uint8_t mnemonic_addr)
{
    CSN = 0;
    SPI_exchangeByte(CMD_R_REGISTER | mnemonic_addr);
    temp0 = SPI_exchangeByte(CMD_NOP);
    CSN = 1;
    return temp0;
}

void readMultibyteRegister(uint8_t mnemonic_addr, uint8_t *buffer, uint8_t length)
{
    CSN = 0;
    SPI_exchangeByte(CMD_R_REGISTER | mnemonic_addr);
    for (uint8_t i = 0; i < length; i++)
    {
        buffer[i] = SPI_exchangeByte(CMD_NOP);
    }
    CSN = 1;
}

uint8_t readStatus()
{
    CSN = 0;
    temp0 = SPI_exchangeByte(CMD_NOP);
    CSN = 1;
    return temp0;
}

void RF24_setMode(RF24Mode mode)
{
    temp0 = readRegister(REG_CONFIG);
    if (mode == RF24_MODE_RECEIVER)
    {
        bitset(temp0, 0);
        CE = 1;
    }
    else
    {
        bitclr(temp0, 0);
        CE = 0;
    }
    writeRegister(REG_CONFIG, temp0);
}

void RF24_setChannel(uint8_t channel)
{
    bitclr(channel, 7);
    writeRegister(REG_RF_CH, channel);
}

void RF24_setDataRate(RF24DataRate rate)
{
    temp0 = readRegister(REG_RF_SETUP);
    if (rate == RF24_DATARATE_250Kbps)
    {
        bitset(temp0, 5); // RF_DR_LOW = 1
        bitclr(temp0, 3); // RF_DR_HIGH = 0
    }
    else if (rate == RF24_DATARATE_1Mbps)
    {
        bitclr(temp0, 5); // RF_DR_LOW = 0
        bitclr(temp0, 3); // RF_DR_HIGH = 0
    }
    else if (rate == RF24_DATARATE_2Mbps)
    {
        bitclr(temp0, 5); // RF_DR_LOW = 0
        bitset(temp0, 3); // RF_DR_HIGH = 1
    }
    writeRegister(REG_RF_SETUP, temp0);
}

void RF24_setOutputPower(RF24OutputPower power)
{
    temp0 = readRegister(REG_RF_SETUP);
    bitclr(temp0, 2); // RF_PWR:2
    bitclr(temp0, 1); // RF_PWR:1
    writeRegister(REG_RF_SETUP, temp0 | power);
}

void RF24_openDataPipe(RF24DataPipe pipe)
{
    if (pipe == RF24_DATA_PIPE_ALL)
    {
        writeRegister(REG_EN_RXADDR, 0x3f);
    }
    else
    {
        temp0 = readRegister(REG_EN_RXADDR);
        bitset(temp0, pipe);
        writeRegister(REG_EN_RXADDR, temp0);
    }
}

void RF24_closeDataPipe(RF24DataPipe pipe)
{
    if (pipe == RF24_DATA_PIPE_ALL)
    {
        writeRegister(REG_EN_RXADDR, 0x00);
    }
    else
    {
        temp0 = readRegister(REG_EN_RXADDR);
        bitclr(temp0, pipe);
        writeRegister(REG_EN_RXADDR, temp0);
    }
}

uint8_t RF24_setTransmittingAddress(uint8_t address)
{
    return writeRegister(REG_TX_ADDR, address);
}

void RF24_setFullTransmittingAddress(uint8_t *addressBytes)
{ /// AUTO ACK
    temp0 = (readRegister(REG_SETUP_AW) & 0b11) + 2;
    writeMultibyteRegister(REG_TX_ADDR, addressBytes, temp0);
}

void RF24_setReceivingAddress(RF24DataPipe pipe, uint8_t address)
{
    if (pipe == RF24_DATA_PIPE_ALL)
        return; // must be unique, the user is idiot
    writeRegister(REG_RX_ADDR_P0 + pipe, address);
}
void RF24_setFullReceivingAddress(RF24DataPipe pipe, uint8_t *addressBytes)
{
    if (pipe == RF24_DATA_PIPE_ALL)
        return;                                      // must be unique, the user is idiot
    temp0 = (readRegister(REG_SETUP_AW) & 0b11) + 2; // size
    if (pipe > 1)
    {
        temp1 = readRegister(REG_RX_ADDR_P1);
        writeMultibyteRegister(REG_RX_ADDR_P1, addressBytes, temp0);
        writeRegister(REG_RX_ADDR_P1, temp1);
        writeRegister(REG_RX_ADDR_P0 + pipe, addressBytes[0]);
    }
    else
        writeMultibyteRegister(REG_RX_ADDR_P0 + pipe, addressBytes, temp0);
}

void RF24_enableDynamicPayloadLength(RF24DataPipe pipe)
{
    temp0 = readRegister(REG_FEATURE);
    bitset(temp0, 2);
    writeRegister(REG_FEATURE, temp0);
    if (pipe == RF24_DATA_PIPE_ALL)
    {
        writeRegister(REG_DYNPD, 0x3f);
    }
    else
    {
        temp0 = readRegister(REG_DYNPD);
        bitset(temp0, pipe);
        writeRegister(REG_DYNPD, temp0);
    }
}

void RF24_disableDynamicPayloadLength(RF24DataPipe pipe)
{
    if (pipe == RF24_DATA_PIPE_ALL)
    {
        writeRegister(REG_DYNPD, 0x00);
    }
    else
    {
        temp0 = readRegister(REG_DYNPD);
        bitclr(temp0, pipe);
        writeRegister(REG_DYNPD, temp0);
    }
}

uint8_t RF24_available(RF24DataPipe *pipeNo)
{
    temp0 = (readStatus() >> 1) & 0x07;
    pipeNo[0] = temp0;
    // if pipeNo != 7 :: means that RX fifo contains data
    return ~temp0;
}

uint8_t RF24_getDynamicPayloadSize()
{
    CSN = 0;
    SPI_exchangeByte(CMD_R_RX_PL_WID);
    temp0 = SPI_exchangeByte(CMD_NOP);
    CSN = 1;
    return temp0;
}

uint8_t RF24_isChipConnected()
{
    temp0 = readRegister(REG_SETUP_AW) & 0b11;
    if (temp0 > 0 && temp0 < 4)
    {
        return 1;
    }
    return 0;
}

void RF24_readPayload(uint8_t *buffer, uint8_t length)
{
    // clear bit
    temp0 = readStatus();              // status
    writeRegister(REG_STATUSS, temp0); // write 1 to bit to clear it (datasheet)
    CSN = 0;
    SPI_exchangeByte(CMD_R_RX_PAYLOAD);
    for (uint8_t i = 0; i < length; i++)
    {
        buffer[i] = SPI_exchangeByte(CMD_NOP);
    }
    CSN = 1;
}
uint8_t RF24_sendPayload(uint8_t *buffer, uint8_t length)
{
    CE = 0;
    CSN = 0;
    SPI_exchangeByte(CMD_W_TX_PAYLOAD);
    for (temp0 = 0; temp0 < length; temp0++)
    {
        SPI_exchangeByte(buffer[temp0]);
    }
    CSN = 1;
    // generate a pulse of min 10us on CE
    CE = 1;
    waitMillis(15);
    CE = 0;
    while (!((temp0 = readStatus()) & 0x30)) // aka stop on fail or success
        ;
    writeRegister(REG_STATUSS, temp0); // clear flags
    if (temp0 & 0x10)                  // if fail (MAX_RT = 1)
    {
        return 0;
    }
    return 1;
}

void RF24_setCRCEncoding(RF24CRCEncoding encoding)
{
    // bit 3 -> enable/disable crc
    // bit 2 -> 0 = 1-byte, 1 = 2-byte
    temp0 = readRegister(REG_CONFIG);
    if (encoding == RF24_CRC_1_BYTE)
    {
        bitset(temp0, 3); // enable crc
        bitclr(temp0, 2); // 1-byte
    }
    else if (encoding == RF24_CRC_2_BYTE)
    {
        bitset(temp0, 3); // enable crc
        bitset(temp0, 2); // 2-byte
    }
    else if (RF24_CRC_OFF)
    {
        bitclr(temp0, 3); // disable crc
    }
    writeRegister(REG_CONFIG, temp0);
}
void RF24_powerUp(uint8_t upOrDown)
{
    temp0 = readRegister(REG_CONFIG);
    if (upOrDown)
        bitset(temp0, 1);
    else
        bitclr(temp0, 1);
    writeRegister(REG_CONFIG, temp0);
    waitMillis(10);

    //  waitMillis(5);
    // waitMillis(2);
}

void RF24_setPayloadWidth(RF24DataPipe pipe, uint8_t width)
{
    if (pipe == RF24_DATA_PIPE_ALL)
    {
        writeRegister(REG_RX_PW_P0, width & 0x3f);
        writeRegister(REG_RX_PW_P1, width & 0x3f);
        writeRegister(REG_RX_PW_P2, width & 0x3f);
        writeRegister(REG_RX_PW_P3, width & 0x3f);
        writeRegister(REG_RX_PW_P4, width & 0x3f);
        writeRegister(REG_RX_PW_P5, width & 0x3f);
    }
    else
        writeRegister(REG_RX_PW_P0 + pipe, width & 0x3f);
}
void RF24_setAutoAck(RF24DataPipe pipe, uint8_t enabledOrDisabled)
{
    if (pipe == RF24_DATA_PIPE_ALL)
    {
        writeRegister(REG_EN_AA, enabledOrDisabled ? 0x3f : 0x00);
        return;
    }
    temp0 = readRegister(REG_EN_AA);
    if (enabledOrDisabled)
    {
        bitset(temp0, pipe);
    }
    else
    {
        bitclr(temp0, pipe);
    }
    writeRegister(REG_EN_AA, temp0);
}

inline uint8_t RF24_isCarierDetected()
{
    return readRegister(REG_CD) & 1;
}

uint8_t debug_status,
    debug_en_rxaddr, debug_channel, debug_config_reg, debug_en_aa, debug_carrier_detect, debug_rf_setup;
uint8_t debug_rx_addr_p0[5], debug_rx_addr_p1[5], debug_tx_addr[5], dubug_getPayLOadSize;

void RF24_debug()
{

    debug_status = readStatus();
    readMultibyteRegister(REG_RX_ADDR_P0, debug_rx_addr_p0, 5);
    readMultibyteRegister(REG_RX_ADDR_P1, debug_rx_addr_p1, 5);
    readMultibyteRegister(REG_TX_ADDR, debug_tx_addr, 5);
    debug_en_rxaddr = readRegister(REG_EN_RXADDR);
    debug_channel = readRegister(REG_RF_CH);
    debug_config_reg = readRegister(REG_CONFIG);
    debug_en_aa = readRegister(REG_EN_AA);
    debug_carrier_detect = readRegister(REG_CD);
    debug_rf_setup = readRegister(REG_RF_SETUP);

    dubug_getPayLOadSize = RF24_getDynamicPayloadSize();
    asm("nop");
}
/*void RF24_stopListening()
{
    CE = 0;
    waitMicros(100);
 RF24_flashTx();
    
    debug_config_reg = bitclr(0, 0); /*BV OR readRegister(/*PRIM_RX
    writeRegister(REG_CONFIG, debug_config_reg);
    writeRegister(REG_EN_RXADDR, (readRegister(REG_EN_RXADDR) |));
    // write_register(EN_RXADDR, static_cast<uint8_t>(read_register(EN_RXADDR) | _BV(pgm_read_byte(&child_pipe_enable[0])))); // Enable RX on pipe0
}
void RF24_startListening(){

}*/
void RF24_flashTX()
{
    writeRegister(CMD_FLUSH_TX, 1);
    return;
}
void RF24_flashRX()
{
    writeRegister(CMD_FLUSH_RX, 1);
    return;
}
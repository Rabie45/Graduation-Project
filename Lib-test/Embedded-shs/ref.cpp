bool RF24::write(const void* buf, uint8_t len, const bool multicast)
{
    //Start Writing
    startFastWrite(buf, len, multicast);

    while (!(get_status() & (_BV(TX_DS) | _BV(MAX_RT)))) {
        #if defined(FAILURE_HANDLING) || defined(RF24_LINUX)
        if (millis() - timer > 95) {
            errNotify();
            #if defined(FAILURE_HANDLING)
            return 0;
            #else
            delay(100);
            #endif
        }
        #endif
    }

    ce(LOW);

    write_register(NRF_STATUS, _BV(RX_DR) | _BV(TX_DS) | _BV(MAX_RT));

    //Max retries exceeded
    if (status & _BV(MAX_RT)) {
        flush_tx(); // Only going to be 1 packet in the FIFO at a time using this method, so just flush
        return 0;
    }
    //TX OK 1 or 0
    return 1;
}

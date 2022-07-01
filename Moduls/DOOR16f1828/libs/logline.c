#include <logline.h>
#ifndef LOGLINE_OFF
const char LOGLINE_CONVERSION_TABLE[] = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

void _$_logline_str(char *string)
{
    uint8_t limit=100;
    while (*string != '\0' && limit--)
    {
        Serial_write(*(uint8_t *)string);
        string++;
    }
}

void _$_logline_int(uint8_t v)
{

    uint8_t t = v > 99 ? 100 : v > 9 ? 10
                                     : 1;
    do
    {
        Serial_write('0' + (v / t) % 10);
        t /= 10;
    } while (t > 0);
}

void _$_logline_bin(uint8_t v)
{
    uint8_t i = 8;
    while (i--)
    {
        Serial_write((v & 0x80) ? '1' : '0');
        v <<= 1;
    }
}

void _$_logline_hex(uint8_t v)
{
    Serial_write(LOGLINE_CONVERSION_TABLE[v >> 4]);
    Serial_write(LOGLINE_CONVERSION_TABLE[v & 0xf]);
}

void _$_logline_n_hex(uint8_t *ptr, uint8_t n)
{
    ptr += n - 1;
    while (n)
    {
        uint8_t v = *ptr;
        Serial_write(LOGLINE_CONVERSION_TABLE[v >> 4]);
        Serial_write(LOGLINE_CONVERSION_TABLE[v & 0xf]);
        ptr--;
        n--;
    }
}



#endif

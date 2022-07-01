#ifndef __LOGLINE_H
#define __LOGLINE_H
#ifdef LOGLINE_OFF
#define _$_logline_char(c)
#define _$_logline_end()
#define logline_print(string)
#define logline_println(string)
#define logline_prop_int(name, v)
#define logline_prop_bin(name, v)
#define logline_prop_hex(name, v)
#define logline_prop_n_hex(name, ptr, n)
#define logline_prop_status(name, v)
#else
#include <Serial.h>

const char LOGLINE_OK[] = "OK";
const char LOGLINE_FAIL[] = "FAIL";

#define _$_logline_char(c) Serial_write((uint8_t)c)
#define _$_logline_end() Serial_write((uint8_t)'\n')
#define logline_print(string) _$_logline_str((char *)string)
#define logline_println(string)     \
    _$_logline_str((char *)string); \
    _$_logline_char('\n')

#define logline_prop_int(name, v) \
    _$_logline_str((char *)name); \
    _$_logline_char('=');         \
    _$_logline_int((uint8_t)v);   \
    _$_logline_end()

#define logline_prop_bin(name, v)  \
    _$_logline_str((char *)name);  \
    _$_logline_char((uint8_t)'='); \
    _$_logline_bin((uint8_t)v);    \
    _$_logline_end()

#define logline_prop_hex(name, v)  \
    _$_logline_str((char *)name);  \
    _$_logline_char((uint8_t)'='); \
    _$_logline_hex((uint8_t)v);    \
    _$_logline_end()

#define logline_prop_n_hex(name, ptr, n) \
    _$_logline_str((char *)name);        \
    _$_logline_char((uint8_t)'=');       \
    _$_logline_n_hex((uint8_t *)ptr, n); \
    _$_logline_end()

#define logline_prop_status(name, v)                       \
    _$_logline_str((char *)name);                          \
    _$_logline_char((uint8_t)'=');                         \
    _$_logline_str((char *)v ? LOGLINE_OK : LOGLINE_FAIL); \
    _$_logline_end()

void _$_logline_str(char *string);
void _$_logline_int(uint8_t v);
void _$_logline_bin(uint8_t v);
void _$_logline_hex(uint8_t v);
void _$_logline_n_hex(uint8_t *ptr, uint8_t n);
#endif

#endif
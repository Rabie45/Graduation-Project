#ifndef _UTIL_H
#define _UTIL_H
enum val
{
    FALSE,
    TRUE
};

struct Property
{
    uint8_t id;
    uint8_t value;
};
struct Button
{
    long nextMills;
    uint8_t wasPressed;
};
/// and any other modules
#endif
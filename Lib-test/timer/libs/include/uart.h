#include <xc.h> 
void UART_Init();
void UART_TInit();
void UART_Write(uint8_t);
void UART_Write_String(char *);
void UART_RInit();
uint8_t UART_Read(void);
void UART_Read_String(uint8_t *Output, uint16_t length);
void newLine();
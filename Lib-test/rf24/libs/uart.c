/*
 * File:   uart.c
 * Author: abdallah
 *
 * Created on August 31, 2021, 5:00 PM
 */

#include <xc.h>
#include "uart.h"
///////////////////////////////////
////////////HALF DUPLEX////////////
////////////////////////////////////
void UART_RInit()
{
  BRGH = 1;   // Set For High-Speed Baud Rate
  SPBRG = 25; // Set The Baud Rate To Be 9600 bps
  // Enable The Ascynchronous Serial Port
  SYNC = 0;
  SPEN = 1;
  // Set The RX-TX Pins to be in UART mode (not io)
  TRISC6 = 1; // As stated in the datasheet
  TRISC7 = 1; // As stated in the datasheet
  //--[ Enable UART Receiving Interrupts ]--
  RCIE = 1; // UART Receving Interrupt Enable Bit
  PEIE = 1; // Peripherals Interrupt Enable Bit
  GIE = 1;  // Global Interrupt Enable Bit
  //------------------
  CREN = 1; // Enable Data Continous Reception
}
void UART_TInit(void)
{

  BRGH = 1;   // Set For High-Speed Baud Rate
  SPBRG = 25; // Set The Baud Rate To Be 9600 bps
  //--[ Enable The Ascynchronous Serial Port ]--
  SYNC = 0;
  SPEN = 1;
  //--[ Set The RX-TX Pins to be in UART mode (not io) ]--
  TRISC6 = 1; // As stated in the datasheet
  TRISC7 = 1; // As stated in the datasheet
  TXEN = 1;   // Enable UART Transmission
}
///////////////////////////////////
////////////HALF DUPLEX////////////
////////////////////////////////////
///////////////////////////////////
////////////FULL DUPLEX////////////
////////////////////////////////////
void UART_Init(void)
{

  BRGH = 1;   // Set For High-Speed Baud Rate
  SPBRG = 103; // Set The Baud Rate To Be 9600 bps
  SYNC = 0;   // Setting Asynchronous Mode, ie UART
  SPEN = 1;   // Enables Serial Port
  TRISC7 = 1; // As Prescribed in Datasheet
  TRISC6 = 1; // As Prescribed in Datasheet
  CREN = 1;   // Enables Continuous Reception
  TXEN = 1;
}
///////////////////////////////////
////////////FULL DUPLEX////////////
////////////////////////////////////
void UART_Write(uint8_t data)
{
  while (!TRMT)
    ;
  TXREG = data;
}
void newLine()
{
  TXREG = '\r';
}

void UART_Write_String(char *text)
{
  uint16_t i;
  for (i = 0; text[i] != '\0'; i++)
    UART_Write(text[i]);
}

uint8_t UART_Read()
{
  while (!RCIF)
    ; // Wait Untill a Data Frame is Received
  return RCREG;
}

void UART_Read_String(uint8_t *Output, uint16_t length)
{
  uint16_t i;
  for (int i = 0; i < length; i++)
    Output[i] = UART_Read();
}

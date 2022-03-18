subtitle "Microchip MPLAB XC8 C Compiler v2.35 (Free license) build 20211206165544 Og1 "

pagewidth 120

	opt flic

	processor	16F877A
include "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\16f877a.cgen.inc"
getbyte	macro	val,pos
	(((val) >> (8 * pos)) and 0xff)
endm
byte0	macro	val
	(getbyte(val,0))
endm
byte1	macro	val
	(getbyte(val,1))
endm
byte2	macro	val
	(getbyte(val,2))
endm
byte3	macro	val
	(getbyte(val,3))
endm
byte4	macro	val
	(getbyte(val,4))
endm
byte5	macro	val
	(getbyte(val,5))
endm
byte6	macro	val
	(getbyte(val,6))
endm
byte7	macro	val
	(getbyte(val,7))
endm
getword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffff)
endm
word0	macro	val
	(getword(val,0))
endm
word1	macro	val
	(getword(val,2))
endm
word2	macro	val
	(getword(val,4))
endm
word3	macro	val
	(getword(val,6))
endm
gettword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffffff)
endm
tword0	macro	val
	(gettword(val,0))
endm
tword1	macro	val
	(gettword(val,3))
endm
tword2	macro	val
	(gettword(val,6))
endm
getdword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffffffff)
endm
dword0	macro	val
	(getdword(val,0))
endm
dword1	macro	val
	(getdword(val,4))
endm
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
# 55 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
INDF equ 00h ;# 
# 62 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TMR0 equ 01h ;# 
# 69 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PCL equ 02h ;# 
# 76 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
STATUS equ 03h ;# 
# 162 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
FSR equ 04h ;# 
# 169 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PORTA equ 05h ;# 
# 219 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PORTB equ 06h ;# 
# 281 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PORTC equ 07h ;# 
# 343 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PORTD equ 08h ;# 
# 405 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PORTE equ 09h ;# 
# 437 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 457 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
INTCON equ 0Bh ;# 
# 535 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 597 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 637 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 644 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 651 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 658 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
T1CON equ 010h ;# 
# 733 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TMR2 equ 011h ;# 
# 740 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
T2CON equ 012h ;# 
# 811 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
SSPBUF equ 013h ;# 
# 818 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
SSPCON equ 014h ;# 
# 888 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCPR1 equ 015h ;# 
# 895 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCPR1L equ 015h ;# 
# 902 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCPR1H equ 016h ;# 
# 909 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCP1CON equ 017h ;# 
# 967 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
RCSTA equ 018h ;# 
# 1062 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TXREG equ 019h ;# 
# 1069 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1076 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1083 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1090 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1097 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1155 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1162 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1258 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1328 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TRISA equ 085h ;# 
# 1378 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TRISB equ 086h ;# 
# 1440 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TRISC equ 087h ;# 
# 1502 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TRISD equ 088h ;# 
# 1564 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TRISE equ 089h ;# 
# 1621 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1683 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1723 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PCON equ 08Eh ;# 
# 1757 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1819 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PR2 equ 092h ;# 
# 1826 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
SSPADD equ 093h ;# 
# 1833 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 2002 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TXSTA equ 098h ;# 
# 2083 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
SPBRG equ 099h ;# 
# 2090 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2160 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2225 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2232 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2291 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2298 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2305 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2312 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2319 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2364 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
EECON2 equ 018Dh ;# 
# 55 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
INDF equ 00h ;# 
# 62 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TMR0 equ 01h ;# 
# 69 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PCL equ 02h ;# 
# 76 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
STATUS equ 03h ;# 
# 162 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
FSR equ 04h ;# 
# 169 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PORTA equ 05h ;# 
# 219 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PORTB equ 06h ;# 
# 281 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PORTC equ 07h ;# 
# 343 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PORTD equ 08h ;# 
# 405 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PORTE equ 09h ;# 
# 437 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 457 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
INTCON equ 0Bh ;# 
# 535 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 597 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 637 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 644 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 651 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 658 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
T1CON equ 010h ;# 
# 733 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TMR2 equ 011h ;# 
# 740 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
T2CON equ 012h ;# 
# 811 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
SSPBUF equ 013h ;# 
# 818 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
SSPCON equ 014h ;# 
# 888 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCPR1 equ 015h ;# 
# 895 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCPR1L equ 015h ;# 
# 902 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCPR1H equ 016h ;# 
# 909 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCP1CON equ 017h ;# 
# 967 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
RCSTA equ 018h ;# 
# 1062 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TXREG equ 019h ;# 
# 1069 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1076 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1083 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1090 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1097 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1155 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1162 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1258 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1328 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TRISA equ 085h ;# 
# 1378 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TRISB equ 086h ;# 
# 1440 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TRISC equ 087h ;# 
# 1502 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TRISD equ 088h ;# 
# 1564 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TRISE equ 089h ;# 
# 1621 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1683 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1723 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PCON equ 08Eh ;# 
# 1757 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1819 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PR2 equ 092h ;# 
# 1826 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
SSPADD equ 093h ;# 
# 1833 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 2002 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TXSTA equ 098h ;# 
# 2083 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
SPBRG equ 099h ;# 
# 2090 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2160 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2225 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2232 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2291 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2298 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2305 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2312 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2319 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2364 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
EECON2 equ 018Dh ;# 
# 55 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
INDF equ 00h ;# 
# 62 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TMR0 equ 01h ;# 
# 69 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PCL equ 02h ;# 
# 76 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
STATUS equ 03h ;# 
# 162 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
FSR equ 04h ;# 
# 169 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PORTA equ 05h ;# 
# 219 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PORTB equ 06h ;# 
# 281 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PORTC equ 07h ;# 
# 343 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PORTD equ 08h ;# 
# 405 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PORTE equ 09h ;# 
# 437 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 457 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
INTCON equ 0Bh ;# 
# 535 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 597 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 637 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 644 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 651 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 658 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
T1CON equ 010h ;# 
# 733 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TMR2 equ 011h ;# 
# 740 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
T2CON equ 012h ;# 
# 811 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
SSPBUF equ 013h ;# 
# 818 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
SSPCON equ 014h ;# 
# 888 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCPR1 equ 015h ;# 
# 895 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCPR1L equ 015h ;# 
# 902 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCPR1H equ 016h ;# 
# 909 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCP1CON equ 017h ;# 
# 967 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
RCSTA equ 018h ;# 
# 1062 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TXREG equ 019h ;# 
# 1069 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1076 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1083 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1090 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1097 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1155 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1162 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1258 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1328 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TRISA equ 085h ;# 
# 1378 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TRISB equ 086h ;# 
# 1440 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TRISC equ 087h ;# 
# 1502 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TRISD equ 088h ;# 
# 1564 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TRISE equ 089h ;# 
# 1621 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1683 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1723 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PCON equ 08Eh ;# 
# 1757 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1819 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PR2 equ 092h ;# 
# 1826 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
SSPADD equ 093h ;# 
# 1833 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 2002 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TXSTA equ 098h ;# 
# 2083 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
SPBRG equ 099h ;# 
# 2090 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2160 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2225 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2232 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2291 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2298 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2305 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2312 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2319 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2364 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
EECON2 equ 018Dh ;# 
# 55 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
INDF equ 00h ;# 
# 62 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TMR0 equ 01h ;# 
# 69 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PCL equ 02h ;# 
# 76 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
STATUS equ 03h ;# 
# 162 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
FSR equ 04h ;# 
# 169 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PORTA equ 05h ;# 
# 219 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PORTB equ 06h ;# 
# 281 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PORTC equ 07h ;# 
# 343 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PORTD equ 08h ;# 
# 405 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PORTE equ 09h ;# 
# 437 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 457 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
INTCON equ 0Bh ;# 
# 535 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 597 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 637 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 644 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 651 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 658 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
T1CON equ 010h ;# 
# 733 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TMR2 equ 011h ;# 
# 740 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
T2CON equ 012h ;# 
# 811 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
SSPBUF equ 013h ;# 
# 818 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
SSPCON equ 014h ;# 
# 888 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCPR1 equ 015h ;# 
# 895 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCPR1L equ 015h ;# 
# 902 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCPR1H equ 016h ;# 
# 909 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCP1CON equ 017h ;# 
# 967 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
RCSTA equ 018h ;# 
# 1062 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TXREG equ 019h ;# 
# 1069 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1076 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1083 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1090 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1097 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1155 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1162 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1258 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1328 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TRISA equ 085h ;# 
# 1378 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TRISB equ 086h ;# 
# 1440 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TRISC equ 087h ;# 
# 1502 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TRISD equ 088h ;# 
# 1564 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TRISE equ 089h ;# 
# 1621 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1683 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1723 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PCON equ 08Eh ;# 
# 1757 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1819 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PR2 equ 092h ;# 
# 1826 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
SSPADD equ 093h ;# 
# 1833 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 2002 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TXSTA equ 098h ;# 
# 2083 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
SPBRG equ 099h ;# 
# 2090 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2160 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2225 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2232 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2291 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2298 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2305 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2312 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2319 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2364 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
EECON2 equ 018Dh ;# 
# 55 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
INDF equ 00h ;# 
# 62 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TMR0 equ 01h ;# 
# 69 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PCL equ 02h ;# 
# 76 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
STATUS equ 03h ;# 
# 162 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
FSR equ 04h ;# 
# 169 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PORTA equ 05h ;# 
# 219 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PORTB equ 06h ;# 
# 281 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PORTC equ 07h ;# 
# 343 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PORTD equ 08h ;# 
# 405 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PORTE equ 09h ;# 
# 437 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 457 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
INTCON equ 0Bh ;# 
# 535 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 597 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 637 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 644 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 651 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 658 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
T1CON equ 010h ;# 
# 733 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TMR2 equ 011h ;# 
# 740 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
T2CON equ 012h ;# 
# 811 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
SSPBUF equ 013h ;# 
# 818 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
SSPCON equ 014h ;# 
# 888 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCPR1 equ 015h ;# 
# 895 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCPR1L equ 015h ;# 
# 902 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCPR1H equ 016h ;# 
# 909 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCP1CON equ 017h ;# 
# 967 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
RCSTA equ 018h ;# 
# 1062 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TXREG equ 019h ;# 
# 1069 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1076 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1083 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1090 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1097 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1155 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1162 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1258 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1328 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TRISA equ 085h ;# 
# 1378 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TRISB equ 086h ;# 
# 1440 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TRISC equ 087h ;# 
# 1502 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TRISD equ 088h ;# 
# 1564 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TRISE equ 089h ;# 
# 1621 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1683 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1723 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PCON equ 08Eh ;# 
# 1757 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1819 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PR2 equ 092h ;# 
# 1826 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
SSPADD equ 093h ;# 
# 1833 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 2002 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TXSTA equ 098h ;# 
# 2083 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
SPBRG equ 099h ;# 
# 2090 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2160 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2225 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2232 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2291 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2298 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2305 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2312 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2319 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2364 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
EECON2 equ 018Dh ;# 
# 55 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
INDF equ 00h ;# 
# 62 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TMR0 equ 01h ;# 
# 69 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PCL equ 02h ;# 
# 76 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
STATUS equ 03h ;# 
# 162 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
FSR equ 04h ;# 
# 169 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PORTA equ 05h ;# 
# 219 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PORTB equ 06h ;# 
# 281 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PORTC equ 07h ;# 
# 343 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PORTD equ 08h ;# 
# 405 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PORTE equ 09h ;# 
# 437 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 457 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
INTCON equ 0Bh ;# 
# 535 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 597 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 637 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 644 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 651 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 658 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
T1CON equ 010h ;# 
# 733 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TMR2 equ 011h ;# 
# 740 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
T2CON equ 012h ;# 
# 811 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
SSPBUF equ 013h ;# 
# 818 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
SSPCON equ 014h ;# 
# 888 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCPR1 equ 015h ;# 
# 895 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCPR1L equ 015h ;# 
# 902 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCPR1H equ 016h ;# 
# 909 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCP1CON equ 017h ;# 
# 967 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
RCSTA equ 018h ;# 
# 1062 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TXREG equ 019h ;# 
# 1069 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1076 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1083 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1090 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1097 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1155 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1162 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1258 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1328 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TRISA equ 085h ;# 
# 1378 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TRISB equ 086h ;# 
# 1440 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TRISC equ 087h ;# 
# 1502 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TRISD equ 088h ;# 
# 1564 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TRISE equ 089h ;# 
# 1621 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1683 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1723 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PCON equ 08Eh ;# 
# 1757 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1819 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PR2 equ 092h ;# 
# 1826 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
SSPADD equ 093h ;# 
# 1833 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 2002 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TXSTA equ 098h ;# 
# 2083 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
SPBRG equ 099h ;# 
# 2090 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2160 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2225 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2232 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2291 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2298 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2305 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2312 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2319 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2364 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
EECON2 equ 018Dh ;# 
# 55 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
INDF equ 00h ;# 
# 62 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TMR0 equ 01h ;# 
# 69 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PCL equ 02h ;# 
# 76 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
STATUS equ 03h ;# 
# 162 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
FSR equ 04h ;# 
# 169 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PORTA equ 05h ;# 
# 219 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PORTB equ 06h ;# 
# 281 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PORTC equ 07h ;# 
# 343 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PORTD equ 08h ;# 
# 405 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PORTE equ 09h ;# 
# 437 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 457 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
INTCON equ 0Bh ;# 
# 535 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 597 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 637 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 644 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 651 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 658 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
T1CON equ 010h ;# 
# 733 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TMR2 equ 011h ;# 
# 740 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
T2CON equ 012h ;# 
# 811 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
SSPBUF equ 013h ;# 
# 818 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
SSPCON equ 014h ;# 
# 888 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCPR1 equ 015h ;# 
# 895 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCPR1L equ 015h ;# 
# 902 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCPR1H equ 016h ;# 
# 909 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCP1CON equ 017h ;# 
# 967 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
RCSTA equ 018h ;# 
# 1062 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TXREG equ 019h ;# 
# 1069 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1076 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1083 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1090 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1097 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1155 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1162 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1258 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1328 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TRISA equ 085h ;# 
# 1378 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TRISB equ 086h ;# 
# 1440 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TRISC equ 087h ;# 
# 1502 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TRISD equ 088h ;# 
# 1564 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TRISE equ 089h ;# 
# 1621 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1683 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1723 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PCON equ 08Eh ;# 
# 1757 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1819 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PR2 equ 092h ;# 
# 1826 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
SSPADD equ 093h ;# 
# 1833 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 2002 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TXSTA equ 098h ;# 
# 2083 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
SPBRG equ 099h ;# 
# 2090 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2160 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2225 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2232 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2291 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2298 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2305 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2312 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2319 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2364 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
EECON2 equ 018Dh ;# 
# 55 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
INDF equ 00h ;# 
# 62 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TMR0 equ 01h ;# 
# 69 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PCL equ 02h ;# 
# 76 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
STATUS equ 03h ;# 
# 162 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
FSR equ 04h ;# 
# 169 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PORTA equ 05h ;# 
# 219 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PORTB equ 06h ;# 
# 281 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PORTC equ 07h ;# 
# 343 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PORTD equ 08h ;# 
# 405 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PORTE equ 09h ;# 
# 437 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 457 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
INTCON equ 0Bh ;# 
# 535 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 597 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 637 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 644 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 651 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 658 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
T1CON equ 010h ;# 
# 733 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TMR2 equ 011h ;# 
# 740 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
T2CON equ 012h ;# 
# 811 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
SSPBUF equ 013h ;# 
# 818 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
SSPCON equ 014h ;# 
# 888 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCPR1 equ 015h ;# 
# 895 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCPR1L equ 015h ;# 
# 902 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCPR1H equ 016h ;# 
# 909 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCP1CON equ 017h ;# 
# 967 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
RCSTA equ 018h ;# 
# 1062 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TXREG equ 019h ;# 
# 1069 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1076 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1083 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1090 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1097 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1155 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1162 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1258 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1328 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TRISA equ 085h ;# 
# 1378 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TRISB equ 086h ;# 
# 1440 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TRISC equ 087h ;# 
# 1502 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TRISD equ 088h ;# 
# 1564 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TRISE equ 089h ;# 
# 1621 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1683 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1723 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PCON equ 08Eh ;# 
# 1757 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1819 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PR2 equ 092h ;# 
# 1826 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
SSPADD equ 093h ;# 
# 1833 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 2002 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TXSTA equ 098h ;# 
# 2083 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
SPBRG equ 099h ;# 
# 2090 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2160 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2225 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2232 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2291 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2298 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2305 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2312 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2319 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2364 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
EECON2 equ 018Dh ;# 
# 55 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
INDF equ 00h ;# 
# 62 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TMR0 equ 01h ;# 
# 69 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PCL equ 02h ;# 
# 76 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
STATUS equ 03h ;# 
# 162 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
FSR equ 04h ;# 
# 169 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PORTA equ 05h ;# 
# 219 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PORTB equ 06h ;# 
# 281 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PORTC equ 07h ;# 
# 343 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PORTD equ 08h ;# 
# 405 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PORTE equ 09h ;# 
# 437 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 457 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
INTCON equ 0Bh ;# 
# 535 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 597 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 637 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 644 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 651 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 658 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
T1CON equ 010h ;# 
# 733 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TMR2 equ 011h ;# 
# 740 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
T2CON equ 012h ;# 
# 811 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
SSPBUF equ 013h ;# 
# 818 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
SSPCON equ 014h ;# 
# 888 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCPR1 equ 015h ;# 
# 895 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCPR1L equ 015h ;# 
# 902 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCPR1H equ 016h ;# 
# 909 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCP1CON equ 017h ;# 
# 967 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
RCSTA equ 018h ;# 
# 1062 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TXREG equ 019h ;# 
# 1069 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1076 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1083 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1090 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1097 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1155 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1162 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1258 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1328 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TRISA equ 085h ;# 
# 1378 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TRISB equ 086h ;# 
# 1440 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TRISC equ 087h ;# 
# 1502 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TRISD equ 088h ;# 
# 1564 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TRISE equ 089h ;# 
# 1621 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1683 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1723 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PCON equ 08Eh ;# 
# 1757 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1819 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PR2 equ 092h ;# 
# 1826 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
SSPADD equ 093h ;# 
# 1833 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 2002 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TXSTA equ 098h ;# 
# 2083 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
SPBRG equ 099h ;# 
# 2090 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2160 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2225 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2232 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2291 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2298 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2305 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2312 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2319 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2364 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
EECON2 equ 018Dh ;# 
# 55 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
INDF equ 00h ;# 
# 62 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TMR0 equ 01h ;# 
# 69 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PCL equ 02h ;# 
# 76 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
STATUS equ 03h ;# 
# 162 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
FSR equ 04h ;# 
# 169 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PORTA equ 05h ;# 
# 219 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PORTB equ 06h ;# 
# 281 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PORTC equ 07h ;# 
# 343 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PORTD equ 08h ;# 
# 405 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PORTE equ 09h ;# 
# 437 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 457 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
INTCON equ 0Bh ;# 
# 535 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 597 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 637 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 644 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 651 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 658 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
T1CON equ 010h ;# 
# 733 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TMR2 equ 011h ;# 
# 740 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
T2CON equ 012h ;# 
# 811 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
SSPBUF equ 013h ;# 
# 818 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
SSPCON equ 014h ;# 
# 888 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCPR1 equ 015h ;# 
# 895 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCPR1L equ 015h ;# 
# 902 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCPR1H equ 016h ;# 
# 909 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCP1CON equ 017h ;# 
# 967 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
RCSTA equ 018h ;# 
# 1062 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TXREG equ 019h ;# 
# 1069 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1076 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1083 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1090 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1097 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1155 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1162 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1258 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1328 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TRISA equ 085h ;# 
# 1378 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TRISB equ 086h ;# 
# 1440 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TRISC equ 087h ;# 
# 1502 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TRISD equ 088h ;# 
# 1564 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TRISE equ 089h ;# 
# 1621 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1683 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1723 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PCON equ 08Eh ;# 
# 1757 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1819 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PR2 equ 092h ;# 
# 1826 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
SSPADD equ 093h ;# 
# 1833 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 2002 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TXSTA equ 098h ;# 
# 2083 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
SPBRG equ 099h ;# 
# 2090 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2160 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2225 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2232 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2291 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2298 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2305 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2312 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2319 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2364 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
EECON2 equ 018Dh ;# 
	debug_source C
	FNCALL	_main,_Network_begin
	FNCALL	_main,_SPI_initialize
	FNCALL	_main,_Serial_begin
	FNCALL	_main,_Serial_write
	FNCALL	_main,__$_logline_str
	FNCALL	_main,_checkButton
	FNCALL	_main,_internet_process
	FNCALL	_main,_internet_setAddress
	FNCALL	_main,_internet_setChannel
	FNCALL	_main,_internet_setNetworkPipe
	FNCALL	_main,_micros
	FNCALL	_main,_transport_udp_tx
	FNCALL	_main,_wait_init
	FNCALL	_wait_init,_timerInit
	FNCALL	_transport_udp_tx,_internet_tx
	FNCALL	_internet_tx,_internet_relay
	FNCALL	_internet_setChannel,_RF24_setChannel
	FNCALL	_internet_setAddress,_internet_calculateMask
	FNCALL	_internet_setAddress,_internet_setNetworkPipe
	FNCALL	_internet_setNetworkPipe,_RF24_openReadingPipe
	FNCALL	_internet_setNetworkPipe,_memcpy
	FNCALL	_internet_process,_RF24_available
	FNCALL	_internet_process,_RF24_getDynamicPayloadSize
	FNCALL	_internet_process,_RF24_read
	FNCALL	_internet_process,_internet_rx
	FNCALL	_internet_rx,_internet_relay
	FNCALL	_internet_rx,_transport_udp_rx
	FNCALL	_transport_udp_rx,_transport_udp_process
	FNCALL	_transport_udp_process,_Serial_write
	FNCALL	_transport_udp_process,__$_logline_int
	FNCALL	_transport_udp_process,__$_logline_str
	FNCALL	_transport_udp_process,_memcpy
	FNCALL	__$_logline_int,_Serial_write
	FNCALL	__$_logline_int,___awdiv
	FNCALL	__$_logline_int,___awmod
	FNCALL	__$_logline_int,___lbdiv
	FNCALL	_internet_relay,_RF24_openReadingPipe
	FNCALL	_internet_relay,_RF24_openWritingPipe
	FNCALL	_internet_relay,_RF24_startListening
	FNCALL	_internet_relay,_RF24_stopListening
	FNCALL	_internet_relay,_RF24_write
	FNCALL	_internet_relay,_Serial_write
	FNCALL	_internet_relay,__$_logline_str
	FNCALL	_internet_relay,_internet_calculateMask
	FNCALL	_internet_relay,_internet_hasChild
	FNCALL	__$_logline_str,_Serial_write
	FNCALL	_RF24_write,_RF24_flush_tx
	FNCALL	_RF24_write,_RF24_get_status
	FNCALL	_RF24_write,_RF24_write_register
	FNCALL	_RF24_write,_SPI_exchangeByte
	FNCALL	_RF24_stopListening,_RF24_read_register
	FNCALL	_RF24_stopListening,_RF24_write_register
	FNCALL	_RF24_openWritingPipe,_RF24_write_n_register
	FNCALL	_RF24_read,_RF24_read_n_register
	FNCALL	_RF24_read,_RF24_write_register
	FNCALL	_RF24_read_n_register,_SPI_exchangeByte
	FNCALL	_RF24_getDynamicPayloadSize,_RF24_flush_rx
	FNCALL	_RF24_getDynamicPayloadSize,_RF24_read_register
	FNCALL	_RF24_available,_RF24_get_status
	FNCALL	_RF24_get_status,_SPI_exchangeByte
	FNCALL	_checkButton,_micros
	FNCALL	_Serial_begin,___aldiv
	FNCALL	_Network_begin,_RF24_begin
	FNCALL	_Network_begin,_RF24_enableDynamicPayloads
	FNCALL	_Network_begin,_RF24_getPALevel
	FNCALL	_Network_begin,_RF24_openReadingPipe
	FNCALL	_Network_begin,_RF24_setAddressWidth
	FNCALL	_Network_begin,_RF24_setAutoAck
	FNCALL	_Network_begin,_RF24_setCRCLength
	FNCALL	_Network_begin,_RF24_setDataRate
	FNCALL	_Network_begin,_RF24_setPayloadSize
	FNCALL	_Network_begin,_RF24_startListening
	FNCALL	_RF24_startListening,_RF24_read_register
	FNCALL	_RF24_startListening,_RF24_write_register
	FNCALL	_RF24_setCRCLength,_RF24_write_register
	FNCALL	_RF24_setAutoAck,_RF24_write_register
	FNCALL	_RF24_openReadingPipe,_RF24_read_register
	FNCALL	_RF24_openReadingPipe,_RF24_write_n_register
	FNCALL	_RF24_openReadingPipe,_RF24_write_register
	FNCALL	_RF24_write_n_register,_SPI_exchangeByte
	FNCALL	_RF24_getPALevel,_RF24_read_register
	FNCALL	_RF24_enableDynamicPayloads,_RF24_read_register
	FNCALL	_RF24_enableDynamicPayloads,_RF24_write_register
	FNCALL	_RF24_begin,_RF24_flush_rx
	FNCALL	_RF24_begin,_RF24_flush_tx
	FNCALL	_RF24_begin,_RF24_powerUp
	FNCALL	_RF24_begin,_RF24_read_register
	FNCALL	_RF24_begin,_RF24_setAddressWidth
	FNCALL	_RF24_begin,_RF24_setChannel
	FNCALL	_RF24_begin,_RF24_setDataRate
	FNCALL	_RF24_begin,_RF24_setPALevel
	FNCALL	_RF24_begin,_RF24_setPayloadSize
	FNCALL	_RF24_begin,_RF24_setRetries
	FNCALL	_RF24_begin,_RF24_write_register
	FNCALL	_RF24_setRetries,_RF24_write_register
	FNCALL	_RF24_setPayloadSize,_RF24_write_register
	FNCALL	_RF24_setPALevel,_RF24_read_register
	FNCALL	_RF24_setPALevel,_RF24_write_register
	FNCALL	_RF24_setDataRate,_RF24_read_register
	FNCALL	_RF24_setDataRate,_RF24_write_register
	FNCALL	_RF24_setChannel,_RF24_write_register
	FNCALL	_RF24_setAddressWidth,_RF24_write_register
	FNCALL	_RF24_powerUp,_RF24_read_register
	FNCALL	_RF24_powerUp,_RF24_write_register
	FNCALL	_RF24_read_register,_SPI_exchangeByte
	FNCALL	_RF24_flush_tx,_RF24_write_register
	FNCALL	_RF24_flush_rx,_RF24_write_register
	FNCALL	_RF24_write_register,_SPI_exchangeByte
	FNROOT	_main
	FNCALL	_ISR,_timeISR
	FNCALL	intlevel1,_ISR
	global	intlevel1
	FNROOT	intlevel1
	global	_network_pipe
psect	idataBANK1,class=CODE,space=0,delta=2,noexec
global __pidataBANK1
__pidataBANK1:
	file	"F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/app/src/main.c"
	line	65

;initializer for _network_pipe
	retlw	low(0)
	retlw	0FCh
	retlw	0B0h
	retlw	0E8h
	retlw	0F5h
psect	stringtext,class=STRCODE,delta=2,reloc=256,noexec
global __pstringtext
__pstringtext:
stringtab:
	global    __stringtab
__stringtab:
;	String table - string pointers are 2 bytes each
	btfsc	(btemp+1),7
	ljmp	stringcode
	bcf	status,7
	btfsc	(btemp+1),0
	bsf	status,7
	movf	indf,w
	incf fsr
skipnz
incf btemp+1
	return
stringcode:
	movf btemp+1,w
andlw 7Fh
movwf	pclath
	movf	fsr,w
incf fsr
skipnz
incf btemp+1
	movwf pc
	global __stringbase
__stringbase:
	global    __end_of__stringtab
__end_of__stringtab:
	file	"F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/logline.c"
	line	3
_LOGLINE_CONVERSION_TABLE:
	retlw	030h
	retlw	031h
	retlw	032h
	retlw	033h
	retlw	034h
	retlw	035h
	retlw	036h
	retlw	037h
	retlw	038h
	retlw	039h
	retlw	041h
	retlw	042h
	retlw	043h
	retlw	044h
	retlw	045h
	retlw	046h
	global __end_of_LOGLINE_CONVERSION_TABLE
__end_of_LOGLINE_CONVERSION_TABLE:
psect	stringtext
	file	"F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/include\internet.h"
	line	14
_BROADCAST_PIPE:
	retlw	0F9h
	retlw	036h
	retlw	0CDh
	retlw	0ACh
	retlw	0E7h
	global __end_of_BROADCAST_PIPE
__end_of_BROADCAST_PIPE:
psect	stringtext
	file	"F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/include\logline.h"
	line	17
_LOGLINE_FAIL:
	retlw	046h
	retlw	041h
	retlw	049h
	retlw	04Ch
	retlw	low(0)
	global __end_of_LOGLINE_FAIL
__end_of_LOGLINE_FAIL:
psect	stringtext
	file	"F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/include\logline.h"
	line	16
_LOGLINE_OK:
	retlw	04Fh
	retlw	04Bh
	retlw	low(0)
	global __end_of_LOGLINE_OK
__end_of_LOGLINE_OK:
psect	stringtext
	file	"F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/app/src/main.c"
	line	116
main@packet:
	retlw	low(_buffer_tx|((0x0)<<8))
	global __end_ofmain@packet
__end_ofmain@packet:
	global	_BASE_PIPE
psect	stringtext
	file	"F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/include\internet.h"
	line	13
_BASE_PIPE:
	retlw	059h
	retlw	0ECh
	retlw	0ADh
	retlw	0FCh
	retlw	084h
	global __end_of_BASE_PIPE
__end_of_BASE_PIPE:
	global	_BASE_PIPE
	global	_RF24_attr_config
	global	_node
	global	__microsMSB
	global	_startTime
	global	_stopTime
	global	_RF24_attr_status
	global	_networkInfo
	global	_btn1
	global	_prop
	global	_buffer_rx
	global	_buffer_tx
	global	_TMR1
_TMR1	set	0xE
	global	_TXREG
_TXREG	set	0x19
	global	_SSPBUF
_SSPBUF	set	0x13
	global	_SSPCON
_SSPCON	set	0x14
	global	_CREN
_CREN	set	0xC4
	global	_SPEN
_SPEN	set	0xC7
	global	_TMR1IF
_TMR1IF	set	0x60
	global	_TMR1ON
_TMR1ON	set	0x80
	global	_T1CKPS0
_T1CKPS0	set	0x84
	global	_T1CKPS1
_T1CKPS1	set	0x85
	global	_T1OSCEN
_T1OSCEN	set	0x83
	global	_TMR1CS
_TMR1CS	set	0x81
	global	_GIE
_GIE	set	0x5F
	global	_PEIE
_PEIE	set	0x5E
	global	_SSPIF
_SSPIF	set	0x63
	global	_SSPEN
_SSPEN	set	0xA5
	global	_RD2
_RD2	set	0x42
	global	_RD3
_RD3	set	0x43
	global	_RD0
_RD0	set	0x40
	global	_RD1
_RD1	set	0x41
	global	_SPBRG
_SPBRG	set	0x99
	global	_SSPSTAT
_SSPSTAT	set	0x94
	global	_TRISB
_TRISB	set	0x86
	global	_TRMT
_TRMT	set	0x4C1
	global	_TXEN
_TXEN	set	0x4C5
	global	_TRISC6
_TRISC6	set	0x43E
	global	_TRISC7
_TRISC7	set	0x43F
	global	_SYNC
_SYNC	set	0x4C4
	global	_BRGH
_BRGH	set	0x4C2
	global	_TMR1IE
_TMR1IE	set	0x460
	global	_TRISC3
_TRISC3	set	0x43B
	global	_TRISC4
_TRISC4	set	0x43C
	global	_TRISC5
_TRISC5	set	0x43D
	global	_TRISD3
_TRISD3	set	0x443
	global	_TRISD2
_TRISD2	set	0x442
	global	_TRISD0
_TRISD0	set	0x440
	global	_nRBPU
_nRBPU	set	0x40F
	global	_TRISD1
_TRISD1	set	0x441
	
STR_1:	
	retlw	61	;'='
	retlw	61	;'='
	retlw	61	;'='
	retlw	61	;'='
	retlw	61	;'='
	retlw	61	;'='
	retlw	61	;'='
	retlw	61	;'='
	retlw	61	;'='
	retlw	61	;'='
	retlw	61	;'='
	retlw	61	;'='
	retlw	61	;'='
	retlw	61	;'='
	retlw	61	;'='
	retlw	61	;'='
	retlw	83	;'S'
	retlw	84	;'T'
	retlw	65	;'A'
	retlw	82	;'R'
	retlw	84	;'T'
	retlw	32	;' '
	retlw	61	;'='
	retlw	61	;'='
	retlw	61	;'='
	retlw	61	;'='
	retlw	61	;'='
	retlw	61	;'='
	retlw	61	;'='
	retlw	61	;'='
	retlw	61	;'='
	retlw	61	;'='
	retlw	61	;'='
	retlw	61	;'='
	retlw	61	;'='
	retlw	61	;'='
	retlw	61	;'='
	retlw	61	;'='
	retlw	61	;'='
	retlw	61	;'='
	retlw	61	;'='
	retlw	61	;'='
	retlw	61	;'='
	retlw	61	;'='
	retlw	61	;'='
	retlw	61	;'='
	retlw	61	;'='
	retlw	61	;'='
	retlw	61	;'='
	retlw	61	;'='
	retlw	61	;'='
	retlw	0
psect	stringtext
	
STR_27:	
	retlw	61	;'='
	retlw	61	;'='
	retlw	61	;'='
	retlw	61	;'='
	retlw	69	;'E'
	retlw	78	;'N'
	retlw	68	;'D'
	retlw	32	;' '
	retlw	79	;'O'
	retlw	70	;'F'
	retlw	32	;' '
	retlw	68	;'D'
	retlw	69	;'E'
	retlw	84	;'T'
	retlw	65	;'A'
	retlw	73	;'I'
	retlw	76	;'L'
	retlw	83	;'S'
	retlw	61	;'='
	retlw	61	;'='
	retlw	61	;'='
	retlw	61	;'='
	retlw	0
psect	stringtext
	
STR_10:	
	retlw	61	;'='
	retlw	61	;'='
	retlw	61	;'='
	retlw	83	;'S'
	retlw	84	;'T'
	retlw	65	;'A'
	retlw	82	;'R'
	retlw	84	;'T'
	retlw	32	;' '
	retlw	79	;'O'
	retlw	70	;'F'
	retlw	32	;' '
	retlw	68	;'D'
	retlw	69	;'E'
	retlw	84	;'T'
	retlw	65	;'A'
	retlw	73	;'I'
	retlw	76	;'L'
	retlw	83	;'S'
	retlw	61	;'='
	retlw	61	;'='
	retlw	61	;'='
	retlw	0
psect	stringtext
	
STR_3:	
	retlw	83	;'S'
	retlw	119	;'w'
	retlw	105	;'i'
	retlw	116	;'t'
	retlw	99	;'c'
	retlw	104	;'h'
	retlw	32	;' '
	retlw	78	;'N'
	retlw	111	;'o'
	retlw	116	;'t'
	retlw	32	;' '
	retlw	112	;'p'
	retlw	114	;'r'
	retlw	101	;'e'
	retlw	115	;'s'
	retlw	115	;'s'
	retlw	101	;'e'
	retlw	100	;'d'
	retlw	0
psect	stringtext
	
STR_5:	
	retlw	82	;'R'
	retlw	101	;'e'
	retlw	99	;'c'
	retlw	105	;'i'
	retlw	118	;'v'
	retlw	101	;'e'
	retlw	100	;'d'
	retlw	32	;' '
	retlw	68	;'D'
	retlw	97	;'a'
	retlw	116	;'t'
	retlw	97	;'a'
	retlw	32	;' '
	retlw	61	;'='
	retlw	0
psect	stringtext
	
STR_2:	
	retlw	83	;'S'
	retlw	119	;'w'
	retlw	105	;'i'
	retlw	116	;'t'
	retlw	99	;'c'
	retlw	104	;'h'
	retlw	32	;' '
	retlw	112	;'p'
	retlw	114	;'r'
	retlw	101	;'e'
	retlw	115	;'s'
	retlw	115	;'s'
	retlw	101	;'e'
	retlw	100	;'d'
	retlw	0
psect	stringtext
	
STR_4:	
	retlw	82	;'R'
	retlw	101	;'e'
	retlw	99	;'c'
	retlw	105	;'i'
	retlw	118	;'v'
	retlw	101	;'e'
	retlw	100	;'d'
	retlw	32	;' '
	retlw	68	;'D'
	retlw	97	;'a'
	retlw	116	;'t'
	retlw	97	;'a'
	retlw	0
psect	stringtext
	
STR_15:	
	retlw	83	;'S'
	retlw	69	;'E'
	retlw	84	;'T'
	retlw	85	;'U'
	retlw	80	;'P'
	retlw	95	;'_'
	retlw	82	;'R'
	retlw	69	;'E'
	retlw	84	;'T'
	retlw	82	;'R'
	retlw	0
psect	stringtext
	
STR_19:	
	retlw	79	;'O'
	retlw	66	;'B'
	retlw	83	;'S'
	retlw	69	;'E'
	retlw	82	;'R'
	retlw	86	;'V'
	retlw	69	;'E'
	retlw	95	;'_'
	retlw	84	;'T'
	retlw	88	;'X'
	retlw	0
psect	stringtext
	
STR_13:	
	retlw	69	;'E'
	retlw	78	;'N'
	retlw	95	;'_'
	retlw	82	;'R'
	retlw	88	;'X'
	retlw	65	;'A'
	retlw	68	;'D'
	retlw	68	;'D'
	retlw	82	;'R'
	retlw	0
psect	stringtext
	
STR_9:	
	retlw	112	;'p'
	retlw	97	;'a'
	retlw	121	;'y'
	retlw	108	;'l'
	retlw	111	;'o'
	retlw	97	;'a'
	retlw	100	;'d'
	retlw	32	;' '
	retlw	61	;'='
	retlw	0
psect	stringtext
	
STR_17:	
	retlw	82	;'R'
	retlw	70	;'F'
	retlw	95	;'_'
	retlw	83	;'S'
	retlw	69	;'E'
	retlw	84	;'T'
	retlw	85	;'U'
	retlw	80	;'P'
	retlw	0
psect	stringtext
	
STR_14:	
	retlw	83	;'S'
	retlw	69	;'E'
	retlw	84	;'T'
	retlw	85	;'U'
	retlw	80	;'P'
	retlw	95	;'_'
	retlw	65	;'A'
	retlw	87	;'W'
	retlw	0
psect	stringtext
	
STR_11:	
	retlw	67	;'C'
	retlw	79	;'O'
	retlw	78	;'N'
	retlw	70	;'F'
	retlw	73	;'I'
	retlw	71	;'G'
	retlw	0
psect	stringtext
	
STR_18:	
	retlw	83	;'S'
	retlw	84	;'T'
	retlw	65	;'A'
	retlw	84	;'T'
	retlw	85	;'U'
	retlw	83	;'S'
	retlw	0
psect	stringtext
	
STR_6:	
	retlw	100	;'d'
	retlw	97	;'a'
	retlw	116	;'t'
	retlw	97	;'a'
	retlw	32	;' '
	retlw	61	;'='
	retlw	0
psect	stringtext
	
STR_20:	
	retlw	82	;'R'
	retlw	88	;'X'
	retlw	95	;'_'
	retlw	80	;'P'
	retlw	48	;'0'
	retlw	0
psect	stringtext
	
STR_21:	
	retlw	82	;'R'
	retlw	88	;'X'
	retlw	95	;'_'
	retlw	80	;'P'
	retlw	49	;'1'
	retlw	0
psect	stringtext
	
STR_22:	
	retlw	82	;'R'
	retlw	88	;'X'
	retlw	95	;'_'
	retlw	80	;'P'
	retlw	50	;'2'
	retlw	0
psect	stringtext
	
STR_23:	
	retlw	82	;'R'
	retlw	88	;'X'
	retlw	95	;'_'
	retlw	80	;'P'
	retlw	51	;'3'
	retlw	0
psect	stringtext
	
STR_24:	
	retlw	82	;'R'
	retlw	88	;'X'
	retlw	95	;'_'
	retlw	80	;'P'
	retlw	52	;'4'
	retlw	0
psect	stringtext
	
STR_25:	
	retlw	82	;'R'
	retlw	88	;'X'
	retlw	95	;'_'
	retlw	80	;'P'
	retlw	53	;'5'
	retlw	0
psect	stringtext
	
STR_12:	
	retlw	69	;'E'
	retlw	78	;'N'
	retlw	95	;'_'
	retlw	65	;'A'
	retlw	65	;'A'
	retlw	0
psect	stringtext
	
STR_16:	
	retlw	82	;'R'
	retlw	70	;'F'
	retlw	95	;'_'
	retlw	67	;'C'
	retlw	72	;'H'
	retlw	0
psect	stringtext
	
STR_8:	
	retlw	118	;'v'
	retlw	97	;'a'
	retlw	108	;'l'
	retlw	117	;'u'
	retlw	101	;'e'
	retlw	0
psect	stringtext
	
STR_7:	
	retlw	105	;'i'
	retlw	100	;'d'
	retlw	0
psect	stringtext
STR_26	equ	STR_19+8
; #config settings
	config pad_punits      = on
	config apply_mask      = off
	config ignore_cmsgs    = off
	config default_configs = off
	config default_idlocs  = off
	config FOSC = "HS"
	config WDTE = "OFF"
	config PWRTE = "OFF"
	config BOREN = "ON"
	config LVP = "OFF"
	config CPD = "OFF"
	config WRT = "OFF"
	config CP = "OFF"
	file	"app.s"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMMON,class=COMMON,space=1,noexec
global __pbssCOMMON
__pbssCOMMON:
_RF24_attr_config:
       ds      1

psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_node:
       ds      5

__microsMSB:
       ds      4

_startTime:
       ds      4

_stopTime:
       ds      4

_RF24_attr_status:
       ds      1

_networkInfo:
       ds      6

_btn1:
       ds      5

_prop:
       ds      2

psect	bssBANK1,class=BANK1,space=1,noexec
global __pbssBANK1
__pbssBANK1:
_buffer_rx:
       ds      32

_buffer_tx:
       ds      32

psect	dataBANK1,class=BANK1,space=1,noexec
global __pdataBANK1
__pdataBANK1:
	file	"F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/app/src/main.c"
	line	65
_network_pipe:
       ds      5

	file	"app.s"
	line	#
; Initialize objects allocated to BANK1
	global __pidataBANK1
psect cinit,class=CODE,delta=2,merge=1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	fcall	__pidataBANK1+0		;fetch initializer
	movwf	__pdataBANK1+0&07fh		
	fcall	__pidataBANK1+1		;fetch initializer
	movwf	__pdataBANK1+1&07fh		
	fcall	__pidataBANK1+2		;fetch initializer
	movwf	__pdataBANK1+2&07fh		
	fcall	__pidataBANK1+3		;fetch initializer
	movwf	__pdataBANK1+3&07fh		
	fcall	__pidataBANK1+4		;fetch initializer
	movwf	__pdataBANK1+4&07fh		
	line	#
psect clrtext,class=CODE,delta=2
global clear_ram0
;	Called with FSR containing the base address, and
;	W with the last address+1
clear_ram0:
	clrwdt			;clear the watchdog before getting into this loop
clrloop0:
	clrf	indf		;clear RAM location pointed to by FSR
	incf	fsr,f		;increment pointer
	xorwf	fsr,w		;XOR with final address
	btfsc	status,2	;have we reached the end yet?
	retlw	0		;all done for this memory range, return
	xorwf	fsr,w		;XOR again to restore value
	goto	clrloop0		;do the next byte

; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2,merge=1
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK1)
	movwf	fsr
	movlw	low((__pbssBANK1)+040h)
	fcall	clear_ram0
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+01Fh)
	fcall	clear_ram0
; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssCOMMON)+0)&07Fh
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_wait_init:	; 1 bytes @ 0x0
?_SPI_initialize:	; 1 bytes @ 0x0
?_Network_begin:	; 1 bytes @ 0x0
?_internet_setChannel:	; 1 bytes @ 0x0
?_internet_setNetworkPipe:	; 1 bytes @ 0x0
?_internet_setAddress:	; 1 bytes @ 0x0
?_Serial_write:	; 1 bytes @ 0x0
?_internet_process:	; 1 bytes @ 0x0
?__$_logline_int:	; 1 bytes @ 0x0
?_timeISR:	; 1 bytes @ 0x0
??_timeISR:	; 1 bytes @ 0x0
?_RF24_setChannel:	; 1 bytes @ 0x0
?_RF24_getDynamicPayloadSize:	; 1 bytes @ 0x0
?_RF24_available:	; 1 bytes @ 0x0
?_internet_calculateMask:	; 1 bytes @ 0x0
?_internet_hasChild:	; 1 bytes @ 0x0
?_RF24_openWritingPipe:	; 1 bytes @ 0x0
?_RF24_stopListening:	; 1 bytes @ 0x0
?_RF24_startListening:	; 1 bytes @ 0x0
?_RF24_begin:	; 1 bytes @ 0x0
?_RF24_setAddressWidth:	; 1 bytes @ 0x0
?_RF24_enableDynamicPayloads:	; 1 bytes @ 0x0
?_RF24_setDataRate:	; 1 bytes @ 0x0
?_RF24_setCRCLength:	; 1 bytes @ 0x0
?_RF24_setAutoAck:	; 1 bytes @ 0x0
?_RF24_setPayloadSize:	; 1 bytes @ 0x0
?_SPI_exchangeByte:	; 1 bytes @ 0x0
?_RF24_setPALevel:	; 1 bytes @ 0x0
?_RF24_flush_rx:	; 1 bytes @ 0x0
?_RF24_flush_tx:	; 1 bytes @ 0x0
?_RF24_powerUp:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
?_ISR:	; 1 bytes @ 0x0
??_ISR:	; 1 bytes @ 0x0
?_RF24_read_register:	; 1 bytes @ 0x0
?_RF24_get_status:	; 1 bytes @ 0x0
?_timerInit:	; 1 bytes @ 0x0
	ds	2
??_SPI_initialize:	; 1 bytes @ 0x2
??_Serial_write:	; 1 bytes @ 0x2
?_memcpy:	; 1 bytes @ 0x2
??_internet_calculateMask:	; 1 bytes @ 0x2
??_internet_hasChild:	; 1 bytes @ 0x2
??_SPI_exchangeByte:	; 1 bytes @ 0x2
??_timerInit:	; 1 bytes @ 0x2
?___lbdiv:	; 1 bytes @ 0x2
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x2
	global	?_micros
?_micros:	; 4 bytes @ 0x2
	global	?___aldiv
?___aldiv:	; 4 bytes @ 0x2
	global	internet_calculateMask@address
internet_calculateMask@address:	; 1 bytes @ 0x2
	global	SPI_exchangeByte@byte
SPI_exchangeByte@byte:	; 1 bytes @ 0x2
	global	Serial_write@data
Serial_write@data:	; 1 bytes @ 0x2
	global	___lbdiv@divisor
___lbdiv@divisor:	; 1 bytes @ 0x2
	global	memcpy@s1
memcpy@s1:	; 1 bytes @ 0x2
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x2
	global	___aldiv@divisor
___aldiv@divisor:	; 4 bytes @ 0x2
	ds	1
?__$_logline_str:	; 1 bytes @ 0x3
?_RF24_read_n_register:	; 1 bytes @ 0x3
??_RF24_read_register:	; 1 bytes @ 0x3
?_RF24_write_n_register:	; 1 bytes @ 0x3
??_RF24_get_status:	; 1 bytes @ 0x3
??___lbdiv:	; 1 bytes @ 0x3
	global	internet_calculateMask@mask
internet_calculateMask@mask:	; 1 bytes @ 0x3
	global	internet_hasChild@address
internet_hasChild@address:	; 1 bytes @ 0x3
	global	RF24_read_n_register@buf
RF24_read_n_register@buf:	; 1 bytes @ 0x3
	global	timerInit@mhz
timerInit@mhz:	; 1 bytes @ 0x3
	global	RF24_write_n_register@buffer
RF24_write_n_register@buffer:	; 2 bytes @ 0x3
	global	__$_logline_str@string
__$_logline_str@string:	; 2 bytes @ 0x3
	global	memcpy@n
memcpy@n:	; 2 bytes @ 0x3
	ds	1
??_RF24_available:	; 1 bytes @ 0x4
	global	RF24_read_n_register@len
RF24_read_n_register@len:	; 1 bytes @ 0x4
	global	RF24_read_register@mnemonic_addr
RF24_read_register@mnemonic_addr:	; 1 bytes @ 0x4
	global	timerInit@prescaler
timerInit@prescaler:	; 1 bytes @ 0x4
	global	___lbdiv@dividend
___lbdiv@dividend:	; 1 bytes @ 0x4
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x4
	ds	1
??_wait_init:	; 1 bytes @ 0x5
??__$_logline_str:	; 1 bytes @ 0x5
??_memcpy:	; 1 bytes @ 0x5
??_RF24_read_n_register:	; 1 bytes @ 0x5
	global	RF24_read_register@result
RF24_read_register@result:	; 1 bytes @ 0x5
	global	RF24_write_n_register@length
RF24_write_n_register@length:	; 1 bytes @ 0x5
	global	wait_init@megaHertez
wait_init@megaHertez:	; 1 bytes @ 0x5
	global	___lbdiv@counter
___lbdiv@counter:	; 1 bytes @ 0x5
	ds	1
??_micros:	; 1 bytes @ 0x6
	global	?_RF24_getPALevel
?_RF24_getPALevel:	; 1 bytes @ 0x6
??_RF24_write_n_register:	; 1 bytes @ 0x6
?_RF24_write_register:	; 1 bytes @ 0x6
??___awdiv:	; 1 bytes @ 0x6
	global	RF24_read_n_register@mnemonic_addr
RF24_read_n_register@mnemonic_addr:	; 1 bytes @ 0x6
	global	RF24_write_register@value
RF24_write_register@value:	; 1 bytes @ 0x6
	global	RF24_available@pipe
RF24_available@pipe:	; 1 bytes @ 0x6
	global	__$_logline_str@limit
__$_logline_str@limit:	; 1 bytes @ 0x6
	global	___lbdiv@quotient
___lbdiv@quotient:	; 1 bytes @ 0x6
	global	memcpy@tmp
memcpy@tmp:	; 1 bytes @ 0x6
	global	___aldiv@dividend
___aldiv@dividend:	; 4 bytes @ 0x6
	ds	1
??_RF24_getPALevel:	; 1 bytes @ 0x7
??_RF24_write_register:	; 1 bytes @ 0x7
	global	?___awmod
?___awmod:	; 2 bytes @ 0x7
	global	RF24_write_n_register@mnemonic_addr
RF24_write_n_register@mnemonic_addr:	; 1 bytes @ 0x7
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x7
	global	memcpy@d
memcpy@d:	; 1 bytes @ 0x7
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x7
	ds	1
??_RF24_openWritingPipe:	; 1 bytes @ 0x8
	global	RF24_write_register@mnemonic_addr
RF24_write_register@mnemonic_addr:	; 1 bytes @ 0x8
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x8
	global	memcpy@s
memcpy@s:	; 1 bytes @ 0x8
	ds	1
??_RF24_setChannel:	; 1 bytes @ 0x9
?_RF24_read:	; 1 bytes @ 0x9
?_RF24_openReadingPipe:	; 1 bytes @ 0x9
??_RF24_stopListening:	; 1 bytes @ 0x9
??_RF24_startListening:	; 1 bytes @ 0x9
??_RF24_setAddressWidth:	; 1 bytes @ 0x9
??_RF24_enableDynamicPayloads:	; 1 bytes @ 0x9
??_RF24_setDataRate:	; 1 bytes @ 0x9
??_RF24_setCRCLength:	; 1 bytes @ 0x9
??_RF24_setAutoAck:	; 1 bytes @ 0x9
??_RF24_setPayloadSize:	; 1 bytes @ 0x9
?_RF24_setRetries:	; 1 bytes @ 0x9
??_RF24_setPALevel:	; 1 bytes @ 0x9
??_RF24_flush_rx:	; 1 bytes @ 0x9
??_RF24_flush_tx:	; 1 bytes @ 0x9
??_RF24_powerUp:	; 1 bytes @ 0x9
	global	RF24_read@len
RF24_read@len:	; 1 bytes @ 0x9
	global	RF24_openWritingPipe@address
RF24_openWritingPipe@address:	; 1 bytes @ 0x9
	global	RF24_setRetries@count
RF24_setRetries@count:	; 1 bytes @ 0x9
	global	memcpy@d1
memcpy@d1:	; 1 bytes @ 0x9
	global	RF24_openReadingPipe@address
RF24_openReadingPipe@address:	; 2 bytes @ 0x9
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x9
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x9
	ds	1
??_RF24_write:	; 1 bytes @ 0xA
?_checkButton:	; 1 bytes @ 0xA
??___aldiv:	; 1 bytes @ 0xA
	global	checkButton@pinState
checkButton@pinState:	; 1 bytes @ 0xA
	global	RF24_setPayloadSize@size
RF24_setPayloadSize@size:	; 1 bytes @ 0xA
	global	RF24_getDynamicPayloadSize@result
RF24_getDynamicPayloadSize@result:	; 1 bytes @ 0xA
	global	RF24_read@buf
RF24_read@buf:	; 1 bytes @ 0xA
	global	RF24_setAutoAck@enable
RF24_setAutoAck@enable:	; 1 bytes @ 0xA
	global	RF24_setCRCLength@length
RF24_setCRCLength@length:	; 1 bytes @ 0xA
	global	RF24_setChannel@channel
RF24_setChannel@channel:	; 1 bytes @ 0xA
	global	RF24_setRetries@delay
RF24_setRetries@delay:	; 1 bytes @ 0xA
	global	RF24_setAddressWidth@w
RF24_setAddressWidth@w:	; 1 bytes @ 0xA
	ds	1
??_internet_setChannel:	; 1 bytes @ 0xB
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
??_RF24_getDynamicPayloadSize:	; 1 bytes @ 0x0
??_RF24_read:	; 1 bytes @ 0x0
??_RF24_openReadingPipe:	; 1 bytes @ 0x0
?_RF24_write:	; 1 bytes @ 0x0
??_RF24_setRetries:	; 1 bytes @ 0x0
??_checkButton:	; 1 bytes @ 0x0
??___awmod:	; 1 bytes @ 0x0
	global	internet_setChannel@channel
internet_setChannel@channel:	; 1 bytes @ 0x0
	global	RF24_setPALevel@setup
RF24_setPALevel@setup:	; 1 bytes @ 0x0
	global	RF24_write@len
RF24_write@len:	; 1 bytes @ 0x0
	global	RF24_setDataRate@speed
RF24_setDataRate@speed:	; 1 bytes @ 0x0
	global	___aldiv@counter
___aldiv@counter:	; 1 bytes @ 0x0
	ds	1
	global	_RF24_setPALevel$675
_RF24_setPALevel$675:	; 1 bytes @ 0x1
	global	RF24_write@buf
RF24_write@buf:	; 1 bytes @ 0x1
	global	RF24_setDataRate@setup
RF24_setDataRate@setup:	; 1 bytes @ 0x1
	global	___aldiv@sign
___aldiv@sign:	; 1 bytes @ 0x1
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x1
	ds	1
	global	RF24_setPALevel@level
RF24_setPALevel@level:	; 1 bytes @ 0x2
	global	RF24_openReadingPipe@child
RF24_openReadingPipe@child:	; 1 bytes @ 0x2
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x2
	global	___aldiv@quotient
___aldiv@quotient:	; 4 bytes @ 0x2
	ds	1
??_internet_setNetworkPipe:	; 1 bytes @ 0x3
??__$_logline_int:	; 1 bytes @ 0x3
?_internet_relay:	; 1 bytes @ 0x3
??_RF24_begin:	; 1 bytes @ 0x3
	global	internet_relay@size
internet_relay@size:	; 1 bytes @ 0x3
	ds	1
??_internet_relay:	; 1 bytes @ 0x4
	global	_checkButton$149
_checkButton$149:	; 1 bytes @ 0x4
	global	internet_setNetworkPipe@pipe
internet_setNetworkPipe@pipe:	; 1 bytes @ 0x4
	ds	1
??_internet_setAddress:	; 1 bytes @ 0x5
	global	checkButton@isPressed
checkButton@isPressed:	; 1 bytes @ 0x5
	global	internet_relay@dstMask
internet_relay@dstMask:	; 1 bytes @ 0x5
	ds	1
?_Serial_begin:	; 1 bytes @ 0x6
??_Network_begin:	; 1 bytes @ 0x6
	global	checkButton@btn
checkButton@btn:	; 1 bytes @ 0x6
	global	internet_relay@packetHeader
internet_relay@packetHeader:	; 1 bytes @ 0x6
	global	__$_logline_int$871
__$_logline_int$871:	; 2 bytes @ 0x6
	global	Serial_begin@baudrate
Serial_begin@baudrate:	; 4 bytes @ 0x6
	ds	1
	global	internet_relay@payload
internet_relay@payload:	; 1 bytes @ 0x7
	global	internet_setAddress@address
internet_setAddress@address:	; 1 bytes @ 0x7
	ds	1
?_internet_tx:	; 1 bytes @ 0x8
	global	internet_tx@size
internet_tx@size:	; 1 bytes @ 0x8
	global	__$_logline_int$872
__$_logline_int$872:	; 2 bytes @ 0x8
	ds	1
??_internet_tx:	; 1 bytes @ 0x9
	ds	1
??_Serial_begin:	; 1 bytes @ 0xA
	global	internet_tx@packetHeader
internet_tx@packetHeader:	; 1 bytes @ 0xA
	global	__$_logline_int@v
__$_logline_int@v:	; 1 bytes @ 0xA
	ds	1
	global	internet_tx@payload
internet_tx@payload:	; 1 bytes @ 0xB
	global	__$_logline_int@t
__$_logline_int@t:	; 1 bytes @ 0xB
	ds	1
?_transport_udp_tx:	; 1 bytes @ 0xC
?_transport_udp_process:	; 1 bytes @ 0xC
	global	transport_udp_process@size
transport_udp_process@size:	; 1 bytes @ 0xC
	global	transport_udp_tx@size
transport_udp_tx@size:	; 1 bytes @ 0xC
	ds	1
	global	transport_udp_process@port
transport_udp_process@port:	; 1 bytes @ 0xD
	global	transport_udp_tx@destination
transport_udp_tx@destination:	; 1 bytes @ 0xD
	ds	1
??_transport_udp_process:	; 1 bytes @ 0xE
	global	transport_udp_tx@sourcePort
transport_udp_tx@sourcePort:	; 1 bytes @ 0xE
	ds	1
	global	transport_udp_process@count
transport_udp_process@count:	; 1 bytes @ 0xF
	global	transport_udp_tx@destinationPort
transport_udp_tx@destinationPort:	; 1 bytes @ 0xF
	ds	1
??_transport_udp_tx:	; 1 bytes @ 0x10
	global	transport_udp_process@payload
transport_udp_process@payload:	; 1 bytes @ 0x10
	ds	1
	global	transport_udp_process@packet
transport_udp_process@packet:	; 1 bytes @ 0x11
	global	transport_udp_tx@payload
transport_udp_tx@payload:	; 1 bytes @ 0x11
	ds	1
	global	transport_udp_process@ppnt
transport_udp_process@ppnt:	; 1 bytes @ 0x12
	global	transport_udp_tx@packetHeader
transport_udp_tx@packetHeader:	; 1 bytes @ 0x12
	ds	1
?_transport_udp_rx:	; 1 bytes @ 0x13
	global	transport_udp_rx@size
transport_udp_rx@size:	; 1 bytes @ 0x13
	ds	1
??_transport_udp_rx:	; 1 bytes @ 0x14
	ds	2
	global	transport_udp_rx@packetHeader
transport_udp_rx@packetHeader:	; 1 bytes @ 0x16
	global	Serial_begin@x
Serial_begin@x:	; 2 bytes @ 0x16
	ds	1
	global	transport_udp_rx@payload
transport_udp_rx@payload:	; 1 bytes @ 0x17
	ds	1
?_internet_rx:	; 1 bytes @ 0x18
	global	internet_rx@size
internet_rx@size:	; 1 bytes @ 0x18
	ds	1
??_internet_rx:	; 1 bytes @ 0x19
	ds	2
	global	internet_rx@packetHeader
internet_rx@packetHeader:	; 1 bytes @ 0x1B
	ds	1
	global	internet_rx@payload
internet_rx@payload:	; 1 bytes @ 0x1C
	ds	1
??_internet_process:	; 1 bytes @ 0x1D
	ds	1
	global	internet_process@size
internet_process@size:	; 1 bytes @ 0x1E
	ds	1
??_main:	; 1 bytes @ 0x1F
	ds	4
	global	main@var1
main@var1:	; 1 bytes @ 0x23
	ds	1
;!
;!Data Sizes:
;!    Strings     298
;!    Constant    35
;!    Data        5
;!    BSS         96
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14     11      12
;!    BANK0            80     36      67
;!    BANK1            80      0      69
;!    BANK3            96      0       0
;!    BANK2            96      0       0

;!
;!Pointer List with Targets:
;!
;!    memcpy@d1	PTR void  size(1) Largest target is 32
;!		 -> networkInfo(BANK0[6]), buffer_tx(BANK1[32]), 
;!
;!    memcpy@d	PTR unsigned char  size(1) Largest target is 32
;!		 -> networkInfo(BANK0[6]), buffer_tx(BANK1[32]), 
;!
;!    memcpy@s1	PTR const void  size(1) Largest target is 6
;!		 -> networkInfo(BANK0[6]), network_pipe(BANK1[5]), prop(BANK0[2]), 
;!
;!    memcpy@s	PTR const unsigned char  size(1) Largest target is 6
;!		 -> networkInfo(BANK0[6]), network_pipe(BANK1[5]), prop(BANK0[2]), 
;!
;!    _$_logline_str@string	PTR unsigned char  size(2) Largest target is 52
;!		 -> STR_27(CODE[23]), STR_26(CODE[3]), STR_25(CODE[6]), STR_24(CODE[6]), 
;!		 -> STR_23(CODE[6]), STR_22(CODE[6]), STR_21(CODE[6]), STR_20(CODE[6]), 
;!		 -> STR_19(CODE[11]), STR_18(CODE[7]), STR_17(CODE[9]), STR_16(CODE[6]), 
;!		 -> STR_15(CODE[11]), STR_14(CODE[9]), STR_13(CODE[10]), STR_12(CODE[6]), 
;!		 -> STR_11(CODE[7]), STR_10(CODE[23]), STR_9(CODE[10]), buffer_rx(BANK1[32]), 
;!		 -> STR_8(CODE[6]), STR_7(CODE[3]), STR_6(CODE[7]), STR_5(CODE[15]), 
;!		 -> STR_4(CODE[13]), STR_3(CODE[19]), buffer_tx(BANK1[32]), STR_2(CODE[15]), 
;!		 -> STR_1(CODE[52]), 
;!
;!    transport_udp_rx@payload	PTR unsigned char  size(1) Largest target is 32
;!		 -> buffer_rx(BANK1[32]), 
;!
;!    transport_udp_rx@packetHeader	PTR struct UDPPacket size(1) Largest target is 32
;!		 -> buffer_rx(BANK1[32]), 
;!
;!    transport_udp_tx@payload	PTR unsigned char  size(1) Largest target is 32
;!		 -> buffer_tx(BANK1[32]), 
;!
;!    transport_udp_tx@packetHeader	PTR struct UDPPacket size(1) Largest target is 32
;!		 -> buffer_tx(BANK1[32]), 
;!
;!    RF24_openWritingPipe@address	PTR unsigned char  size(1) Largest target is 6
;!		 -> networkInfo(BANK0[6]), 
;!
;!    RF24_openReadingPipe@address	PTR unsigned char  size(2) Largest target is 6
;!		 -> BASE_PIPE(CODE[5]), networkInfo(BANK0[6]), 
;!
;!    RF24_read@buf	PTR void  size(1) Largest target is 32
;!		 -> buffer_rx(BANK1[32]), 
;!
;!    RF24_write@buf	PTR void  size(1) Largest target is 32
;!		 -> buffer_rx(BANK1[32]), buffer_tx(BANK1[32]), 
;!
;!    RF24_write_n_register@buffer	PTR unsigned char  size(2) Largest target is 6
;!		 -> BASE_PIPE(CODE[5]), networkInfo(BANK0[6]), 
;!
;!    RF24_read_n_register@buf	PTR unsigned char  size(1) Largest target is 32
;!		 -> RF24_printDetails@buffer(COMMON[5]), buffer_rx(BANK1[32]), 
;!
;!    sp__internet_getRecievingBuffer	PTR unsigned char  size(1) Largest target is 32
;!		 -> buffer_rx(BANK1[32]), 
;!
;!    sp__internet_getTransmissionBuffer	PTR unsigned char  size(1) Largest target is 32
;!		 -> buffer_tx(BANK1[32]), 
;!
;!    internet_relay@payload	PTR unsigned char  size(1) Largest target is 32
;!		 -> buffer_rx(BANK1[32]), buffer_tx(BANK1[32]), 
;!
;!    internet_relay@packetHeader	PTR struct Packet size(1) Largest target is 32
;!		 -> buffer_rx(BANK1[32]), buffer_tx(BANK1[32]), 
;!
;!    internet_rx@payload	PTR unsigned char  size(1) Largest target is 32
;!		 -> buffer_rx(BANK1[32]), 
;!
;!    internet_rx@packetHeader	PTR struct Packet size(1) Largest target is 32
;!		 -> buffer_rx(BANK1[32]), 
;!
;!    internet_tx@payload	PTR unsigned char  size(1) Largest target is 32
;!		 -> buffer_tx(BANK1[32]), 
;!
;!    internet_tx@packetHeader	PTR struct Packet size(1) Largest target is 32
;!		 -> buffer_tx(BANK1[32]), 
;!
;!    internet_setNetworkPipe@pipe	PTR unsigned char  size(1) Largest target is 6
;!		 -> networkInfo(BANK0[6]), network_pipe(BANK1[5]), 
;!
;!    sp__memcpy	PTR void  size(1) Largest target is 32
;!		 -> networkInfo(BANK0[6]), buffer_tx(BANK1[32]), 
;!
;!    transport_udp_process@ppnt	PTR struct . size(1) Largest target is 32
;!		 -> buffer_rx.object(UNKNOWN), buffer_rx(BANK1[32]), 
;!
;!    transport_udp_process@payload	PTR unsigned char  size(1) Largest target is 32
;!		 -> buffer_rx(BANK1[32]), 
;!
;!    transport_udp_process@packet	PTR const struct . size(1) Largest target is 32
;!		 -> buffer_rx(BANK1[32]), 
;!
;!    main@packet	const PTR struct . size(1) Largest target is 32
;!		 -> buffer_tx(BANK1[32]), 
;!
;!    checkButton@btn	PTR struct . size(1) Largest target is 5
;!		 -> btn1(BANK0[5]), 
;!


;!
;!Critical Paths under _main in COMMON
;!
;!    _main->_checkButton
;!    _wait_init->_timerInit
;!    _internet_setChannel->_RF24_setChannel
;!    _internet_setNetworkPipe->_RF24_openReadingPipe
;!    _internet_process->_RF24_getDynamicPayloadSize
;!    _internet_process->_RF24_read
;!    __$_logline_int->___awdiv
;!    __$_logline_int->___awmod
;!    ___awmod->___lbdiv
;!    _internet_relay->_RF24_openReadingPipe
;!    _internet_relay->_RF24_write
;!    __$_logline_str->_Serial_write
;!    _RF24_write->_RF24_flush_tx
;!    _RF24_stopListening->_RF24_write_register
;!    _RF24_openWritingPipe->_RF24_write_n_register
;!    _RF24_read->_RF24_write_register
;!    _RF24_read_n_register->_SPI_exchangeByte
;!    _RF24_getDynamicPayloadSize->_RF24_flush_rx
;!    _RF24_available->_RF24_get_status
;!    _RF24_get_status->_SPI_exchangeByte
;!    _checkButton->_micros
;!    _Serial_begin->___aldiv
;!    _Network_begin->_RF24_openReadingPipe
;!    _Network_begin->_RF24_setAddressWidth
;!    _Network_begin->_RF24_setAutoAck
;!    _Network_begin->_RF24_setCRCLength
;!    _Network_begin->_RF24_setPayloadSize
;!    _RF24_startListening->_RF24_write_register
;!    _RF24_setCRCLength->_RF24_write_register
;!    _RF24_setAutoAck->_RF24_write_register
;!    _RF24_openReadingPipe->_RF24_write_register
;!    _RF24_write_n_register->_SPI_exchangeByte
;!    _RF24_getPALevel->_RF24_read_register
;!    _RF24_enableDynamicPayloads->_RF24_write_register
;!    _RF24_begin->_RF24_powerUp
;!    _RF24_begin->_RF24_setAddressWidth
;!    _RF24_begin->_RF24_setChannel
;!    _RF24_begin->_RF24_setPALevel
;!    _RF24_begin->_RF24_setPayloadSize
;!    _RF24_begin->_RF24_setRetries
;!    _RF24_setRetries->_RF24_write_register
;!    _RF24_setPayloadSize->_RF24_write_register
;!    _RF24_setPALevel->_RF24_write_register
;!    _RF24_setDataRate->_RF24_write_register
;!    _RF24_setChannel->_RF24_write_register
;!    _RF24_setAddressWidth->_RF24_write_register
;!    _RF24_powerUp->_RF24_write_register
;!    _RF24_read_register->_SPI_exchangeByte
;!    _RF24_flush_tx->_RF24_write_register
;!    _RF24_flush_rx->_RF24_write_register
;!    _RF24_write_register->_RF24_read_register
;!
;!Critical Paths under _ISR in COMMON
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_internet_process
;!    _transport_udp_tx->_internet_tx
;!    _internet_tx->_internet_relay
;!    _internet_setAddress->_internet_setNetworkPipe
;!    _internet_setNetworkPipe->_RF24_openReadingPipe
;!    _internet_process->_internet_rx
;!    _internet_rx->_transport_udp_rx
;!    _transport_udp_rx->_transport_udp_process
;!    _transport_udp_process->__$_logline_int
;!    __$_logline_int->___awmod
;!    _internet_relay->_RF24_openReadingPipe
;!    _Serial_begin->___aldiv
;!    _Network_begin->_RF24_begin
;!    _RF24_begin->_RF24_setPALevel
;!    _RF24_begin->_RF24_setRetries
;!
;!Critical Paths under _ISR in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK2
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 4, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 5     5      0  148415
;!                                             31 BANK0      5     5      0
;!                      _Network_begin
;!                     _SPI_initialize
;!                       _Serial_begin
;!                       _Serial_write
;!                     __$_logline_str
;!                        _checkButton
;!                   _internet_process
;!                _internet_setAddress
;!                _internet_setChannel
;!            _internet_setNetworkPipe
;!                             _micros
;!                   _transport_udp_tx
;!                          _wait_init
;! ---------------------------------------------------------------------------------
;! (1) _wait_init                                            1     1      0     114
;!                                              5 COMMON     1     1      0
;!                          _timerInit
;! ---------------------------------------------------------------------------------
;! (2) _timerInit                                            3     3      0      92
;!                                              2 COMMON     3     3      0
;! ---------------------------------------------------------------------------------
;! (1) _transport_udp_tx                                     7     3      4   24653
;!                                             12 BANK0      7     3      4
;!                        _internet_tx
;! ---------------------------------------------------------------------------------
;! (2) _internet_tx                                          4     3      1   23894
;!                                              8 BANK0      4     3      1
;!                     _internet_relay
;! ---------------------------------------------------------------------------------
;! (1) _internet_setChannel                                  1     1      0    3615
;!                                              0 BANK0      1     1      0
;!                    _RF24_setChannel
;! ---------------------------------------------------------------------------------
;! (1) _internet_setAddress                                  3     3      0    6019
;!                                              5 BANK0      3     3      0
;!             _internet_calculateMask
;!            _internet_setNetworkPipe
;! ---------------------------------------------------------------------------------
;! (1) _internet_setNetworkPipe                              2     2      0    5888
;!                                              3 BANK0      2     2      0
;!               _RF24_openReadingPipe
;!                             _memcpy
;! ---------------------------------------------------------------------------------
;! (1) _internet_process                                     2     2      0   37608
;!                                             29 BANK0      2     2      0
;!                     _RF24_available
;!         _RF24_getDynamicPayloadSize
;!                          _RF24_read
;!                        _internet_rx
;! ---------------------------------------------------------------------------------
;! (2) _internet_rx                                          5     4      1   29246
;!                                             24 BANK0      5     4      1
;!                     _internet_relay
;!                   _transport_udp_rx
;! ---------------------------------------------------------------------------------
;! (3) _transport_udp_rx                                     5     4      1    5290
;!                                             19 BANK0      5     4      1
;!              _transport_udp_process
;! ---------------------------------------------------------------------------------
;! (4) _transport_udp_process                                7     5      2    4987
;!                                             12 BANK0      7     5      2
;!                       _Serial_write
;!                     __$_logline_int
;!                     __$_logline_str
;!                             _memcpy
;! ---------------------------------------------------------------------------------
;! (2) _memcpy                                               8     5      3     740
;!                                              2 COMMON     8     5      3
;! ---------------------------------------------------------------------------------
;! (5) __$_logline_int                                       9     9      0    1591
;!                                              3 BANK0      9     9      0
;!                       _Serial_write
;!                            ___awdiv
;!                            ___awmod
;!                            ___lbdiv
;! ---------------------------------------------------------------------------------
;! (6) ___lbdiv                                              5     4      1     238
;!                                              2 COMMON     5     4      1
;! ---------------------------------------------------------------------------------
;! (6) ___awmod                                              7     3      4     613
;!                                              7 COMMON     4     0      4
;!                                              0 BANK0      3     3      0
;!                            ___lbdiv (ARG)
;! ---------------------------------------------------------------------------------
;! (6) ___awdiv                                              9     5      4     452
;!                                              2 COMMON     9     5      4
;! ---------------------------------------------------------------------------------
;! (3) _internet_relay                                       6     5      1   23560
;!                                              3 BANK0      5     4      1
;!               _RF24_openReadingPipe
;!               _RF24_openWritingPipe
;!                _RF24_startListening
;!                 _RF24_stopListening
;!                         _RF24_write
;!                       _Serial_write
;!                     __$_logline_str
;!             _internet_calculateMask
;!                  _internet_hasChild
;! ---------------------------------------------------------------------------------
;! (4) _internet_hasChild                                    2     2      0      22
;!                                              2 COMMON     2     2      0
;! ---------------------------------------------------------------------------------
;! (4) _internet_calculateMask                               2     2      0      69
;!                                              2 COMMON     2     2      0
;! ---------------------------------------------------------------------------------
;! (4) __$_logline_str                                       4     2      2    1984
;!                                              3 COMMON     4     2      2
;!                       _Serial_write
;! ---------------------------------------------------------------------------------
;! (5) _Serial_write                                         1     1      0      22
;!                                              2 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (4) _RF24_write                                           3     2      1    7761
;!                                             10 COMMON     1     1      0
;!                                              0 BANK0      2     1      1
;!                      _RF24_flush_tx
;!                    _RF24_get_status
;!                _RF24_write_register
;!                   _SPI_exchangeByte
;! ---------------------------------------------------------------------------------
;! (4) _RF24_stopListening                                   1     1      0    3649
;!                                              9 COMMON     1     1      0
;!                 _RF24_read_register
;!                _RF24_write_register
;! ---------------------------------------------------------------------------------
;! (4) _RF24_openWritingPipe                                 2     2      0     629
;!                                              8 COMMON     2     2      0
;!              _RF24_write_n_register
;! ---------------------------------------------------------------------------------
;! (2) _RF24_read                                            4     3      1    4518
;!                                              9 COMMON     2     1      1
;!                                              0 BANK0      2     2      0
;!               _RF24_read_n_register
;!                _RF24_write_register
;! ---------------------------------------------------------------------------------
;! (3) _RF24_read_n_register                                 4     2      2     727
;!                                              3 COMMON     4     2      2
;!                   _SPI_exchangeByte
;! ---------------------------------------------------------------------------------
;! (2) _RF24_getDynamicPayloadSize                           3     3      0    3714
;!                                             10 COMMON     1     1      0
;!                                              0 BANK0      2     2      0
;!                      _RF24_flush_rx
;!                 _RF24_read_register
;! ---------------------------------------------------------------------------------
;! (2) _RF24_available                                       3     3      0      65
;!                                              4 COMMON     3     3      0
;!                    _RF24_get_status
;! ---------------------------------------------------------------------------------
;! (5) _RF24_get_status                                      1     1      0      31
;!                                              3 COMMON     1     1      0
;!                   _SPI_exchangeByte
;! ---------------------------------------------------------------------------------
;! (1) _checkButton                                          8     7      1     310
;!                                             10 COMMON     1     0      1
;!                                              0 BANK0      7     7      0
;!                             _micros
;! ---------------------------------------------------------------------------------
;! (1) _micros                                               8     4      4       0
;!                                              2 COMMON     8     4      4
;! ---------------------------------------------------------------------------------
;! (1) _Serial_begin                                        18    14      4     836
;!                                              6 BANK0     18    14      4
;!                            ___aldiv
;! ---------------------------------------------------------------------------------
;! (2) ___aldiv                                             15     7      8     604
;!                                              2 COMMON     9     1      8
;!                                              0 BANK0      6     6      0
;! ---------------------------------------------------------------------------------
;! (1) _SPI_initialize                                       0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _Network_begin                                        1     1      0   67332
;!                                              6 BANK0      1     1      0
;!                         _RF24_begin
;!         _RF24_enableDynamicPayloads
;!                    _RF24_getPALevel
;!               _RF24_openReadingPipe
;!               _RF24_setAddressWidth
;!                    _RF24_setAutoAck
;!                  _RF24_setCRCLength
;!                   _RF24_setDataRate
;!                _RF24_setPayloadSize
;!                _RF24_startListening
;! ---------------------------------------------------------------------------------
;! (4) _RF24_startListening                                  1     1      0    3649
;!                                              9 COMMON     1     1      0
;!                 _RF24_read_register
;!                _RF24_write_register
;! ---------------------------------------------------------------------------------
;! (2) _RF24_setCRCLength                                    2     2      0    3615
;!                                              9 COMMON     2     2      0
;!                _RF24_write_register
;! ---------------------------------------------------------------------------------
;! (2) _RF24_setAutoAck                                      2     2      0    3584
;!                                              9 COMMON     2     2      0
;!                _RF24_write_register
;! ---------------------------------------------------------------------------------
;! (4) _RF24_openReadingPipe                                 5     3      2    5045
;!                                              9 COMMON     2     0      2
;!                                              0 BANK0      3     3      0
;!                 _RF24_read_register
;!              _RF24_write_n_register
;!                _RF24_write_register
;! ---------------------------------------------------------------------------------
;! (5) _RF24_write_n_register                                5     2      3     490
;!                                              3 COMMON     5     2      3
;!                   _SPI_exchangeByte
;! ---------------------------------------------------------------------------------
;! (2) _RF24_getPALevel                                      1     0      1      96
;!                                              6 COMMON     1     0      1
;!                 _RF24_read_register
;! ---------------------------------------------------------------------------------
;! (2) _RF24_enableDynamicPayloads                           1     1      0    3649
;!                                              9 COMMON     1     1      0
;!                 _RF24_read_register
;!                _RF24_write_register
;! ---------------------------------------------------------------------------------
;! (2) _RF24_begin                                           3     3      0   36586
;!                                              3 BANK0      3     3      0
;!                      _RF24_flush_rx
;!                      _RF24_flush_tx
;!                       _RF24_powerUp
;!                 _RF24_read_register
;!               _RF24_setAddressWidth
;!                    _RF24_setChannel
;!                   _RF24_setDataRate
;!                    _RF24_setPALevel
;!                _RF24_setPayloadSize
;!                    _RF24_setRetries
;!                _RF24_write_register
;! ---------------------------------------------------------------------------------
;! (3) _RF24_setRetries                                      5     4      1    3705
;!                                              9 COMMON     2     1      1
;!                                              0 BANK0      3     3      0
;!                _RF24_write_register
;! ---------------------------------------------------------------------------------
;! (2) _RF24_setPayloadSize                                  2     2      0    3739
;!                                              9 COMMON     2     2      0
;!                _RF24_write_register
;! ---------------------------------------------------------------------------------
;! (3) _RF24_setPALevel                                      5     5      0    3785
;!                                              9 COMMON     2     2      0
;!                                              0 BANK0      3     3      0
;!                 _RF24_read_register
;!                _RF24_write_register
;! ---------------------------------------------------------------------------------
;! (2) _RF24_setDataRate                                     3     3      0    3785
;!                                              9 COMMON     1     1      0
;!                                              0 BANK0      2     2      0
;!                 _RF24_read_register
;!                _RF24_write_register
;! ---------------------------------------------------------------------------------
;! (2) _RF24_setChannel                                      2     2      0    3584
;!                                              9 COMMON     2     2      0
;!                _RF24_write_register
;! ---------------------------------------------------------------------------------
;! (2) _RF24_setAddressWidth                                 2     2      0    3584
;!                                              9 COMMON     2     2      0
;!                _RF24_write_register
;! ---------------------------------------------------------------------------------
;! (3) _RF24_powerUp                                         2     2      0    3649
;!                                              9 COMMON     2     2      0
;!                 _RF24_read_register
;!                _RF24_write_register
;! ---------------------------------------------------------------------------------
;! (5) _RF24_read_register                                   3     3      0      96
;!                                              3 COMMON     3     3      0
;!                   _SPI_exchangeByte
;! ---------------------------------------------------------------------------------
;! (5) _RF24_flush_tx                                        1     1      0    3553
;!                                              9 COMMON     1     1      0
;!                _RF24_write_register
;! ---------------------------------------------------------------------------------
;! (3) _RF24_flush_rx                                        1     1      0    3553
;!                                              9 COMMON     1     1      0
;!                _RF24_write_register
;! ---------------------------------------------------------------------------------
;! (5) _RF24_write_register                                  3     2      1    3553
;!                                              6 COMMON     3     2      1
;!                 _RF24_read_register (ARG)
;!                   _SPI_exchangeByte
;! ---------------------------------------------------------------------------------
;! (5) _SPI_exchangeByte                                     1     1      0      31
;!                                              2 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 6
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (8) _ISR                                                  2     2      0       0
;!                                              0 COMMON     2     2      0
;!                            _timeISR
;! ---------------------------------------------------------------------------------
;! (9) _timeISR                                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 9
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _Network_begin
;!     _RF24_begin
;!       _RF24_flush_rx
;!         _RF24_write_register
;!           _RF24_read_register (ARG)
;!             _SPI_exchangeByte
;!           _SPI_exchangeByte (ARG)
;!       _RF24_flush_tx
;!         _RF24_write_register
;!       _RF24_powerUp
;!         _RF24_read_register
;!         _RF24_write_register
;!       _RF24_read_register
;!       _RF24_setAddressWidth
;!         _RF24_write_register
;!       _RF24_setChannel
;!         _RF24_write_register
;!       _RF24_setDataRate
;!         _RF24_read_register
;!         _RF24_write_register
;!       _RF24_setPALevel
;!         _RF24_read_register
;!         _RF24_write_register
;!       _RF24_setPayloadSize
;!         _RF24_write_register
;!       _RF24_setRetries
;!         _RF24_write_register
;!       _RF24_write_register
;!     _RF24_enableDynamicPayloads
;!       _RF24_read_register
;!       _RF24_write_register
;!     _RF24_getPALevel
;!       _RF24_read_register
;!     _RF24_openReadingPipe
;!       _RF24_read_register
;!       _RF24_write_n_register
;!         _SPI_exchangeByte
;!       _RF24_write_register
;!     _RF24_setAddressWidth
;!     _RF24_setAutoAck
;!       _RF24_write_register
;!     _RF24_setCRCLength
;!       _RF24_write_register
;!     _RF24_setDataRate
;!     _RF24_setPayloadSize
;!     _RF24_startListening
;!       _RF24_read_register
;!       _RF24_write_register
;!   _SPI_initialize
;!   _Serial_begin
;!     ___aldiv
;!   _Serial_write
;!   __$_logline_str
;!     _Serial_write
;!   _checkButton
;!     _micros
;!   _internet_process
;!     _RF24_available
;!       _RF24_get_status
;!         _SPI_exchangeByte
;!     _RF24_getDynamicPayloadSize
;!       _RF24_flush_rx
;!       _RF24_read_register
;!     _RF24_read
;!       _RF24_read_n_register
;!         _SPI_exchangeByte
;!       _RF24_write_register
;!     _internet_rx
;!       _internet_relay
;!         _RF24_openReadingPipe
;!         _RF24_openWritingPipe
;!           _RF24_write_n_register
;!         _RF24_startListening
;!         _RF24_stopListening
;!           _RF24_read_register
;!           _RF24_write_register
;!         _RF24_write
;!           _RF24_flush_tx
;!           _RF24_get_status
;!           _RF24_write_register
;!           _SPI_exchangeByte
;!         _Serial_write
;!         __$_logline_str
;!         _internet_calculateMask
;!         _internet_hasChild
;!       _transport_udp_rx
;!         _transport_udp_process
;!           _Serial_write
;!           __$_logline_int
;!             _Serial_write
;!             ___awdiv
;!             ___awmod
;!               ___lbdiv (ARG)
;!             ___lbdiv
;!           __$_logline_str
;!           _memcpy
;!   _internet_setAddress
;!     _internet_calculateMask
;!     _internet_setNetworkPipe
;!       _RF24_openReadingPipe
;!       _memcpy
;!   _internet_setChannel
;!     _RF24_setChannel
;!   _internet_setNetworkPipe
;!   _micros
;!   _transport_udp_tx
;!     _internet_tx
;!       _internet_relay
;!   _wait_init
;!     _timerInit
;!
;! _ISR (ROOT)
;!   _timeISR
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BANK3               60      0       0       9        0.0%
;!BITBANK3            60      0       0       8        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!BANK2               60      0       0      11        0.0%
;!BITBANK2            60      0       0      10        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITSFR2              0      0       0       5        0.0%
;!BANK1               50      0      45       7       86.2%
;!BITBANK1            50      0       0       6        0.0%
;!SFR1                 0      0       0       2        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!BANK0               50     24      43       5       83.8%
;!BITBANK0            50      0       0       4        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!COMMON               E      B       C       1       85.7%
;!BITCOMMON            E      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!DATA                 0      0      94      12        0.0%
;!ABS                  0      0      94       3        0.0%
;!NULL                 0      0       0       0        0.0%
;!STACK                0      0       0       2        0.0%
;!EEDATA             100      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 77 in file "F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/app/src/main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  var1            1   35[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0       5       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels required when called: 9
;; This function calls:
;;		_Network_begin
;;		_SPI_initialize
;;		_Serial_begin
;;		_Serial_write
;;		__$_logline_str
;;		_checkButton
;;		_internet_process
;;		_internet_setAddress
;;		_internet_setChannel
;;		_internet_setNetworkPipe
;;		_micros
;;		_transport_udp_tx
;;		_wait_init
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/app/src/main.c"
	line	77
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/app/src/main.c"
	line	77
	
_main:	
;incstack = 0
;; hardware stack exceeded
	callstack 0
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	79
	
l3339:	
	movlw	low(0FFh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	80
	
l3341:	
	bcf	(1089/8)^080h,(1089)&7	;volatile
	line	81
	
l3343:	
	bcf	(1039/8)^080h,(1039)&7	;volatile
	line	82
	
l3345:	
	bsf	(1088/8)^080h,(1088)&7	;volatile
	line	83
	
l3347:	
	movlw	0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(Serial_begin@baudrate+3)
	movlw	0
	movwf	(Serial_begin@baudrate+2)
	movlw	025h
	movwf	(Serial_begin@baudrate+1)
	movlw	080h
	movwf	(Serial_begin@baudrate)

	fcall	_Serial_begin
	line	84
	
l3349:	
	movlw	low(010h)
	fcall	_wait_init
	line	85
	
l3351:	
	fcall	_SPI_initialize
	line	86
	
l3353:	
	fcall	_Network_begin
	line	87
	
l3355:	
	movlw	low(073h)
	fcall	_internet_setChannel
	line	88
	
l3357:	
	movlw	(low(_network_pipe|((0x0)<<8)))&0ffh
	fcall	_internet_setNetworkPipe
	line	89
	
l3359:	
	movlw	low(02h)
	fcall	_internet_setAddress
	line	92
	
l3361:	
	movlw	low(((STR_1)|8000h))
	movwf	(__$_logline_str@string)
	movlw	high(((STR_1)|8000h))
	movwf	((__$_logline_str@string))+1
	fcall	__$_logline_str
	
l3363:	
	movlw	low(0Ah)
	fcall	_Serial_write
	line	100
	
l3365:	
	fcall	_internet_process
	line	102
	
l3367:	
	fcall	_micros
	movf	(3+(?_micros)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_startTime+3)
	movf	(2+(?_micros)),w
	movwf	(_startTime+2)
	movf	(1+(?_micros)),w
	movwf	(_startTime+1)
	movf	(0+(?_micros)),w
	movwf	(_startTime)

	line	104
	
l3369:	
	movf	(_startTime),w
	movwf	(??_main+0)+0
	movf	(_startTime+1),w
	movwf	((??_main+0)+0+1)
	movf	(_startTime+2),w
	movwf	((??_main+0)+0+2)
	movf	(_startTime+3),w
	movwf	((??_main+0)+0+3)
	movf	(_stopTime),w
	subwf	(??_main+0)+0,f
	movf	(_stopTime+1),w
	skipc
	incfsz	(_stopTime+1),w
	goto	u2421
	goto	u2422
u2421:
	subwf	(??_main+0)+1,f
u2422:
	movf	(_stopTime+2),w
	skipc
	incfsz	(_stopTime+2),w
	goto	u2423
	goto	u2424
u2423:
	subwf	(??_main+0)+2,f
u2424:
	movf	(_stopTime+3),w
	skipc
	incfsz	(_stopTime+3),w
	goto	u2425
	goto	u2426
u2425:
	subwf	(??_main+0)+3,f
u2426:

		movf	(??_main+0)+3,w
	btfss	status,2
	goto	u2430
	movf	(??_main+0)+2,w
	btfss	status,2
	goto	u2430
	movf	(??_main+0)+1,w
	btfss	status,2
	goto	u2430
	movlw	151
	subwf	(??_main+0)+0,w
	skipz
	goto	u2433
u2433:
	btfss	status,0
	goto	u2431
	goto	u2430

u2431:
	goto	l3375
u2430:
	line	106
	
l3371:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_startTime+3),w
	movwf	(_stopTime+3)
	movf	(_startTime+2),w
	movwf	(_stopTime+2)
	movf	(_startTime+1),w
	movwf	(_stopTime+1)
	movf	(_startTime),w
	movwf	(_stopTime)

	line	107
	
l3373:	
	btfsc	(_prop),0
	goto	u2441
	goto	u2440
	
u2441:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(65/8),(65)&7	;volatile
	goto	u2454
u2440:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(65/8),(65)&7	;volatile
u2454:
	line	109
	
l3375:	
	movlw	0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(64/8),(64)&7	;volatile
	movlw	1
	movwf	(checkButton@pinState)
	movlw	(low(_btn1|((0x0)<<8)))&0ffh
	fcall	_checkButton
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@var1)
	line	111
	
l3377:	
		decf	((main@var1)),w
	btfss	status,2
	goto	u2461
	goto	u2460
u2461:
	goto	l3395
u2460:
	line	113
	
l3379:	
	movlw	low(((STR_2)|8000h))
	movwf	(__$_logline_str@string)
	movlw	high(((STR_2)|8000h))
	movwf	((__$_logline_str@string))+1
	fcall	__$_logline_str
	
l3381:	
	movlw	low(0Ah)
	fcall	_Serial_write
	line	115
	
l3383:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	comf	(_prop),f
	line	117
	
l3385:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	0+(_buffer_tx)^080h+07h
	line	118
	
l3387:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_prop),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	0+(_buffer_tx)^080h+08h
	line	119
	
l3389:	
	clrf	0+(_buffer_tx)^080h+06h
	incf	0+(_buffer_tx)^080h+06h,f
	line	120
	
l3391:	
	movlw	low(03h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	0+(_buffer_tx)^080h+05h
	line	121
	
l3393:	
	movlw	low(020h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(transport_udp_tx@size)
	clrf	(transport_udp_tx@destination)
	incf	(transport_udp_tx@destination),f
	movlw	low(06h)
	movwf	(??_main+1)+0
	movf	(??_main+1)+0,w
	movwf	(transport_udp_tx@sourcePort)
	movlw	low(06h)
	movwf	(??_main+2)+0
	movf	(??_main+2)+0,w
	movwf	(transport_udp_tx@destinationPort)
	movlw	(low(_buffer_tx|((0x0)<<8)))&0ffh
	fcall	_transport_udp_tx
	line	126
	
l3395:	
	movlw	low(((STR_3)|8000h))
	movwf	(__$_logline_str@string)
	movlw	high(((STR_3)|8000h))
	movwf	((__$_logline_str@string))+1
	fcall	__$_logline_str
	
l3397:	
	movlw	low(0Ah)
	fcall	_Serial_write
	goto	l3361
	global	start
	ljmp	start
	callstack 0
	line	131
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_wait_init

;; *************** function _wait_init *****************
;; Defined at:
;;		line 3 in file "F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/wait.c"
;; Parameters:    Size  Location     Type
;;  megaHertez      1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  megaHertez      1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_timerInit
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1,group=1
	file	"F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/wait.c"
	line	3
global __ptext1
__ptext1:	;psect for function _wait_init
psect	text1
	file	"F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/wait.c"
	line	3
	
_wait_init:	
;incstack = 0
	callstack 4
; Regs used in _wait_init: [wreg+status,2+status,0+pclath+cstack]
;wait_init@megaHertez stored from wreg
	movwf	(wait_init@megaHertez)
	line	5
	
l2701:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/wait.c: 3: void wait_init(uint8_t megaHertez);F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/wait.c: 4: {;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/wait.c: 5:     timerInit(megaHertez);
	movf	(wait_init@megaHertez),w
	fcall	_timerInit
	line	6
	
l619:	
	return
	callstack 0
GLOBAL	__end_of_wait_init
	__end_of_wait_init:
	signat	_wait_init,4217
	global	_timerInit

;; *************** function _timerInit *****************
;; Defined at:
;;		line 3 in file "F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/time.c"
;; Parameters:    Size  Location     Type
;;  mhz             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  mhz             1    3[COMMON] unsigned char 
;;  prescaler       1    4[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_wait_init
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1,group=1
	file	"F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/time.c"
	line	3
global __ptext2
__ptext2:	;psect for function _timerInit
psect	text2
	file	"F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/time.c"
	line	3
	
_timerInit:	
;incstack = 0
	callstack 4
; Regs used in _timerInit: [wreg+status,2+status,0]
;timerInit@mhz stored from wreg
	movwf	(timerInit@mhz)
	line	5
	
l2593:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/time.c: 3: void timerInit(uint8_t mhz);F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/time.c: 4: {;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/time.c: 5:     mhz >>= 2;
	clrc
	rrf	(timerInit@mhz),f
	clrc
	rrf	(timerInit@mhz),f

	line	6
	
l2595:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/time.c: 6:     uint8_t prescaler = 0;
	clrf	(timerInit@prescaler)
	line	7
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/time.c: 7:     while (mhz && !(mhz & 1))
	goto	l2601
	line	9
	
l2597:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/time.c: 8:     {;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/time.c: 9:         prescaler++;
	movlw	low(01h)
	movwf	(??_timerInit+0)+0
	movf	(??_timerInit+0)+0,w
	addwf	(timerInit@prescaler),f
	line	10
	
l2599:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/time.c: 10:         mhz >>= 1;
	clrc
	rrf	(timerInit@mhz),f

	line	7
	
l2601:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/time.c: 7:     while (mhz && !(mhz & 1))
	movf	((timerInit@mhz)),w
	btfsc	status,2
	goto	u1601
	goto	u1600
u1601:
	goto	l586
u1600:
	
l2603:	
	btfss	(timerInit@mhz),(0)&7
	goto	u1611
	goto	u1610
u1611:
	goto	l2597
u1610:
	
l586:	
	line	16
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/time.c: 16:     PEIE = 1;
	bsf	(94/8),(94)&7	;volatile
	line	17
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/time.c: 17:     GIE = 1;
	bsf	(95/8),(95)&7	;volatile
	line	18
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/time.c: 18:     TMR1IE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1120/8)^080h,(1120)&7	;volatile
	line	19
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/time.c: 19:     TMR1CS = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(129/8),(129)&7	;volatile
	line	20
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/time.c: 20:     T1OSCEN = 1;
	bsf	(131/8),(131)&7	;volatile
	line	21
	
l2605:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/time.c: 21:     T1CKPS1 = (prescaler >> 1);
	movf	(timerInit@prescaler),w
	movwf	(??_timerInit+0)+0
	movlw	01h
u1625:
	clrc
	rrf	(??_timerInit+0)+0,f
	addlw	-1
	skipz
	goto	u1625
	btfsc	0+(??_timerInit+0)+0,0
	goto	u1631
	goto	u1630
	
u1631:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(133/8),(133)&7	;volatile
	goto	u1644
u1630:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(133/8),(133)&7	;volatile
u1644:
	line	22
	
l2607:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/time.c: 22:     T1CKPS0 = (prescaler & 1);
	btfsc	(timerInit@prescaler),0
	goto	u1651
	goto	u1650
	
u1651:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(132/8),(132)&7	;volatile
	goto	u1664
u1650:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(132/8),(132)&7	;volatile
u1664:
	line	23
	
l2609:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/time.c: 23:     TMR1ON = 1;
	bsf	(128/8),(128)&7	;volatile
	line	24
	
l2611:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/time.c: 24:     TMR1 = 0;
	clrf	(14)	;volatile
	clrf	(14+1)	;volatile
	line	28
	
l587:	
	return
	callstack 0
GLOBAL	__end_of_timerInit
	__end_of_timerInit:
	signat	_timerInit,4217
	global	_transport_udp_tx

;; *************** function _transport_udp_tx *****************
;; Defined at:
;;		line 3 in file "F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/transport.c"
;; Parameters:    Size  Location     Type
;;  payload         1    wreg     PTR unsigned char 
;;		 -> buffer_tx(32), 
;;  size            1   12[BANK0 ] unsigned char 
;;  destination     1   13[BANK0 ] unsigned char 
;;  sourcePort      1   14[BANK0 ] unsigned char 
;;  destinationP    1   15[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  payload         1   17[BANK0 ] PTR unsigned char 
;;		 -> buffer_tx(32), 
;;  packetHeader    1   18[BANK0 ] PTR struct UDPPacket
;;		 -> buffer_tx(32), 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       7       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 8
;; This function calls:
;;		_internet_tx
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1,group=1
	file	"F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/transport.c"
	line	3
global __ptext3
__ptext3:	;psect for function _transport_udp_tx
psect	text3
	file	"F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/transport.c"
	line	3
	
_transport_udp_tx:	
;incstack = 0
;; hardware stack exceeded
	callstack 0
; Regs used in _transport_udp_tx: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;transport_udp_tx@payload stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(transport_udp_tx@payload)
	line	5
	
l3327:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/transport.c: 3: void transport_udp_tx(uint8_t *payload, uint8_t size, uint8_t destination, uint8_t sourcePort, uint8_t destinationPort);F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/transport.c: 4: {;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/transport.c: 5:     struct UDPPacket *packetHeader = (struct UDPPacket *)payload;
	movf	(transport_udp_tx@payload),w
	movwf	(??_transport_udp_tx+0)+0
	movf	(??_transport_udp_tx+0)+0,w
	movwf	(transport_udp_tx@packetHeader)
	line	6
	
l3329:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/transport.c: 6:     packetHeader->protocol = 1;
	incf	(transport_udp_tx@packetHeader),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	incf	indf,f
	line	7
	
l3331:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/transport.c: 7:     packetHeader->destination = destination;
	movf	(transport_udp_tx@destination),w
	movwf	(??_transport_udp_tx+0)+0
	movf	(transport_udp_tx@packetHeader),w
	addlw	03h
	movwf	fsr0
	movf	(??_transport_udp_tx+0)+0,w
	movwf	indf
	line	8
	
l3333:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/transport.c: 8:     packetHeader->sourcePort = sourcePort;
	movf	(transport_udp_tx@packetHeader),w
	addlw	04h
	movwf	fsr0
	movf	indf,w
	xorwf	(transport_udp_tx@sourcePort),w
	andlw	not ((1<<4)-1)
	xorwf	(transport_udp_tx@sourcePort),w
	movwf	indf
	line	9
	
l3335:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/transport.c: 9:     packetHeader->destinationPort = destinationPort;
	movf	(transport_udp_tx@destinationPort),w
	movwf	(??_transport_udp_tx+0)+0
	movf	(transport_udp_tx@packetHeader),w
	addlw	04h
	movwf	fsr0
	swapf	(??_transport_udp_tx+0)+0,f
	movf	indf,w
	xorwf	(??_transport_udp_tx+0)+0,w
	andlw	not (((1<<4)-1)<<4)
	xorwf	(??_transport_udp_tx+0)+0,w
	movwf	indf
	line	10
	
l3337:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/transport.c: 10:     internet_tx(payload, size);
	movf	(transport_udp_tx@size),w
	movwf	(??_transport_udp_tx+0)+0
	movf	(??_transport_udp_tx+0)+0,w
	movwf	(internet_tx@size)
	movf	(transport_udp_tx@payload),w
	fcall	_internet_tx
	line	11
	
l609:	
	return
	callstack 0
GLOBAL	__end_of_transport_udp_tx
	__end_of_transport_udp_tx:
	signat	_transport_udp_tx,20601
	global	_internet_tx

;; *************** function _internet_tx *****************
;; Defined at:
;;		line 29 in file "F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/internet.c"
;; Parameters:    Size  Location     Type
;;  payload         1    wreg     PTR unsigned char 
;;		 -> buffer_tx(32), 
;;  size            1    8[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  payload         1   11[BANK0 ] PTR unsigned char 
;;		 -> buffer_tx(32), 
;;  packetHeader    1   10[BANK0 ] PTR struct Packet
;;		 -> buffer_tx(32), 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       1       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 7
;; This function calls:
;;		_internet_relay
;; This function is called by:
;;		_transport_udp_tx
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1,group=1
	file	"F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/internet.c"
	line	29
global __ptext4
__ptext4:	;psect for function _internet_tx
psect	text4
	file	"F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/internet.c"
	line	29
	
_internet_tx:	
;incstack = 0
;; hardware stack exceeded
	callstack 0
; Regs used in _internet_tx: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;internet_tx@payload stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(internet_tx@payload)
	line	32
	
l3221:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/internet.c: 29: void internet_tx(uint8_t *payload, uint8_t size);F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/internet.c: 30: {;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/internet.c: 32:     struct Packet *packetHeader = (struct Packet *)payload;
	movf	(internet_tx@payload),w
	movwf	(??_internet_tx+0)+0
	movf	(??_internet_tx+0)+0,w
	movwf	(internet_tx@packetHeader)
	line	33
	
l3223:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/internet.c: 33:     packetHeader->ttl = 32;
	movlw	low(020h)
	movwf	(??_internet_tx+0)+0
	movf	(internet_tx@packetHeader),w
	movwf	fsr0
	movf	(??_internet_tx+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	34
	
l3225:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/internet.c: 34:     packetHeader->source = node.address;
	movf	(_node),w
	movwf	(??_internet_tx+0)+0
	movf	(internet_tx@packetHeader),w
	addlw	02h
	movwf	fsr0
	movf	(??_internet_tx+0)+0,w
	movwf	indf
	line	35
	
l3227:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/internet.c: 35:     internet_relay(payload, size);
	movf	(internet_tx@size),w
	movwf	(??_internet_tx+0)+0
	movf	(??_internet_tx+0)+0,w
	movwf	(internet_relay@size)
	movf	(internet_tx@payload),w
	fcall	_internet_relay
	line	36
	
l267:	
	return
	callstack 0
GLOBAL	__end_of_internet_tx
	__end_of_internet_tx:
	signat	_internet_tx,8313
	global	_internet_setChannel

;; *************** function _internet_setChannel *****************
;; Defined at:
;;		line 9 in file "F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/internet.c"
;; Parameters:    Size  Location     Type
;;  channel         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  channel         1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 5
;; This function calls:
;;		_RF24_setChannel
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1,group=1
	line	9
global __ptext5
__ptext5:	;psect for function _internet_setChannel
psect	text5
	file	"F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/internet.c"
	line	9
	
_internet_setChannel:	
;incstack = 0
	callstack 2
; Regs used in _internet_setChannel: [wreg+status,2+status,0+pclath+cstack]
;internet_setChannel@channel stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(internet_setChannel@channel)
	line	11
	
l3303:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/internet.c: 9: void internet_setChannel(uint8_t channel);F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/internet.c: 10: {;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/internet.c: 11:     RF24_setChannel(channel);
	movf	(internet_setChannel@channel),w
	fcall	_RF24_setChannel
	line	12
	
l255:	
	return
	callstack 0
GLOBAL	__end_of_internet_setChannel
	__end_of_internet_setChannel:
	signat	_internet_setChannel,4217
	global	_internet_setAddress

;; *************** function _internet_setAddress *****************
;; Defined at:
;;		line 123 in file "F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/internet.c"
;; Parameters:    Size  Location     Type
;;  address         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  address         1    7[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 6
;; This function calls:
;;		_internet_calculateMask
;;		_internet_setNetworkPipe
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1,group=1
	line	123
global __ptext6
__ptext6:	;psect for function _internet_setAddress
psect	text6
	file	"F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/internet.c"
	line	123
	
_internet_setAddress:	
;incstack = 0
	callstack 1
; Regs used in _internet_setAddress: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;internet_setAddress@address stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(internet_setAddress@address)
	line	125
	
l3305:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/internet.c: 123: void internet_setAddress(uint8_t address);F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/internet.c: 124: {;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/internet.c: 125:     node.address = address;
	movf	(internet_setAddress@address),w
	movwf	(??_internet_setAddress+0)+0
	movf	(??_internet_setAddress+0)+0,w
	movwf	(_node)
	line	126
	
l3307:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/internet.c: 126:     node.mask = internet_calculateMask(address);
	movf	(internet_setAddress@address),w
	fcall	_internet_calculateMask
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_internet_setAddress+0)+0
	movf	(??_internet_setAddress+0)+0,w
	movwf	0+(_node)+01h
	line	127
	
l3309:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/internet.c: 127:     node.routingMask = node.mask + 1;
	movf	0+(_node)+01h,w
	addlw	01h
	movwf	(??_internet_setAddress+0)+0
	movf	(??_internet_setAddress+0)+0,w
	movwf	0+(_node)+02h
	line	128
	
l3311:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/internet.c: 128:     node.child0 = (node.address & node.mask) | (node.routingMask << 1);
	movf	0+(_node)+02h,w
	movwf	(??_internet_setAddress+0)+0
	movlw	01h
u2395:
	clrc
	rlf	(??_internet_setAddress+0)+0,f
	addlw	-1
	skipz
	goto	u2395
	movf	0+(_node)+01h,w
	andwf	(_node),w
	iorwf	0+(??_internet_setAddress+0)+0,w
	movwf	(??_internet_setAddress+1)+0
	movf	(??_internet_setAddress+1)+0,w
	movwf	0+(_node)+03h
	line	129
	
l3313:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/internet.c: 129:     node.child1 = (node.address & node.mask) | (node.routingMask << 1) | node.routingMask;
	movf	0+(_node)+02h,w
	movwf	(??_internet_setAddress+0)+0
	movlw	01h
u2405:
	clrc
	rlf	(??_internet_setAddress+0)+0,f
	addlw	-1
	skipz
	goto	u2405
	movf	0+(_node)+01h,w
	andwf	(_node),w
	iorwf	0+(??_internet_setAddress+0)+0,w
	iorwf	0+(_node)+02h,w
	movwf	(??_internet_setAddress+1)+0
	movf	(??_internet_setAddress+1)+0,w
	movwf	0+(_node)+04h
	line	130
	
l3315:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/internet.c: 130:     internet_setNetworkPipe(networkInfo.networkPipe);
	movlw	(low(_networkInfo|((0x0)<<8)))&0ffh
	fcall	_internet_setNetworkPipe
	line	131
	
l294:	
	return
	callstack 0
GLOBAL	__end_of_internet_setAddress
	__end_of_internet_setAddress:
	signat	_internet_setAddress,4217
	global	_internet_setNetworkPipe

;; *************** function _internet_setNetworkPipe *****************
;; Defined at:
;;		line 23 in file "F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/internet.c"
;; Parameters:    Size  Location     Type
;;  pipe            1    wreg     PTR unsigned char 
;;		 -> networkInfo(6), network_pipe(5), 
;; Auto vars:     Size  Location     Type
;;  pipe            1    4[BANK0 ] PTR unsigned char 
;;		 -> networkInfo(6), network_pipe(5), 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 5
;; This function calls:
;;		_RF24_openReadingPipe
;;		_memcpy
;; This function is called by:
;;		_main
;;		_internet_setAddress
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1,group=1
	line	23
global __ptext7
__ptext7:	;psect for function _internet_setNetworkPipe
psect	text7
	file	"F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/internet.c"
	line	23
	
_internet_setNetworkPipe:	
;incstack = 0
	callstack 2
; Regs used in _internet_setNetworkPipe: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;internet_setNetworkPipe@pipe stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(internet_setNetworkPipe@pipe)
	line	25
	
l3165:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/internet.c: 23: void internet_setNetworkPipe(uint8_t *pipe);F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/internet.c: 24: {;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/internet.c: 25:     memcpy(networkInfo.networkPipe, pipe, 5);
	movf	(internet_setNetworkPipe@pipe),w
	movwf	(??_internet_setNetworkPipe+0)+0
	movf	(??_internet_setNetworkPipe+0)+0,w
	movwf	(memcpy@s1)
	movlw	05h
	movwf	(memcpy@n)
	movlw	0
	movwf	((memcpy@n))+1
	movlw	(low(_networkInfo|((0x0)<<8)))&0ffh
	fcall	_memcpy
	line	26
	
l3167:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/internet.c: 26:     networkInfo.networkPipe[0] = node.address;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_node),w
	movwf	(??_internet_setNetworkPipe+0)+0
	movf	(??_internet_setNetworkPipe+0)+0,w
	movwf	(_networkInfo)
	line	27
	
l3169:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/internet.c: 27:     RF24_openReadingPipe(1, networkInfo.networkPipe);
	movlw	(low(_networkInfo|((0x0)<<8))&0ffh)
	movwf	(RF24_openReadingPipe@address)
	movlw	(0x0)
	movwf	(RF24_openReadingPipe@address+1)
	movlw	low(01h)
	fcall	_RF24_openReadingPipe
	line	28
	
l264:	
	return
	callstack 0
GLOBAL	__end_of_internet_setNetworkPipe
	__end_of_internet_setNetworkPipe:
	signat	_internet_setNetworkPipe,4217
	global	_internet_process

;; *************** function _internet_process *****************
;; Defined at:
;;		line 13 in file "F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/internet.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  size            1   30[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 8
;; This function calls:
;;		_RF24_available
;;		_RF24_getDynamicPayloadSize
;;		_RF24_read
;;		_internet_rx
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1,group=1
	line	13
global __ptext8
__ptext8:	;psect for function _internet_process
psect	text8
	file	"F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/internet.c"
	line	13
	
_internet_process:	
;incstack = 0
;; hardware stack exceeded
	callstack 0
; Regs used in _internet_process: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	15
	
l3317:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/internet.c: 15:     while (RF24_available())
	goto	l3325
	line	17
	
l3319:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/internet.c: 16:     {;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/internet.c: 17:         uint8_t size = RF24_getDynamicPayloadSize();
	fcall	_RF24_getDynamicPayloadSize
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_internet_process+0)+0
	movf	(??_internet_process+0)+0,w
	movwf	(internet_process@size)
	line	19
	
l3321:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/internet.c: 19:         RF24_read(buffer_rx, size);
	movf	(internet_process@size),w
	movwf	(??_internet_process+0)+0
	movf	(??_internet_process+0)+0,w
	movwf	(RF24_read@len)
	movlw	(low(_buffer_rx|((0x0)<<8)))&0ffh
	fcall	_RF24_read
	line	20
	
l3323:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/internet.c: 20:         internet_rx(buffer_rx, size);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(internet_process@size),w
	movwf	(??_internet_process+0)+0
	movf	(??_internet_process+0)+0,w
	movwf	(internet_rx@size)
	movlw	(low(_buffer_rx|((0x0)<<8)))&0ffh
	fcall	_internet_rx
	line	15
	
l3325:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/internet.c: 15:     while (RF24_available())
	fcall	_RF24_available
	xorlw	0
	skipz
	goto	u2411
	goto	u2410
u2411:
	goto	l3319
u2410:
	line	22
	
l261:	
	return
	callstack 0
GLOBAL	__end_of_internet_process
	__end_of_internet_process:
	signat	_internet_process,89
	global	_internet_rx

;; *************** function _internet_rx *****************
;; Defined at:
;;		line 37 in file "F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/internet.c"
;; Parameters:    Size  Location     Type
;;  payload         1    wreg     PTR unsigned char 
;;		 -> buffer_rx(32), 
;;  size            1   24[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  payload         1   28[BANK0 ] PTR unsigned char 
;;		 -> buffer_rx(32), 
;;  packetHeader    1   27[BANK0 ] PTR struct Packet
;;		 -> buffer_rx(32), 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       1       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       5       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 7
;; This function calls:
;;		_internet_relay
;;		_transport_udp_rx
;; This function is called by:
;;		_internet_process
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1,group=1
	line	37
global __ptext9
__ptext9:	;psect for function _internet_rx
psect	text9
	file	"F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/internet.c"
	line	37
	
_internet_rx:	
;incstack = 0
;; hardware stack exceeded
	callstack 0
; Regs used in _internet_rx: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;internet_rx@payload stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(internet_rx@payload)
	line	39
	
l3191:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/internet.c: 37: void internet_rx(uint8_t *payload, uint8_t size);F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/internet.c: 38: {;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/internet.c: 39:     struct Packet *packetHeader = (struct Packet *)payload;
	movf	(internet_rx@payload),w
	movwf	(??_internet_rx+0)+0
	movf	(??_internet_rx+0)+0,w
	movwf	(internet_rx@packetHeader)
	line	40
	
l3193:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/internet.c: 40:     if (packetHeader->destination != node.address)
	movf	(internet_rx@packetHeader),w
	addlw	03h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	xorwf	(_node),w
	skipnz
	goto	u2341
	goto	u2340
u2341:
	goto	l3203
u2340:
	line	42
	
l3195:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/internet.c: 41:     {;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/internet.c: 42:         internet_relay(payload, size);
	movf	(internet_rx@size),w
	movwf	(??_internet_rx+0)+0
	movf	(??_internet_rx+0)+0,w
	movwf	(internet_relay@size)
	movf	(internet_rx@payload),w
	fcall	_internet_relay
	goto	l271
	line	54
	
l3199:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/internet.c: 54:         transport_udp_rx(payload, size);
	movf	(internet_rx@size),w
	movwf	(??_internet_rx+0)+0
	movf	(??_internet_rx+0)+0,w
	movwf	(transport_udp_rx@size)
	movf	(internet_rx@payload),w
	fcall	_transport_udp_rx
	line	55
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/internet.c: 55:         break;
	goto	l271
	line	59
	
l3203:	
	incf	(internet_rx@packetHeader),w
	movwf	fsr0
	movf	indf,w
	movwf	(??_internet_rx+0)+0
	clrf	(??_internet_rx+0)+0+1
	; Switch on 2 bytes has been partitioned into a top level switch of size 1, and 1 sub-switches
; Switch size 1, requested type "simple"
; Number of cases is 1, Range of values is 0 to 0
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
; direct_byte           11     8 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	movf 1+(??_internet_rx+0)+0,w
	asmopt push
	asmopt off
	xorlw	0^0	; case 0
	skipnz
	goto	l3419
	goto	l271
	asmopt pop
	
l3419:	
; Switch size 1, requested type "simple"
; Number of cases is 3, Range of values is 0 to 2
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           10     6 (average)
; direct_byte           17     8 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	movf 0+(??_internet_rx+0)+0,w
	asmopt push
	asmopt off
	xorlw	0^0	; case 0
	skipnz
	goto	l271
	xorlw	1^0	; case 1
	skipnz
	goto	l3199
	xorlw	2^1	; case 2
	skipnz
	goto	l271
	goto	l271
	asmopt pop

	line	60
	
l271:	
	return
	callstack 0
GLOBAL	__end_of_internet_rx
	__end_of_internet_rx:
	signat	_internet_rx,8313
	global	_transport_udp_rx

;; *************** function _transport_udp_rx *****************
;; Defined at:
;;		line 12 in file "F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/transport.c"
;; Parameters:    Size  Location     Type
;;  payload         1    wreg     PTR unsigned char 
;;		 -> buffer_rx(32), 
;;  size            1   19[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  payload         1   23[BANK0 ] PTR unsigned char 
;;		 -> buffer_rx(32), 
;;  packetHeader    1   22[BANK0 ] PTR struct UDPPacket
;;		 -> buffer_rx(32), 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       1       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       5       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 5
;; This function calls:
;;		_transport_udp_process
;; This function is called by:
;;		_internet_rx
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1,group=1
	file	"F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/transport.c"
	line	12
global __ptext10
__ptext10:	;psect for function _transport_udp_rx
psect	text10
	file	"F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/transport.c"
	line	12
	
_transport_udp_rx:	
;incstack = 0
	callstack 0
; Regs used in _transport_udp_rx: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;transport_udp_rx@payload stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(transport_udp_rx@payload)
	line	14
	
l3113:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/transport.c: 12: void transport_udp_rx(uint8_t *payload, uint8_t size);F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/transport.c: 13: {;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/transport.c: 14:     struct UDPPacket *packetHeader = (struct UDPPacket *)payload;
	movf	(transport_udp_rx@payload),w
	movwf	(??_transport_udp_rx+0)+0
	movf	(??_transport_udp_rx+0)+0,w
	movwf	(transport_udp_rx@packetHeader)
	line	15
	
l3115:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/transport.c: 15:     transport_udp_process(payload, size, packetHeader->destinationPort);
	movf	(transport_udp_rx@size),w
	movwf	(??_transport_udp_rx+0)+0
	movf	(??_transport_udp_rx+0)+0,w
	movwf	(transport_udp_process@size)
	movf	(transport_udp_rx@packetHeader),w
	addlw	04h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	swapf	indf,w
	andlw	(1<<4)-1
	movwf	(??_transport_udp_rx+1)+0
	movf	(??_transport_udp_rx+1)+0,w
	movwf	(transport_udp_process@port)
	movf	(transport_udp_rx@payload),w
	fcall	_transport_udp_process
	line	16
	
l612:	
	return
	callstack 0
GLOBAL	__end_of_transport_udp_rx
	__end_of_transport_udp_rx:
	signat	_transport_udp_rx,8313
	global	_transport_udp_process

;; *************** function _transport_udp_process *****************
;; Defined at:
;;		line 148 in file "F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/app/src/main.c"
;; Parameters:    Size  Location     Type
;;  payload         1    wreg     PTR unsigned char 
;;		 -> buffer_rx(32), 
;;  size            1   12[BANK0 ] unsigned char 
;;  port            1   13[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  payload         1   16[BANK0 ] PTR unsigned char 
;;		 -> buffer_rx(32), 
;;  ppnt            1   18[BANK0 ] PTR struct .
;;		 -> buffer_rx.object(24), buffer_rx(32), 
;;  count           1   15[BANK0 ] unsigned char 
;;  packet          1   17[BANK0 ] PTR const struct .
;;		 -> buffer_rx(32), 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       4       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       7       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		_Serial_write
;;		__$_logline_int
;;		__$_logline_str
;;		_memcpy
;; This function is called by:
;;		_transport_udp_rx
;; This function uses a non-reentrant model
;;
psect	text11,local,class=CODE,delta=2,merge=1,group=0
	file	"F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/app/src/main.c"
	line	148
global __ptext11
__ptext11:	;psect for function _transport_udp_process
psect	text11
	file	"F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/app/src/main.c"
	line	148
	
_transport_udp_process:	
;incstack = 0
	callstack 0
; Regs used in _transport_udp_process: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;transport_udp_process@payload stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(transport_udp_process@payload)
	line	150
	
l2961:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/app/src/main.c: 148: void transport_udp_process(uint8_t *payload, uint8_t size, uint8_t port);F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/app/src/main.c: 149: {;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/app/src/main.c: 150:     _$_logline_str((char *)"Recived Data"); Serial_write((uint8_t)'\n');
	movlw	low(((STR_4)|8000h))
	movwf	(__$_logline_str@string)
	movlw	high(((STR_4)|8000h))
	movwf	((__$_logline_str@string))+1
	fcall	__$_logline_str
	
l2963:	
	movlw	low(0Ah)
	fcall	_Serial_write
	line	152
	
l2965:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/app/src/main.c: 152:     OXPacket const *packet = (OXPacket *)payload;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(transport_udp_process@payload),w
	movwf	(??_transport_udp_process+0)+0
	movf	(??_transport_udp_process+0)+0,w
	movwf	(transport_udp_process@packet)
	line	153
	
l2967:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/app/src/main.c: 153:     _$_logline_str((char *)"Recived Data ="); Serial_write((uint8_t)'\n');
	movlw	low(((STR_5)|8000h))
	movwf	(__$_logline_str@string)
	movlw	high(((STR_5)|8000h))
	movwf	((__$_logline_str@string))+1
	fcall	__$_logline_str
	
l2969:	
	movlw	low(0Ah)
	fcall	_Serial_write
	line	154
	
l2971:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/app/src/main.c: 154:     _$_logline_str((char *)"data =");
	movlw	low(((STR_6)|8000h))
	movwf	(__$_logline_str@string)
	movlw	high(((STR_6)|8000h))
	movwf	((__$_logline_str@string))+1
	fcall	__$_logline_str
	line	156
	
l2973:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/app/src/main.c: 156:     if (port == 6) { { if (packet->type == 0) { } else if (packet->type == 1) { OXProperty *ppnt = packet->object; _$_logline_str((char *)"id"); Serial_write((uint8_t)'='); _$_logline_int((uint8_t)ppnt->id); Serial_write((uint8_t)'\n'); _$_logline_str((char *)"value"); Serial_write((uint8_t)'='); _$_logline_int((uint8_t)ppnt->value); Serial_write((uint8_t)'\n'); uint8_t count = packet->length; while (count--) { prop[ppnt->id].value = ppnt->value; ppnt++; } } }; return; };
		movlw	6
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	((transport_udp_process@port)),w
	btfss	status,2
	goto	u2141
	goto	u2140
u2141:
	goto	l3007
u2140:
	
l2975:	
	movf	(transport_udp_process@packet),w
	addlw	05h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	(indf),w
	btfss	status,2
	goto	u2151
	goto	u2150
u2151:
	goto	l2979
u2150:
	goto	l94
	
l2979:	
	movf	(transport_udp_process@packet),w
	addlw	05h
	movwf	fsr0
		decf	(indf),w
	btfss	status,2
	goto	u2161
	goto	u2160
u2161:
	goto	l94
u2160:
	
l2981:	
	movf	(transport_udp_process@packet),w
	addlw	07h
	movwf	(??_transport_udp_process+0)+0
	movf	(??_transport_udp_process+0)+0,w
	movwf	(transport_udp_process@ppnt)
	
l2983:	
	movlw	low(((STR_7)|8000h))
	movwf	(__$_logline_str@string)
	movlw	high(((STR_7)|8000h))
	movwf	((__$_logline_str@string))+1
	fcall	__$_logline_str
	
l2985:	
	movlw	low(03Dh)
	fcall	_Serial_write
	
l2987:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(transport_udp_process@ppnt),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	__$_logline_int
	
l2989:	
	movlw	low(0Ah)
	fcall	_Serial_write
	
l2991:	
	movlw	low(((STR_8)|8000h))
	movwf	(__$_logline_str@string)
	movlw	high(((STR_8)|8000h))
	movwf	((__$_logline_str@string))+1
	fcall	__$_logline_str
	
l2993:	
	movlw	low(03Dh)
	fcall	_Serial_write
	
l2995:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(transport_udp_process@ppnt),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	__$_logline_int
	
l2997:	
	movlw	low(0Ah)
	fcall	_Serial_write
	
l2999:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(transport_udp_process@packet),w
	addlw	06h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_transport_udp_process+0)+0
	movf	(??_transport_udp_process+0)+0,w
	movwf	(transport_udp_process@count)
	goto	l3005
	
l3001:	
	incf	(transport_udp_process@ppnt),w
	movwf	fsr0
	movf	indf,w
	movwf	(??_transport_udp_process+0)+0
	movf	(transport_udp_process@ppnt),w
	movwf	fsr0
	movf	indf,w
	addlw	low(_prop|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	(??_transport_udp_process+0)+0,w
	movwf	indf
	
l3003:	
	movlw	low(02h)
	movwf	(??_transport_udp_process+0)+0
	movf	(??_transport_udp_process+0)+0,w
	addwf	(transport_udp_process@ppnt),f
	
l3005:	
	movlw	01h
	subwf	(transport_udp_process@count),f
		incf	(((transport_udp_process@count))),w
	btfss	status,2
	goto	u2171
	goto	u2170
u2171:
	goto	l3001
u2170:
	goto	l94
	line	173
	
l3007:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/app/src/main.c: 173:     if (port == 6) { { memcpy(buffer_tx + sizeof(struct UDPPacket), prop, sizeof(prop)); }; return; };
		movlw	6
	xorwf	((transport_udp_process@port)),w
	btfss	status,2
	goto	u2181
	goto	u2180
u2181:
	goto	l94
u2180:
	
l3009:	
	movlw	(low(_prop|((0x0)<<8)))&0ffh
	movwf	(??_transport_udp_process+0)+0
	movf	(??_transport_udp_process+0)+0,w
	movwf	(memcpy@s1)
	movlw	02h
	movwf	(memcpy@n)
	movlw	0
	movwf	((memcpy@n))+1
	movlw	(low(_buffer_tx|((0x0)<<8)+05h))&0ffh
	fcall	_memcpy
	line	177
	
l94:	
	return
	callstack 0
GLOBAL	__end_of_transport_udp_process
	__end_of_transport_udp_process:
	signat	_transport_udp_process,12409
	global	_memcpy

;; *************** function _memcpy *****************
;; Defined at:
;;		line 27 in file "C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\memcpy.c"
;; Parameters:    Size  Location     Type
;;  d1              1    wreg     PTR void 
;;		 -> networkInfo(6), buffer_tx(32), 
;;  s1              1    2[COMMON] PTR const void 
;;		 -> networkInfo(6), network_pipe(5), prop(2), 
;;  n               2    3[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  d1              1    9[COMMON] PTR void 
;;		 -> networkInfo(6), buffer_tx(32), 
;;  s               1    8[COMMON] PTR const unsigned char 
;;		 -> networkInfo(6), network_pipe(5), prop(2), 
;;  d               1    7[COMMON] PTR unsigned char 
;;		 -> networkInfo(6), buffer_tx(32), 
;;  tmp             1    6[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      PTR void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         3       0       0       0       0
;;      Locals:         4       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         8       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_transport_udp_process
;;		_internet_setNetworkPipe
;; This function uses a non-reentrant model
;;
psect	text12,local,class=CODE,delta=2,merge=1,group=3
	file	"C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\memcpy.c"
	line	27
global __ptext12
__ptext12:	;psect for function _memcpy
psect	text12
	file	"C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\memcpy.c"
	line	27
	
_memcpy:	
;incstack = 0
	callstack 4
; Regs used in _memcpy: [wreg-fsr0h+status,2+status,0]
;memcpy@d1 stored from wreg
	movwf	(memcpy@d1)
	line	34
	
l2919:	
	movf	(memcpy@s1),w
	movwf	(??_memcpy+0)+0
	movf	(??_memcpy+0)+0,w
	movwf	(memcpy@s)
	line	35
	movf	(memcpy@d1),w
	movwf	(??_memcpy+0)+0
	movf	(??_memcpy+0)+0,w
	movwf	(memcpy@d)
	line	36
	goto	l1182
	line	37
	
l2921:	
	movf	(memcpy@s),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_memcpy+0)+0
	movf	(??_memcpy+0)+0,w
	movwf	(memcpy@tmp)
	
l2923:	
	movlw	low(01h)
	movwf	(??_memcpy+0)+0
	movf	(??_memcpy+0)+0,w
	addwf	(memcpy@s),f
	line	38
	
l2925:	
	movf	(memcpy@tmp),w
	movwf	(??_memcpy+0)+0
	movf	(memcpy@d),w
	movwf	fsr0
	movf	(??_memcpy+0)+0,w
	movwf	indf
	movlw	low(01h)
	movwf	(??_memcpy+0)+0
	movf	(??_memcpy+0)+0,w
	addwf	(memcpy@d),f
	line	39
	
l1182:	
	line	36
	movlw	01h
	subwf	(memcpy@n),f
	movlw	0
	skipc
	decf	(memcpy@n+1),f
	subwf	(memcpy@n+1),f
		incf	(((memcpy@n))),w
	skipz
	goto	u2121
	incf	(((memcpy@n+1))),w
	btfss	status,2
	goto	u2121
	goto	u2120
u2121:
	goto	l2921
u2120:
	line	41
	
l1185:	
	return
	callstack 0
GLOBAL	__end_of_memcpy
	__end_of_memcpy:
	signat	_memcpy,12409
	global	__$_logline_int

;; *************** function __$_logline_int *****************
;; Defined at:
;;		line 15 in file "F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/logline.c"
;; Parameters:    Size  Location     Type
;;  v               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  v               1   10[BANK0 ] unsigned char 
;;  t               1   11[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0       9       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_Serial_write
;;		___awdiv
;;		___awmod
;;		___lbdiv
;; This function is called by:
;;		_transport_udp_process
;; This function uses a non-reentrant model
;;
psect	text13,local,class=CODE,delta=2,merge=1,group=1
	file	"F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/logline.c"
	line	15
global __ptext13
__ptext13:	;psect for function __$_logline_int
psect	text13
	file	"F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/logline.c"
	line	15
	
__$_logline_int:	
;incstack = 0
	callstack 0
; Regs used in __$_logline_int: [wreg+status,2+status,0+pclath+cstack]
;__$_logline_int@v stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(__$_logline_int@v)
	line	18
	
l2903:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/logline.c: 15: void _$_logline_int(uint8_t v);F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/logline.c: 16: {;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/logline.c: 18:     uint8_t t = v > 99 ? 100 : v > 9 ? 10
	movlw	low(064h)
	subwf	(__$_logline_int@v),w
	skipnc
	goto	u2091
	goto	u2090
u2091:
	goto	l2911
u2090:
	
l2905:	
	movlw	low(0Ah)
	subwf	(__$_logline_int@v),w
	skipnc
	goto	u2101
	goto	u2100
u2101:
	goto	l2909
u2100:
	
l2907:	
	movlw	01h
	movwf	(__$_logline_int$872)
	movlw	0
	movwf	((__$_logline_int$872))+1
	goto	l701
	
l2909:	
	movlw	0Ah
	movwf	(__$_logline_int$872)
	movlw	0
	movwf	((__$_logline_int$872))+1
	
l701:	
	movf	(__$_logline_int$872+1),w
	movwf	(__$_logline_int$871+1)
	movf	(__$_logline_int$872),w
	movwf	(__$_logline_int$871)
	goto	l697
	
l2911:	
	movlw	064h
	movwf	(__$_logline_int$871)
	movlw	0
	movwf	((__$_logline_int$871))+1
	
l697:	
	movf	(__$_logline_int$871),w
	movwf	(??__$_logline_int+0)+0
	movf	(??__$_logline_int+0)+0,w
	movwf	(__$_logline_int@t)
	line	22
	
l2913:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/logline.c: 21:     {;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/logline.c: 22:         Serial_write('0' + (v / t) % 10);
	movlw	0Ah
	movwf	(___awmod@divisor)
	movlw	0
	movwf	((___awmod@divisor))+1
	movf	(__$_logline_int@t),w
	movwf	(??__$_logline_int+0)+0
	movf	(??__$_logline_int+0)+0,w
	movwf	(___lbdiv@divisor)
	movf	(__$_logline_int@v),w
	fcall	___lbdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??__$_logline_int+1)+0
	clrf	(??__$_logline_int+1)+0+1
	movf	0+(??__$_logline_int+1)+0,w
	movwf	(___awmod@dividend)
	movf	1+(??__$_logline_int+1)+0,w
	movwf	(___awmod@dividend+1)
	fcall	___awmod
	movf	(0+(?___awmod)),w
	addlw	030h
	fcall	_Serial_write
	line	23
	
l2915:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/logline.c: 23:         t /= 10;
	movlw	0Ah
	movwf	(___awdiv@divisor)
	movlw	0
	movwf	((___awdiv@divisor))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(__$_logline_int@t),w
	movwf	(??__$_logline_int+0)+0
	clrf	(??__$_logline_int+0)+0+1
	movf	0+(??__$_logline_int+0)+0,w
	movwf	(___awdiv@dividend)
	movf	1+(??__$_logline_int+0)+0,w
	movwf	(___awdiv@dividend+1)
	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??__$_logline_int+2)+0
	movf	(??__$_logline_int+2)+0,w
	movwf	(__$_logline_int@t)
	line	24
	
l2917:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/logline.c: 24:     } while (t > 0);
	movf	((__$_logline_int@t)),w
	btfss	status,2
	goto	u2111
	goto	u2110
u2111:
	goto	l2913
u2110:
	line	25
	
l704:	
	return
	callstack 0
GLOBAL	__end_of__$_logline_int
	__end_of__$_logline_int:
	signat	__$_logline_int,4217
	global	___lbdiv

;; *************** function ___lbdiv *****************
;; Defined at:
;;		line 4 in file "C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\lbdiv.c"
;; Parameters:    Size  Location     Type
;;  dividend        1    wreg     unsigned char 
;;  divisor         1    2[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  dividend        1    4[COMMON] unsigned char 
;;  quotient        1    6[COMMON] unsigned char 
;;  counter         1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         3       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         5       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		__$_logline_int
;; This function uses a non-reentrant model
;;
psect	text14,local,class=CODE,delta=2,merge=1,group=2
	file	"C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\lbdiv.c"
	line	4
global __ptext14
__ptext14:	;psect for function ___lbdiv
psect	text14
	file	"C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\lbdiv.c"
	line	4
	
___lbdiv:	
;incstack = 0
	callstack 0
; Regs used in ___lbdiv: [wreg+status,2+status,0]
;___lbdiv@dividend stored from wreg
	movwf	(___lbdiv@dividend)
	line	9
	
l2149:	
	clrf	(___lbdiv@quotient)
	line	10
	
l2151:	
	movf	((___lbdiv@divisor)),w
	btfsc	status,2
	goto	u1211
	goto	u1210
u1211:
	goto	l2171
u1210:
	line	11
	
l2153:	
	clrf	(___lbdiv@counter)
	incf	(___lbdiv@counter),f
	line	12
	goto	l2159
	line	13
	
l2155:	
	clrc
	rlf	(___lbdiv@divisor),f

	line	14
	
l2157:	
	movlw	low(01h)
	movwf	(??___lbdiv+0)+0
	movf	(??___lbdiv+0)+0,w
	addwf	(___lbdiv@counter),f
	line	12
	
l2159:	
	btfss	(___lbdiv@divisor),(7)&7
	goto	u1221
	goto	u1220
u1221:
	goto	l2155
u1220:
	line	17
	
l2161:	
	clrc
	rlf	(___lbdiv@quotient),f

	line	18
	movf	(___lbdiv@divisor),w
	subwf	(___lbdiv@dividend),w
	skipc
	goto	u1231
	goto	u1230
u1231:
	goto	l2167
u1230:
	line	19
	
l2163:	
	movf	(___lbdiv@divisor),w
	subwf	(___lbdiv@dividend),f
	line	20
	
l2165:	
	bsf	(___lbdiv@quotient)+(0/8),(0)&7
	line	22
	
l2167:	
	clrc
	rrf	(___lbdiv@divisor),f

	line	23
	
l2169:	
	movlw	01h
	subwf	(___lbdiv@counter),f
	btfss	status,2
	goto	u1241
	goto	u1240
u1241:
	goto	l2161
u1240:
	line	25
	
l2171:	
	movf	(___lbdiv@quotient),w
	line	26
	
l937:	
	return
	callstack 0
GLOBAL	__end_of___lbdiv
	__end_of___lbdiv:
	signat	___lbdiv,8313
	global	___awmod

;; *************** function ___awmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\awmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    7[COMMON] int 
;;  dividend        2    9[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  sign            1    2[BANK0 ] unsigned char 
;;  counter         1    1[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    7[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         4       3       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		__$_logline_int
;; This function uses a non-reentrant model
;;
psect	text15,local,class=CODE,delta=2,merge=1,group=2
	file	"C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\awmod.c"
	line	5
global __ptext15
__ptext15:	;psect for function ___awmod
psect	text15
	file	"C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\awmod.c"
	line	5
	
___awmod:	
;incstack = 0
	callstack 0
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	12
	
l2865:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___awmod@sign)
	line	13
	
l2867:	
	btfss	(___awmod@dividend+1),7
	goto	u2001
	goto	u2000
u2001:
	goto	l2873
u2000:
	line	14
	
l2869:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	15
	
l2871:	
	clrf	(___awmod@sign)
	incf	(___awmod@sign),f
	line	17
	
l2873:	
	btfss	(___awmod@divisor+1),7
	goto	u2011
	goto	u2010
u2011:
	goto	l2877
u2010:
	line	18
	
l2875:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	line	19
	
l2877:	
	movf	((___awmod@divisor)),w
iorwf	((___awmod@divisor+1)),w
	btfsc	status,2
	goto	u2021
	goto	u2020
u2021:
	goto	l2895
u2020:
	line	20
	
l2879:	
	clrf	(___awmod@counter)
	incf	(___awmod@counter),f
	line	21
	goto	l2885
	line	22
	
l2881:	
	movlw	01h
	
u2035:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u2035
	line	23
	
l2883:	
	movlw	low(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	line	21
	
l2885:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u2041
	goto	u2040
u2041:
	goto	l2881
u2040:
	line	26
	
l2887:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u2055
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u2055:
	skipc
	goto	u2051
	goto	u2050
u2051:
	goto	l2891
u2050:
	line	27
	
l2889:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	line	28
	
l2891:	
	movlw	01h
	
u2065:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u2065
	line	29
	
l2893:	
	movlw	01h
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u2071
	goto	u2070
u2071:
	goto	l2887
u2070:
	line	31
	
l2895:	
	movf	((___awmod@sign)),w
	btfsc	status,2
	goto	u2081
	goto	u2080
u2081:
	goto	l2899
u2080:
	line	32
	
l2897:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	33
	
l2899:	
	movf	(___awmod@dividend+1),w
	movwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	movwf	(?___awmod)
	line	34
	
l897:	
	return
	callstack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
	signat	___awmod,8314
	global	___awdiv

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\awdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    2[COMMON] int 
;;  dividend        2    4[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    9[COMMON] int 
;;  sign            1    8[COMMON] unsigned char 
;;  counter         1    7[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    2[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         4       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         9       0       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		__$_logline_int
;; This function uses a non-reentrant model
;;
psect	text16,local,class=CODE,delta=2,merge=1,group=2
	file	"C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\awdiv.c"
	line	5
global __ptext16
__ptext16:	;psect for function ___awdiv
psect	text16
	file	"C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\awdiv.c"
	line	5
	
___awdiv:	
;incstack = 0
	callstack 0
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	13
	
l2067:	
	clrf	(___awdiv@sign)
	line	14
	
l2069:	
	btfss	(___awdiv@divisor+1),7
	goto	u1021
	goto	u1020
u1021:
	goto	l2075
u1020:
	line	15
	
l2071:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	16
	
l2073:	
	clrf	(___awdiv@sign)
	incf	(___awdiv@sign),f
	line	18
	
l2075:	
	btfss	(___awdiv@dividend+1),7
	goto	u1031
	goto	u1030
u1031:
	goto	l2081
u1030:
	line	19
	
l2077:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	20
	
l2079:	
	movlw	low(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	line	22
	
l2081:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	23
	
l2083:	
	movf	((___awdiv@divisor)),w
iorwf	((___awdiv@divisor+1)),w
	btfsc	status,2
	goto	u1041
	goto	u1040
u1041:
	goto	l2103
u1040:
	line	24
	
l2085:	
	clrf	(___awdiv@counter)
	incf	(___awdiv@counter),f
	line	25
	goto	l2091
	line	26
	
l2087:	
	movlw	01h
	
u1055:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u1055
	line	27
	
l2089:	
	movlw	low(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	line	25
	
l2091:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u1061
	goto	u1060
u1061:
	goto	l2087
u1060:
	line	30
	
l2093:	
	movlw	01h
	
u1075:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u1075
	line	31
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u1085
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u1085:
	skipc
	goto	u1081
	goto	u1080
u1081:
	goto	l2099
u1080:
	line	32
	
l2095:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	33
	
l2097:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	line	35
	
l2099:	
	movlw	01h
	
u1095:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u1095
	line	36
	
l2101:	
	movlw	01h
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u1101
	goto	u1100
u1101:
	goto	l2093
u1100:
	line	38
	
l2103:	
	movf	((___awdiv@sign)),w
	btfsc	status,2
	goto	u1111
	goto	u1110
u1111:
	goto	l2107
u1110:
	line	39
	
l2105:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	line	40
	
l2107:	
	movf	(___awdiv@quotient+1),w
	movwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	movwf	(?___awdiv)
	line	41
	
l884:	
	return
	callstack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
	signat	___awdiv,8314
	global	_internet_relay

;; *************** function _internet_relay *****************
;; Defined at:
;;		line 61 in file "F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/internet.c"
;; Parameters:    Size  Location     Type
;;  payload         1    wreg     PTR unsigned char 
;;		 -> buffer_rx(32), buffer_tx(32), 
;;  size            1    3[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  payload         1    7[BANK0 ] PTR unsigned char 
;;		 -> buffer_rx(32), buffer_tx(32), 
;;  packetHeader    1    6[BANK0 ] PTR struct Packet
;;		 -> buffer_rx(32), buffer_tx(32), 
;;  dstMask         1    5[BANK0 ] unsigned char 
;;  status          1    0        unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       1       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       5       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 6
;; This function calls:
;;		_RF24_openReadingPipe
;;		_RF24_openWritingPipe
;;		_RF24_startListening
;;		_RF24_stopListening
;;		_RF24_write
;;		_Serial_write
;;		__$_logline_str
;;		_internet_calculateMask
;;		_internet_hasChild
;; This function is called by:
;;		_internet_tx
;;		_internet_rx
;; This function uses a non-reentrant model
;;
psect	text17,local,class=CODE,delta=2,merge=1,group=1
	file	"F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/internet.c"
	line	61
global __ptext17
__ptext17:	;psect for function _internet_relay
psect	text17
	file	"F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/internet.c"
	line	61
	
_internet_relay:	
;incstack = 0
;; hardware stack exceeded
	callstack 0
; Regs used in _internet_relay: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;internet_relay@payload stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(internet_relay@payload)
	line	64
	
l3055:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/internet.c: 61: void internet_relay(uint8_t *payload, uint8_t size);F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/internet.c: 62: {;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/internet.c: 64:     struct Packet *packetHeader = (struct Packet *)payload;
	movf	(internet_relay@payload),w
	movwf	(??_internet_relay+0)+0
	movf	(??_internet_relay+0)+0,w
	movwf	(internet_relay@packetHeader)
	line	65
	
l3057:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/internet.c: 65:     if (node.address == 0)
	movf	((_node)),w
	btfss	status,2
	goto	u2241
	goto	u2240
u2241:
	goto	l3061
u2240:
	goto	l281
	line	72
	
l3061:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/internet.c: 72:     uint8_t dstMask = internet_calculateMask(packetHeader->destination);
	movf	(internet_relay@packetHeader),w
	addlw	03h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	_internet_calculateMask
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_internet_relay+0)+0
	movf	(??_internet_relay+0)+0,w
	movwf	(internet_relay@dstMask)
	line	74
	
l3063:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/internet.c: 73:     uint8_t status;;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/internet.c: 74:     if (dstMask > node.mask && internet_hasChild(packetHeader->destination))
	movf	(internet_relay@dstMask),w
	subwf	0+(_node)+01h,w
	skipnc
	goto	u2251
	goto	u2250
u2251:
	goto	l3093
u2250:
	
l3065:	
	movf	(internet_relay@packetHeader),w
	addlw	03h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	_internet_hasChild
	xorlw	0
	skipnz
	goto	u2261
	goto	u2260
u2261:
	goto	l3093
u2260:
	line	76
	
l3067:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/internet.c: 75:     {;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/internet.c: 76:         if (packetHeader->destination & node.routingMask)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(internet_relay@packetHeader),w
	addlw	03h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	andwf	0+(_node)+02h,w
	btfsc	status,2
	goto	u2271
	goto	u2270
u2271:
	goto	l3081
u2270:
	line	79
	
l3069:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/internet.c: 77:         {;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/internet.c: 79:             networkInfo.networkPipe[0] = node.child1;
	movf	0+(_node)+04h,w
	movwf	(??_internet_relay+0)+0
	movf	(??_internet_relay+0)+0,w
	movwf	(_networkInfo)
	line	80
	
l3071:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/internet.c: 80:             RF24_openReadingPipe(0, networkInfo.networkPipe);
	movlw	(low(_networkInfo|((0x0)<<8))&0ffh)
	movwf	(RF24_openReadingPipe@address)
	movlw	(0x0)
	movwf	(RF24_openReadingPipe@address+1)
	movlw	low(0)
	fcall	_RF24_openReadingPipe
	line	81
	
l3073:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/internet.c: 81:             RF24_openWritingPipe(networkInfo.networkPipe);
	movlw	(low(_networkInfo|((0x0)<<8)))&0ffh
	fcall	_RF24_openWritingPipe
	line	82
	
l3075:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/internet.c: 82:             RF24_stopListening();
	fcall	_RF24_stopListening
	line	83
	
l3077:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/internet.c: 83:             RF24_write(payload, size);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(internet_relay@size),w
	movwf	(??_internet_relay+0)+0
	movf	(??_internet_relay+0)+0,w
	movwf	(RF24_write@len)
	movf	(internet_relay@payload),w
	fcall	_RF24_write
	line	84
	
l3079:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/internet.c: 84:             RF24_openReadingPipe(0, BASE_PIPE);
	movlw	low(((_BASE_PIPE)|8000h))
	movwf	(RF24_openReadingPipe@address)
	movlw	high(((_BASE_PIPE)|8000h))
	movwf	((RF24_openReadingPipe@address))+1
	movlw	low(0)
	fcall	_RF24_openReadingPipe
	line	85
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/internet.c: 85:         }
	goto	l3111
	line	89
	
l3081:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/internet.c: 87:         {;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/internet.c: 89:             networkInfo.networkPipe[0] = node.child0;
	movf	0+(_node)+03h,w
	movwf	(??_internet_relay+0)+0
	movf	(??_internet_relay+0)+0,w
	movwf	(_networkInfo)
	line	90
	
l3083:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/internet.c: 90:             RF24_openReadingPipe(0, networkInfo.networkPipe);
	movlw	(low(_networkInfo|((0x0)<<8))&0ffh)
	movwf	(RF24_openReadingPipe@address)
	movlw	(0x0)
	movwf	(RF24_openReadingPipe@address+1)
	movlw	low(0)
	fcall	_RF24_openReadingPipe
	line	91
	
l3085:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/internet.c: 91:             RF24_openWritingPipe(networkInfo.networkPipe);
	movlw	(low(_networkInfo|((0x0)<<8)))&0ffh
	fcall	_RF24_openWritingPipe
	line	92
	
l3087:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/internet.c: 92:             RF24_stopListening();
	fcall	_RF24_stopListening
	line	93
	
l3089:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/internet.c: 93:             RF24_write(payload, size);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(internet_relay@size),w
	movwf	(??_internet_relay+0)+0
	movf	(??_internet_relay+0)+0,w
	movwf	(RF24_write@len)
	movf	(internet_relay@payload),w
	fcall	_RF24_write
	line	94
	
l3091:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/internet.c: 94:             RF24_openReadingPipe(0, BASE_PIPE);
	movlw	low(((_BASE_PIPE)|8000h))
	movwf	(RF24_openReadingPipe@address)
	movlw	high(((_BASE_PIPE)|8000h))
	movwf	((RF24_openReadingPipe@address))+1
	movlw	low(0)
	fcall	_RF24_openReadingPipe
	goto	l3111
	line	100
	
l3093:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/internet.c: 98:     {;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/internet.c: 100:         networkInfo.networkPipe[0] = node.address;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_node),w
	movwf	(??_internet_relay+0)+0
	movf	(??_internet_relay+0)+0,w
	movwf	(_networkInfo)
	line	101
	
l3095:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/internet.c: 101:         RF24_openReadingPipe(0, networkInfo.networkPipe);
	movlw	(low(_networkInfo|((0x0)<<8))&0ffh)
	movwf	(RF24_openReadingPipe@address)
	movlw	(0x0)
	movwf	(RF24_openReadingPipe@address+1)
	movlw	low(0)
	fcall	_RF24_openReadingPipe
	line	102
	
l3097:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/internet.c: 102:         RF24_openWritingPipe(networkInfo.networkPipe);
	movlw	(low(_networkInfo|((0x0)<<8)))&0ffh
	fcall	_RF24_openWritingPipe
	line	103
	
l3099:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/internet.c: 103:         RF24_stopListening();
	fcall	_RF24_stopListening
	line	104
	
l3101:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/internet.c: 104:         _$_logline_str((char *)"payload =");
	movlw	low(((STR_9)|8000h))
	movwf	(__$_logline_str@string)
	movlw	high(((STR_9)|8000h))
	movwf	((__$_logline_str@string))+1
	fcall	__$_logline_str
	line	105
	
l3103:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/internet.c: 105:         _$_logline_str((char *)payload); Serial_write((uint8_t)'\n');
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(internet_relay@payload),w
	movwf	(__$_logline_str@string)
	movlw	(0x0)
	movwf	(__$_logline_str@string+1)
	fcall	__$_logline_str
	
l3105:	
	movlw	low(0Ah)
	fcall	_Serial_write
	line	106
	
l3107:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/internet.c: 106:         RF24_write(payload, size);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(internet_relay@size),w
	movwf	(??_internet_relay+0)+0
	movf	(??_internet_relay+0)+0,w
	movwf	(RF24_write@len)
	movf	(internet_relay@payload),w
	fcall	_RF24_write
	line	108
	
l3109:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/internet.c: 108:         RF24_openReadingPipe(0, BASE_PIPE);
	movlw	low(((_BASE_PIPE)|8000h))
	movwf	(RF24_openReadingPipe@address)
	movlw	high(((_BASE_PIPE)|8000h))
	movwf	((RF24_openReadingPipe@address))+1
	movlw	low(0)
	fcall	_RF24_openReadingPipe
	line	110
	
l3111:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/internet.c: 110:     RF24_startListening();
	fcall	_RF24_startListening
	line	111
	
l281:	
	return
	callstack 0
GLOBAL	__end_of_internet_relay
	__end_of_internet_relay:
	signat	_internet_relay,8313
	global	_internet_hasChild

;; *************** function _internet_hasChild *****************
;; Defined at:
;;		line 133 in file "F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/internet.c"
;; Parameters:    Size  Location     Type
;;  address         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  address         1    3[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_internet_relay
;; This function uses a non-reentrant model
;;
psect	text18,local,class=CODE,delta=2,merge=1,group=1
	line	133
global __ptext18
__ptext18:	;psect for function _internet_hasChild
psect	text18
	file	"F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/internet.c"
	line	133
	
_internet_hasChild:	
;incstack = 0
	callstack 2
; Regs used in _internet_hasChild: [wreg+status,2+status,0]
;internet_hasChild@address stored from wreg
	movwf	(internet_hasChild@address)
	line	135
	
l2315:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/internet.c: 133: uint8_t internet_hasChild(uint8_t address);F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/internet.c: 134: {;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/internet.c: 135:     return (address & node.mask) == (node.address & node.mask);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_node),w
	andwf	0+(_node)+01h,w
	movwf	(??_internet_hasChild+0)+0
	movf	0+(_node)+01h,w
	andwf	(internet_hasChild@address),w
	xorwf	0+(??_internet_hasChild+0)+0,w
	skipnz
	goto	u1401
	goto	u1400
u1401:
	movlw	1
	goto	u1410
u1400:
	movlw	0
u1410:
	line	136
	
l297:	
	return
	callstack 0
GLOBAL	__end_of_internet_hasChild
	__end_of_internet_hasChild:
	signat	_internet_hasChild,4217
	global	_internet_calculateMask

;; *************** function _internet_calculateMask *****************
;; Defined at:
;;		line 112 in file "F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/internet.c"
;; Parameters:    Size  Location     Type
;;  address         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  address         1    2[COMMON] unsigned char 
;;  mask            1    3[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_internet_relay
;;		_internet_setAddress
;; This function uses a non-reentrant model
;;
psect	text19,local,class=CODE,delta=2,merge=1,group=1
	line	112
global __ptext19
__ptext19:	;psect for function _internet_calculateMask
psect	text19
	file	"F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/internet.c"
	line	112
	
_internet_calculateMask:	
;incstack = 0
	callstack 2
; Regs used in _internet_calculateMask: [wreg+status,2+status,0]
;internet_calculateMask@address stored from wreg
	movwf	(internet_calculateMask@address)
	line	114
	
l2303:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/internet.c: 112: uint8_t internet_calculateMask(uint8_t address);F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/internet.c: 113: {;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/internet.c: 114:     uint8_t mask = 0;
	clrf	(internet_calculateMask@mask)
	line	115
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/internet.c: 115:     while (address > 1)
	goto	l2309
	line	117
	
l2305:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/internet.c: 116:     {;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/internet.c: 117:         mask = (mask << 1) | 1;
	setc
	rlf	(internet_calculateMask@mask),f
	line	118
	
l2307:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/internet.c: 118:         address >>= 1;
	clrc
	rrf	(internet_calculateMask@address),f

	line	115
	
l2309:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/internet.c: 115:     while (address > 1)
	movlw	low(02h)
	subwf	(internet_calculateMask@address),w
	skipnc
	goto	u1391
	goto	u1390
u1391:
	goto	l2305
u1390:
	line	120
	
l2311:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/internet.c: 120:     return mask;
	movf	(internet_calculateMask@mask),w
	line	121
	
l291:	
	return
	callstack 0
GLOBAL	__end_of_internet_calculateMask
	__end_of_internet_calculateMask:
	signat	_internet_calculateMask,4217
	global	__$_logline_str

;; *************** function __$_logline_str *****************
;; Defined at:
;;		line 5 in file "F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/logline.c"
;; Parameters:    Size  Location     Type
;;  string          2    3[COMMON] PTR unsigned char 
;;		 -> STR_27(23), STR_26(3), STR_25(6), STR_24(6), 
;;		 -> STR_23(6), STR_22(6), STR_21(6), STR_20(6), 
;;		 -> STR_19(11), STR_18(7), STR_17(9), STR_16(6), 
;;		 -> STR_15(11), STR_14(9), STR_13(10), STR_12(6), 
;;		 -> STR_11(7), STR_10(23), STR_9(10), buffer_rx(32), 
;;		 -> STR_8(6), STR_7(3), STR_6(7), STR_5(15), 
;;		 -> STR_4(13), STR_3(19), buffer_tx(32), STR_2(15), 
;;		 -> STR_1(52), 
;; Auto vars:     Size  Location     Type
;;  limit           1    6[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_Serial_write
;; This function is called by:
;;		_main
;;		_transport_udp_process
;;		_internet_relay
;; This function uses a non-reentrant model
;;
psect	text20,local,class=CODE,delta=2,merge=1,group=1
	file	"F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/logline.c"
	line	5
global __ptext20
__ptext20:	;psect for function __$_logline_str
psect	text20
	file	"F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/logline.c"
	line	5
	
__$_logline_str:	
;incstack = 0
	callstack 1
; Regs used in __$_logline_str: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	7
	
l2175:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/logline.c: 5: void _$_logline_str(char *string);F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/logline.c: 6: {;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/logline.c: 7:     uint8_t limit=100;
	movlw	low(064h)
	movwf	(??__$_logline_str+0)+0
	movf	(??__$_logline_str+0)+0,w
	movwf	(__$_logline_str@limit)
	line	8
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/logline.c: 8:     while (*string != '\0' && limit--)
	goto	l2181
	line	10
	
l2177:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/logline.c: 9:     {;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/logline.c: 10:         Serial_write(*(uint8_t *)string);
	movf	(__$_logline_str@string+1),w
	movwf	btemp+1
	movf	(__$_logline_str@string),w
	movwf	fsr0
	fcall	stringtab
	fcall	_Serial_write
	line	11
	
l2179:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/logline.c: 11:         string++;
	movlw	01h
	addwf	(__$_logline_str@string),f
	skipnc
	incf	(__$_logline_str@string+1),f
	movlw	0
	addwf	(__$_logline_str@string+1),f
	line	8
	
l2181:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/logline.c: 8:     while (*string != '\0' && limit--)
	movf	(__$_logline_str@string+1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	btemp+1
	movf	(__$_logline_str@string),w
	movwf	fsr0
	fcall	stringtab
	xorlw	0
	skipnz
	goto	u1251
	goto	u1250
u1251:
	goto	l691
u1250:
	
l2183:	
	movlw	01h
	subwf	(__$_logline_str@limit),f
		incf	(((__$_logline_str@limit))),w
	btfss	status,2
	goto	u1261
	goto	u1260
u1261:
	goto	l2177
u1260:
	line	13
	
l691:	
	return
	callstack 0
GLOBAL	__end_of__$_logline_str
	__end_of__$_logline_str:
	signat	__$_logline_str,4217
	global	_Serial_write

;; *************** function _Serial_write *****************
;; Defined at:
;;		line 36 in file "F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/Serial.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_transport_udp_process
;;		_internet_relay
;;		__$_logline_str
;;		__$_logline_int
;; This function uses a non-reentrant model
;;
psect	text21,local,class=CODE,delta=2,merge=1,group=1
	file	"F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/Serial.c"
	line	36
global __ptext21
__ptext21:	;psect for function _Serial_write
psect	text21
	file	"F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/Serial.c"
	line	36
	
_Serial_write:	
;incstack = 0
	callstack 1
; Regs used in _Serial_write: [wreg]
;Serial_write@data stored from wreg
	movwf	(Serial_write@data)
	line	38
	
l2055:	
	line	39
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/Serial.c: 39:         ;
	
l672:	
	line	38
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/Serial.c: 38:     while (!TRMT)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(1217/8)^080h,(1217)&7	;volatile
	goto	u1011
	goto	u1010
u1011:
	goto	l672
u1010:
	line	40
	
l2057:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/Serial.c: 40:     TXREG = data;
	movf	(Serial_write@data),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(25)	;volatile
	line	41
	
l675:	
	return
	callstack 0
GLOBAL	__end_of_Serial_write
	__end_of_Serial_write:
	signat	_Serial_write,4217
	global	_RF24_write

;; *************** function _RF24_write *****************
;; Defined at:
;;		line 192 in file "F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c"
;; Parameters:    Size  Location     Type
;;  buf             1    wreg     PTR void 
;;		 -> buffer_rx(32), buffer_tx(32), 
;;  len             1    0[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  buf             1    1[BANK0 ] PTR void 
;;		 -> buffer_rx(32), buffer_tx(32), 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       1       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1       2       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 5
;; This function calls:
;;		_RF24_flush_tx
;;		_RF24_get_status
;;		_RF24_write_register
;;		_SPI_exchangeByte
;; This function is called by:
;;		_internet_relay
;; This function uses a non-reentrant model
;;
psect	text22,local,class=CODE,delta=2,merge=1,group=1
	file	"F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c"
	line	192
global __ptext22
__ptext22:	;psect for function _RF24_write
psect	text22
	file	"F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c"
	line	192
	
_RF24_write:	
;incstack = 0
;; hardware stack exceeded
	callstack 0
; Regs used in _RF24_write: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;RF24_write@buf stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(RF24_write@buf)
	line	196
	
l3029:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 192: uint8_t RF24_write(void *buf, uint8_t len);F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 193: {;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 196:     RD3 = 0;
	bcf	(67/8),(67)&7	;volatile
	line	197
	
l3031:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 197:     RF24_attr_status = SPI_exchangeByte(0xA0);
	movlw	low(0A0h)
	fcall	_SPI_exchangeByte
	movwf	(??_RF24_write+0)+0
	movf	(??_RF24_write+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_RF24_attr_status)
	line	198
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 198:     while (len--)
	goto	l3037
	line	200
	
l3033:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 199:     {;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 200:         SPI_exchangeByte(*(uint8_t *)buf++);
	movf	(RF24_write@buf),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	_SPI_exchangeByte
	
l3035:	
	movlw	low(01h)
	movwf	(??_RF24_write+0)+0
	movf	(??_RF24_write+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(RF24_write@buf),f
	line	198
	
l3037:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 198:     while (len--)
	movlw	01h
	subwf	(RF24_write@len),f
		incf	(((RF24_write@len))),w
	btfss	status,2
	goto	u2211
	goto	u2210
u2211:
	goto	l3033
u2210:
	
l419:	
	line	202
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 202:     RD3 = 1;
	bsf	(67/8),(67)&7	;volatile
	line	204
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 204:     RD2 = 1;
	bsf	(66/8),(66)&7	;volatile
	line	205
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 205:     while (!(RF24_get_status() & ((1 << (5)) | (1 << (4)))))
	
l3039:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 205:     while (!(RF24_get_status() & ((1 << (5)) | (1 << (4)))))
	fcall	_RF24_get_status
	andlw	030h
	btfsc	status,2
	goto	u2221
	goto	u2220
u2221:
	goto	l3039
u2220:
	
l422:	
	line	210
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 210:     RD2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(66/8),(66)&7	;volatile
	line	211
	
l3041:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 211:     RF24_write_register(0x07, (1 << (6)) | (1 << (5)) | (1 << (4)));
	movlw	low(070h)
	movwf	(??_RF24_write+0)+0
	movf	(??_RF24_write+0)+0,w
	movwf	(RF24_write_register@value)
	movlw	low(07h)
	fcall	_RF24_write_register
	line	214
	
l3043:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 214:     if (RF24_attr_status & (1 << (4)))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(_RF24_attr_status),(4)&7
	goto	u2231
	goto	u2230
u2231:
	goto	l424
u2230:
	line	216
	
l3045:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 215:     {;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 216:         RF24_flush_tx();
	fcall	_RF24_flush_tx
	line	220
	
l424:	
	return
	callstack 0
GLOBAL	__end_of_RF24_write
	__end_of_RF24_write:
	signat	_RF24_write,8313
	global	_RF24_stopListening

;; *************** function _RF24_stopListening *****************
;; Defined at:
;;		line 156 in file "F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		_RF24_read_register
;;		_RF24_write_register
;; This function is called by:
;;		_internet_relay
;; This function uses a non-reentrant model
;;
psect	text23,local,class=CODE,delta=2,merge=1,group=1
	line	156
global __ptext23
__ptext23:	;psect for function _RF24_stopListening
psect	text23
	file	"F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c"
	line	156
	
_RF24_stopListening:	
;incstack = 0
	callstack 0
; Regs used in _RF24_stopListening: [wreg+status,2+status,0+pclath+cstack]
	line	158
	
l3023:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 158:     RD2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(66/8),(66)&7	;volatile
	line	159
	
l3025:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 159:     RF24_write_register(0x00, RF24_read_register(0x00) & ~(1 << (0)));
	movlw	low(0)
	fcall	_RF24_read_register
	andlw	0FEh
	movwf	(??_RF24_stopListening+0)+0
	movf	(??_RF24_stopListening+0)+0,w
	movwf	(RF24_write_register@value)
	movlw	low(0)
	fcall	_RF24_write_register
	line	160
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 160:     RF24_write_register(0x02, RF24_read_register(0x02) | 1);
	movlw	low(02h)
	fcall	_RF24_read_register
	iorlw	01h
	movwf	(??_RF24_stopListening+0)+0
	movf	(??_RF24_stopListening+0)+0,w
	movwf	(RF24_write_register@value)
	movlw	low(02h)
	fcall	_RF24_write_register
	line	161
	
l3027:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 161:     _delay((unsigned long)((130)*(16000000/4000000.0)));
	asmopt push
asmopt off
	movlw	173
movwf	((??_RF24_stopListening+0)+0)
	u2477:
decfsz	(??_RF24_stopListening+0)+0,f
	goto	u2477
asmopt pop

	line	162
	
l402:	
	return
	callstack 0
GLOBAL	__end_of_RF24_stopListening
	__end_of_RF24_stopListening:
	signat	_RF24_stopListening,89
	global	_RF24_openWritingPipe

;; *************** function _RF24_openWritingPipe *****************
;; Defined at:
;;		line 450 in file "F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c"
;; Parameters:    Size  Location     Type
;;  address         1    wreg     PTR unsigned char 
;;		 -> networkInfo(6), 
;; Auto vars:     Size  Location     Type
;;  address         1    9[COMMON] PTR unsigned char 
;;		 -> networkInfo(6), 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		_RF24_write_n_register
;; This function is called by:
;;		_internet_relay
;; This function uses a non-reentrant model
;;
psect	text24,local,class=CODE,delta=2,merge=1,group=1
	line	450
global __ptext24
__ptext24:	;psect for function _RF24_openWritingPipe
psect	text24
	file	"F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c"
	line	450
	
_RF24_openWritingPipe:	
;incstack = 0
	callstack 0
; Regs used in _RF24_openWritingPipe: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;RF24_openWritingPipe@address stored from wreg
	movwf	(RF24_openWritingPipe@address)
	line	452
	
l3021:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 450: void RF24_openWritingPipe(uint8_t *address);F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 451: {;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 452:     RF24_write_n_register(0x10, address, 5);
	movf	(RF24_openWritingPipe@address),w
	movwf	(RF24_write_n_register@buffer)
	movlw	(0x0)
	movwf	(RF24_write_n_register@buffer+1)
	movlw	low(05h)
	movwf	(??_RF24_openWritingPipe+0)+0
	movf	(??_RF24_openWritingPipe+0)+0,w
	movwf	(RF24_write_n_register@length)
	movlw	low(010h)
	fcall	_RF24_write_n_register
	line	453
	
l513:	
	return
	callstack 0
GLOBAL	__end_of_RF24_openWritingPipe
	__end_of_RF24_openWritingPipe:
	signat	_RF24_openWritingPipe,4217
	global	_RF24_read

;; *************** function _RF24_read *****************
;; Defined at:
;;		line 285 in file "F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c"
;; Parameters:    Size  Location     Type
;;  buf             1    wreg     PTR void 
;;		 -> buffer_rx(32), 
;;  len             1    9[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  buf             1   10[COMMON] PTR void 
;;		 -> buffer_rx(32), 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         2       2       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		_RF24_read_n_register
;;		_RF24_write_register
;; This function is called by:
;;		_internet_process
;; This function uses a non-reentrant model
;;
psect	text25,local,class=CODE,delta=2,merge=1,group=1
	line	285
global __ptext25
__ptext25:	;psect for function _RF24_read
psect	text25
	file	"F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c"
	line	285
	
_RF24_read:	
;incstack = 0
	callstack 2
; Regs used in _RF24_read: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;RF24_read@buf stored from wreg
	movwf	(RF24_read@buf)
	line	288
	
l3187:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 285: void RF24_read(void *buf, uint8_t len);F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 286: {;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 288:     RF24_read_n_register(0x61, (uint8_t *)buf, len);
	movf	(RF24_read@buf),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_RF24_read+0)+0
	movf	(??_RF24_read+0)+0,w
	movwf	(RF24_read_n_register@buf)
	movf	(RF24_read@len),w
	movwf	(??_RF24_read+1)+0
	movf	(??_RF24_read+1)+0,w
	movwf	(RF24_read_n_register@len)
	movlw	low(061h)
	fcall	_RF24_read_n_register
	line	290
	
l3189:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 290:     RF24_write_register(0x07, (1 << (6)));
	movlw	low(040h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_RF24_read+0)+0
	movf	(??_RF24_read+0)+0,w
	movwf	(RF24_write_register@value)
	movlw	low(07h)
	fcall	_RF24_write_register
	line	291
	
l448:	
	return
	callstack 0
GLOBAL	__end_of_RF24_read
	__end_of_RF24_read:
	signat	_RF24_read,8313
	global	_RF24_read_n_register

;; *************** function _RF24_read_n_register *****************
;; Defined at:
;;		line 7 in file "F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c"
;; Parameters:    Size  Location     Type
;;  mnemonic_add    1    wreg     unsigned char 
;;  buf             1    3[COMMON] PTR unsigned char 
;;		 -> RF24_printDetails@buffer(5), buffer_rx(32), 
;;  len             1    4[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  mnemonic_add    1    6[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_SPI_exchangeByte
;; This function is called by:
;;		_RF24_read
;; This function uses a non-reentrant model
;;
psect	text26,local,class=CODE,delta=2,merge=1,group=1
	line	7
global __ptext26
__ptext26:	;psect for function _RF24_read_n_register
psect	text26
	file	"F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c"
	line	7
	
_RF24_read_n_register:	
;incstack = 0
	callstack 2
; Regs used in _RF24_read_n_register: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;RF24_read_n_register@mnemonic_addr stored from wreg
	movwf	(RF24_read_n_register@mnemonic_addr)
	line	9
	
l3135:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 7: uint8_t RF24_read_n_register(uint8_t mnemonic_addr, uint8_t *buf, uint8_t len);F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 8: {;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 9:     RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7	;volatile
	line	10
	
l3137:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 10:     RF24_attr_status = SPI_exchangeByte(0x00 | mnemonic_addr);
	movf	(RF24_read_n_register@mnemonic_addr),w
	fcall	_SPI_exchangeByte
	movwf	(??_RF24_read_n_register+0)+0
	movf	(??_RF24_read_n_register+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_RF24_attr_status)
	line	11
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 11:     while (len--)
	goto	l3143
	line	13
	
l3139:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 12:     {;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 13:         *buf++ = SPI_exchangeByte(0xFF);
	movlw	low(0FFh)
	fcall	_SPI_exchangeByte
	movwf	(??_RF24_read_n_register+0)+0
	movf	(RF24_read_n_register@buf),w
	movwf	fsr0
	movf	(??_RF24_read_n_register+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l3141:	
	movlw	low(01h)
	movwf	(??_RF24_read_n_register+0)+0
	movf	(??_RF24_read_n_register+0)+0,w
	addwf	(RF24_read_n_register@buf),f
	line	11
	
l3143:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 11:     while (len--)
	movlw	01h
	subwf	(RF24_read_n_register@len),f
		incf	(((RF24_read_n_register@len))),w
	btfss	status,2
	goto	u2301
	goto	u2300
u2301:
	goto	l3139
u2300:
	
l366:	
	line	15
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 15:     RD3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(67/8),(67)&7	;volatile
	line	16
	
l367:	
	return
	callstack 0
GLOBAL	__end_of_RF24_read_n_register
	__end_of_RF24_read_n_register:
	signat	_RF24_read_n_register,12409
	global	_RF24_getDynamicPayloadSize

;; *************** function _RF24_getDynamicPayloadSize *****************
;; Defined at:
;;		line 258 in file "F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  result          1   10[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         1       2       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 5
;; This function calls:
;;		_RF24_flush_rx
;;		_RF24_read_register
;; This function is called by:
;;		_internet_process
;; This function uses a non-reentrant model
;;
psect	text27,local,class=CODE,delta=2,merge=1,group=1
	line	258
global __ptext27
__ptext27:	;psect for function _RF24_getDynamicPayloadSize
psect	text27
	file	"F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c"
	line	258
	
_RF24_getDynamicPayloadSize:	
;incstack = 0
	callstack 1
; Regs used in _RF24_getDynamicPayloadSize: [wreg+status,2+status,0+pclath+cstack]
	line	260
	
l3171:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 260:     uint8_t result = RF24_read_register(0x60);
	movlw	low(060h)
	fcall	_RF24_read_register
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_RF24_getDynamicPayloadSize+0)+0
	movf	(??_RF24_getDynamicPayloadSize+0)+0,w
	movwf	(RF24_getDynamicPayloadSize@result)
	line	262
	
l3173:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 262:     if (result > 32)
	movlw	low(021h)
	subwf	(RF24_getDynamicPayloadSize@result),w
	skipc
	goto	u2331
	goto	u2330
u2331:
	goto	l3183
u2330:
	line	264
	
l3175:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 263:     {;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 264:         RF24_flush_rx();
	fcall	_RF24_flush_rx
	line	265
	
l3177:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 265:         _delay((unsigned long)((2)*(16000000/4000.0)));
	asmopt push
asmopt off
movlw	11
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_RF24_getDynamicPayloadSize+0)+0+1)
	movlw	97
movwf	((??_RF24_getDynamicPayloadSize+0)+0)
	u2487:
decfsz	((??_RF24_getDynamicPayloadSize+0)+0),f
	goto	u2487
	decfsz	((??_RF24_getDynamicPayloadSize+0)+0+1),f
	goto	u2487
	nop2
asmopt pop

	line	266
	
l3179:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 266:         return 0;
	movlw	low(0)
	goto	l441
	line	268
	
l3183:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 268:     return result;
	movf	(RF24_getDynamicPayloadSize@result),w
	line	269
	
l441:	
	return
	callstack 0
GLOBAL	__end_of_RF24_getDynamicPayloadSize
	__end_of_RF24_getDynamicPayloadSize:
	signat	_RF24_getDynamicPayloadSize,89
	global	_RF24_available

;; *************** function _RF24_available *****************
;; Defined at:
;;		line 271 in file "F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  pipe            1    6[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		_RF24_get_status
;; This function is called by:
;;		_internet_process
;; This function uses a non-reentrant model
;;
psect	text28,local,class=CODE,delta=2,merge=1,group=1
	line	271
global __ptext28
__ptext28:	;psect for function _RF24_available
psect	text28
	file	"F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c"
	line	271
	
_RF24_available:	
;incstack = 0
	callstack 2
; Regs used in _RF24_available: [wreg+status,2+status,0+pclath+cstack]
	line	274
	
l3209:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 274:     uint8_t pipe = (RF24_get_status() >> 1) & 0x07;
	fcall	_RF24_get_status
	movwf	(??_RF24_available+0)+0
	clrc
	rrf	(??_RF24_available+0)+0,w
	andlw	07h
	movwf	(??_RF24_available+1)+0
	movf	(??_RF24_available+1)+0,w
	movwf	(RF24_available@pipe)
	line	275
	
l3211:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 275:     if (pipe > 5)
	movlw	low(06h)
	subwf	(RF24_available@pipe),w
	skipc
	goto	u2351
	goto	u2350
u2351:
	goto	l3217
u2350:
	line	276
	
l3213:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 276:         return 0;
	movlw	low(0)
	goto	l445
	line	282
	
l3217:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 282:     return 1;
	movlw	low(01h)
	line	283
	
l445:	
	return
	callstack 0
GLOBAL	__end_of_RF24_available
	__end_of_RF24_available:
	signat	_RF24_available,89
	global	_RF24_get_status

;; *************** function _RF24_get_status *****************
;; Defined at:
;;		line 51 in file "F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_SPI_exchangeByte
;; This function is called by:
;;		_RF24_write
;;		_RF24_available
;; This function uses a non-reentrant model
;;
psect	text29,local,class=CODE,delta=2,merge=1,group=1
	line	51
global __ptext29
__ptext29:	;psect for function _RF24_get_status
psect	text29
	file	"F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c"
	line	51
	
_RF24_get_status:	
;incstack = 0
	callstack 0
; Regs used in _RF24_get_status: [wreg+pclath+cstack]
	line	53
	
l2949:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 53:     RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7	;volatile
	line	54
	
l2951:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 54:     RF24_attr_status = SPI_exchangeByte(0xFF);
	movlw	low(0FFh)
	fcall	_SPI_exchangeByte
	movwf	(??_RF24_get_status+0)+0
	movf	(??_RF24_get_status+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_RF24_attr_status)
	line	55
	
l2953:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 55:     RD3 = 1;
	bsf	(67/8),(67)&7	;volatile
	line	56
	
l2955:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 56:     return RF24_attr_status;
	movf	(_RF24_attr_status),w
	line	57
	
l382:	
	return
	callstack 0
GLOBAL	__end_of_RF24_get_status
	__end_of_RF24_get_status:
	signat	_RF24_get_status,89
	global	_checkButton

;; *************** function _checkButton *****************
;; Defined at:
;;		line 66 in file "F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/app/src/main.c"
;; Parameters:    Size  Location     Type
;;  btn             1    wreg     PTR struct .
;;		 -> btn1(5), 
;;  pinState        1   10[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  btn             1    6[BANK0 ] PTR struct .
;;		 -> btn1(5), 
;;  isPressed       1    5[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         1       7       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_micros
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text30,local,class=CODE,delta=2,merge=1,group=0
	file	"F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/app/src/main.c"
	line	66
global __ptext30
__ptext30:	;psect for function _checkButton
psect	text30
	file	"F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/app/src/main.c"
	line	66
	
_checkButton:	
;incstack = 0
	callstack 4
; Regs used in _checkButton: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;checkButton@btn stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(checkButton@btn)
	line	68
	
l2653:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/app/src/main.c: 66:     };F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/app/src/main.c: 67: }
	clrf	(_checkButton$149)
	
l2655:	
	movf	(checkButton@btn),w
	addlw	04h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	(indf),w
	btfss	status,2
	goto	u1771
	goto	u1770
u1771:
	goto	l2663
u1770:
	
l2657:	
	movf	((checkButton@pinState)),w
	btfsc	status,2
	goto	u1781
	goto	u1780
u1781:
	goto	l2663
u1780:
	
l2659:	
	fcall	_micros
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(checkButton@btn),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_checkButton+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_checkButton+0)+0+1
	incf	fsr0,f
	movf	indf,w
	movwf	(??_checkButton+0)+0+2
	incf	fsr0,f
	movf	indf,w
	movwf	(??_checkButton+0)+0+3
	movf	(3+(?_micros)),w
	subwf	3+(??_checkButton+0)+0,w
	skipz
	goto	u1795
	movf	(2+(?_micros)),w
	subwf	2+(??_checkButton+0)+0,w
	skipz
	goto	u1795
	movf	(1+(?_micros)),w
	subwf	1+(??_checkButton+0)+0,w
	skipz
	goto	u1795
	movf	(0+(?_micros)),w
	subwf	0+(??_checkButton+0)+0,w
u1795:
	skipnc
	goto	u1791
	goto	u1790
u1791:
	goto	l2663
u1790:
	
l2661:	
	clrf	(_checkButton$149)
	incf	(_checkButton$149),f
	
l2663:	
	movf	(_checkButton$149),w
	movwf	(??_checkButton+0)+0
	movf	(??_checkButton+0)+0,w
	movwf	(checkButton@isPressed)
	line	69
	
l2665:	
	movf	((checkButton@isPressed)),w
	btfsc	status,2
	goto	u1801
	goto	u1800
u1801:
	goto	l2669
u1800:
	line	71
	
l2667:	
	movlw	0E8h
	movwf	((??_checkButton+0)+0)
	movlw	03h
	movwf	((??_checkButton+0)+0+1)
	movlw	0
	movwf	((??_checkButton+0)+0+2)
	movlw	0
	movwf	((??_checkButton+0)+0+3)
	fcall	_micros
	movf	(0+(?_micros)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(??_checkButton+0)+0,f
	movf	(1+(?_micros)),w
	skipnc
	incfsz	(1+(?_micros)),w
	goto	u1810
	goto	u1811
u1810:
	addwf	(??_checkButton+0)+1,f
u1811:
	movf	(2+(?_micros)),w
	skipnc
	incfsz	(2+(?_micros)),w
	goto	u1812
	goto	u1813
u1812:
	addwf	(??_checkButton+0)+2,f
u1813:
	movf	(3+(?_micros)),w
	skipnc
	incf	(3+(?_micros)),w
	addwf	(??_checkButton+0)+3,f
	movf	(checkButton@btn),w
	movwf	fsr0
	movf	0+(??_checkButton+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	incf	fsr0,f
	movf	1+(??_checkButton+0)+0,w
	movwf	indf
	incf	fsr0,f
	movf	2+(??_checkButton+0)+0,w
	movwf	indf
	incf	fsr0,f
	movf	3+(??_checkButton+0)+0,w
	movwf	indf
	line	73
	
l2669:	
	movf	(checkButton@pinState),w
	movwf	(??_checkButton+0)+0
	movf	(checkButton@btn),w
	addlw	04h
	movwf	fsr0
	movf	(??_checkButton+0)+0,w
	movwf	indf
	line	74
	
l2671:	
	movf	(checkButton@isPressed),w
	line	75
	
l72:	
	return
	callstack 0
GLOBAL	__end_of_checkButton
	__end_of_checkButton:
	signat	_checkButton,8313
	global	_micros

;; *************** function _micros *****************
;; Defined at:
;;		line 30 in file "F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/time.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  4    2[COMMON] unsigned long 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          4       0       0       0       0
;;      Totals:         8       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_checkButton
;;		_main
;; This function uses a non-reentrant model
;;
psect	text31,local,class=CODE,delta=2,merge=1,inline,group=1
	file	"F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/time.c"
	line	30
global __ptext31
__ptext31:	;psect for function _micros
psect	text31
	file	"F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/time.c"
	line	30
	
_micros:	
;incstack = 0
	callstack 5
; Regs used in _micros: [wreg]
	line	32
	
l2463:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/time.c: 32:     return (_microsMSB | TMR1);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(14),w	;volatile
	movwf	((??_micros+0)+0)
	movf	(14+1),w	;volatile
	movwf	((??_micros+0)+0+1)
	clrf	((??_micros+0)+0+2)
	clrf	((??_micros+0)+0+3)
	movf	(__microsMSB),w
	iorwf	0+(??_micros+0)+0,w
	movwf	(?_micros)
	movf	(__microsMSB+1),w
	iorwf	1+(??_micros+0)+0,w
	movwf	1+(?_micros)
	
	movf	(__microsMSB+2),w
	iorwf	2+(??_micros+0)+0,w
	movwf	2+(?_micros)
	
	movf	(__microsMSB+3),w
	iorwf	3+(??_micros+0)+0,w
	movwf	3+(?_micros)
	line	33
	
l590:	
	return
	callstack 0
GLOBAL	__end_of_micros
	__end_of_micros:
	signat	_micros,92
	global	_Serial_begin

;; *************** function _Serial_begin *****************
;; Defined at:
;;		line 2 in file "F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/Serial.c"
;; Parameters:    Size  Location     Type
;;  baudrate        4    6[BANK0 ] const long 
;; Auto vars:     Size  Location     Type
;;  x               2   22[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0      12       0       0       0
;;      Totals:         0      18       0       0       0
;;Total ram usage:       18 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		___aldiv
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text32,local,class=CODE,delta=2,merge=1,group=1
	file	"F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/Serial.c"
	line	2
global __ptext32
__ptext32:	;psect for function _Serial_begin
psect	text32
	file	"F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/Serial.c"
	line	2
	
_Serial_begin:	
;incstack = 0
	callstack 4
; Regs used in _Serial_begin: [wreg+status,2+status,0+pclath+cstack]
	line	5
	
l2675:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/Serial.c: 2: uint8_t Serial_begin(const long int baudrate);F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/Serial.c: 3: {;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/Serial.c: 4:     unsigned int x;;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/Serial.c: 5:     x = (16000000 - baudrate * 64) / (baudrate * 64);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(Serial_begin@baudrate),w
	movwf	(??_Serial_begin+0)+0
	movf	(Serial_begin@baudrate+1),w
	movwf	((??_Serial_begin+0)+0+1)
	movf	(Serial_begin@baudrate+2),w
	movwf	((??_Serial_begin+0)+0+2)
	movf	(Serial_begin@baudrate+3),w
	movwf	((??_Serial_begin+0)+0+3)
	movlw	06h
u1825:
	clrc
	rlf	(??_Serial_begin+0)+0,f
	rlf	(??_Serial_begin+0)+1,f
	rlf	(??_Serial_begin+0)+2,f
	rlf	(??_Serial_begin+0)+3,f
u1820:
	addlw	-1
	skipz
	goto	u1825
	movf	3+(??_Serial_begin+0)+0,w
	movwf	(___aldiv@divisor+3)
	movf	2+(??_Serial_begin+0)+0,w
	movwf	(___aldiv@divisor+2)
	movf	1+(??_Serial_begin+0)+0,w
	movwf	(___aldiv@divisor+1)
	movf	0+(??_Serial_begin+0)+0,w
	movwf	(___aldiv@divisor)

	movf	(Serial_begin@baudrate),w
	movwf	(??_Serial_begin+4)+0
	movf	(Serial_begin@baudrate+1),w
	movwf	((??_Serial_begin+4)+0+1)
	movf	(Serial_begin@baudrate+2),w
	movwf	((??_Serial_begin+4)+0+2)
	movf	(Serial_begin@baudrate+3),w
	movwf	((??_Serial_begin+4)+0+3)
	movlw	06h
u1835:
	clrc
	rlf	(??_Serial_begin+4)+0,f
	rlf	(??_Serial_begin+4)+1,f
	rlf	(??_Serial_begin+4)+2,f
	rlf	(??_Serial_begin+4)+3,f
u1830:
	addlw	-1
	skipz
	goto	u1835
	movlw	0
	movwf	((??_Serial_begin+8)+0)
	movlw	024h
	movwf	((??_Serial_begin+8)+0+1)
	movlw	0F4h
	movwf	((??_Serial_begin+8)+0+2)
	movlw	0
	movwf	((??_Serial_begin+8)+0+3)
	movf	0+(??_Serial_begin+4)+0,w
	subwf	(??_Serial_begin+8)+0,f
	movf	1+(??_Serial_begin+4)+0,w
	skipc
	incfsz	1+(??_Serial_begin+4)+0,w
	goto	u1841
	goto	u1842
u1841:
	subwf	(??_Serial_begin+8)+1,f
u1842:
	movf	2+(??_Serial_begin+4)+0,w
	skipc
	incfsz	2+(??_Serial_begin+4)+0,w
	goto	u1843
	goto	u1844
u1843:
	subwf	(??_Serial_begin+8)+2,f
u1844:
	movf	3+(??_Serial_begin+4)+0,w
	skipc
	incfsz	3+(??_Serial_begin+4)+0,w
	goto	u1845
	goto	u1846
u1845:
	subwf	(??_Serial_begin+8)+3,f
u1846:

	movf	3+(??_Serial_begin+8)+0,w
	movwf	(___aldiv@dividend+3)
	movf	2+(??_Serial_begin+8)+0,w
	movwf	(___aldiv@dividend+2)
	movf	1+(??_Serial_begin+8)+0,w
	movwf	(___aldiv@dividend+1)
	movf	0+(??_Serial_begin+8)+0,w
	movwf	(___aldiv@dividend)

	fcall	___aldiv
	movf	(1+(?___aldiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(Serial_begin@x+1)
	movf	(0+(?___aldiv)),w
	movwf	(Serial_begin@x)
	line	6
	
l2677:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/Serial.c: 6:     if (x > 255)
	movlw	01h
	subwf	(Serial_begin@x+1),w
	movlw	0
	skipnz
	subwf	(Serial_begin@x),w
	skipc
	goto	u1851
	goto	u1850
u1851:
	goto	l2683
u1850:
	line	8
	
l2679:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/Serial.c: 7:     {;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/Serial.c: 8:         x = (16000000 - baudrate * 16) / (baudrate * 16);
	movf	(Serial_begin@baudrate),w
	movwf	(??_Serial_begin+0)+0
	movf	(Serial_begin@baudrate+1),w
	movwf	((??_Serial_begin+0)+0+1)
	movf	(Serial_begin@baudrate+2),w
	movwf	((??_Serial_begin+0)+0+2)
	movf	(Serial_begin@baudrate+3),w
	movwf	((??_Serial_begin+0)+0+3)
	movlw	04h
u1865:
	clrc
	rlf	(??_Serial_begin+0)+0,f
	rlf	(??_Serial_begin+0)+1,f
	rlf	(??_Serial_begin+0)+2,f
	rlf	(??_Serial_begin+0)+3,f
u1860:
	addlw	-1
	skipz
	goto	u1865
	movf	3+(??_Serial_begin+0)+0,w
	movwf	(___aldiv@divisor+3)
	movf	2+(??_Serial_begin+0)+0,w
	movwf	(___aldiv@divisor+2)
	movf	1+(??_Serial_begin+0)+0,w
	movwf	(___aldiv@divisor+1)
	movf	0+(??_Serial_begin+0)+0,w
	movwf	(___aldiv@divisor)

	movf	(Serial_begin@baudrate),w
	movwf	(??_Serial_begin+4)+0
	movf	(Serial_begin@baudrate+1),w
	movwf	((??_Serial_begin+4)+0+1)
	movf	(Serial_begin@baudrate+2),w
	movwf	((??_Serial_begin+4)+0+2)
	movf	(Serial_begin@baudrate+3),w
	movwf	((??_Serial_begin+4)+0+3)
	movlw	04h
u1875:
	clrc
	rlf	(??_Serial_begin+4)+0,f
	rlf	(??_Serial_begin+4)+1,f
	rlf	(??_Serial_begin+4)+2,f
	rlf	(??_Serial_begin+4)+3,f
u1870:
	addlw	-1
	skipz
	goto	u1875
	movlw	0
	movwf	((??_Serial_begin+8)+0)
	movlw	024h
	movwf	((??_Serial_begin+8)+0+1)
	movlw	0F4h
	movwf	((??_Serial_begin+8)+0+2)
	movlw	0
	movwf	((??_Serial_begin+8)+0+3)
	movf	0+(??_Serial_begin+4)+0,w
	subwf	(??_Serial_begin+8)+0,f
	movf	1+(??_Serial_begin+4)+0,w
	skipc
	incfsz	1+(??_Serial_begin+4)+0,w
	goto	u1881
	goto	u1882
u1881:
	subwf	(??_Serial_begin+8)+1,f
u1882:
	movf	2+(??_Serial_begin+4)+0,w
	skipc
	incfsz	2+(??_Serial_begin+4)+0,w
	goto	u1883
	goto	u1884
u1883:
	subwf	(??_Serial_begin+8)+2,f
u1884:
	movf	3+(??_Serial_begin+4)+0,w
	skipc
	incfsz	3+(??_Serial_begin+4)+0,w
	goto	u1885
	goto	u1886
u1885:
	subwf	(??_Serial_begin+8)+3,f
u1886:

	movf	3+(??_Serial_begin+8)+0,w
	movwf	(___aldiv@dividend+3)
	movf	2+(??_Serial_begin+8)+0,w
	movwf	(___aldiv@dividend+2)
	movf	1+(??_Serial_begin+8)+0,w
	movwf	(___aldiv@dividend+1)
	movf	0+(??_Serial_begin+8)+0,w
	movwf	(___aldiv@dividend)

	fcall	___aldiv
	movf	(1+(?___aldiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(Serial_begin@x+1)
	movf	(0+(?___aldiv)),w
	movwf	(Serial_begin@x)
	line	9
	
l2681:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/Serial.c: 9:         BRGH = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1218/8)^080h,(1218)&7	;volatile
	line	11
	
l2683:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/Serial.c: 11:     if (x < 256)
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	subwf	(Serial_begin@x+1),w
	movlw	0
	skipnz
	subwf	(Serial_begin@x),w
	skipnc
	goto	u1891
	goto	u1890
u1891:
	goto	l660
u1890:
	line	13
	
l2685:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/Serial.c: 12:     {;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/Serial.c: 13:         SPBRG = x;
	movf	(Serial_begin@x),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	line	14
	
l2687:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/Serial.c: 14:         SYNC = 0;
	bcf	(1220/8)^080h,(1220)&7	;volatile
	line	15
	
l2689:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/Serial.c: 15:         SPEN = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(199/8),(199)&7	;volatile
	line	16
	
l2691:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/Serial.c: 16:         TRISC7 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1087/8)^080h,(1087)&7	;volatile
	line	17
	
l2693:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/Serial.c: 17:         TRISC6 = 1;
	bsf	(1086/8)^080h,(1086)&7	;volatile
	line	18
	
l2695:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/Serial.c: 18:         CREN = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(196/8),(196)&7	;volatile
	line	19
	
l2697:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/Serial.c: 19:         TXEN = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1221/8)^080h,(1221)&7	;volatile
	line	23
	
l660:	
	return
	callstack 0
GLOBAL	__end_of_Serial_begin
	__end_of_Serial_begin:
	signat	_Serial_begin,4217
	global	___aldiv

;; *************** function ___aldiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\aldiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         4    2[COMMON] long 
;;  dividend        4    6[COMMON] long 
;; Auto vars:     Size  Location     Type
;;  quotient        4    2[BANK0 ] long 
;;  sign            1    1[BANK0 ] unsigned char 
;;  counter         1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    2[COMMON] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         8       0       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         9       6       0       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Serial_begin
;; This function uses a non-reentrant model
;;
psect	text33,local,class=CODE,delta=2,merge=1,group=2
	file	"C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\aldiv.c"
	line	5
global __ptext33
__ptext33:	;psect for function ___aldiv
psect	text33
	file	"C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\aldiv.c"
	line	5
	
___aldiv:	
;incstack = 0
	callstack 4
; Regs used in ___aldiv: [wreg+status,2+status,0]
	line	13
	
l2613:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___aldiv@sign)
	line	14
	
l2615:	
	btfss	(___aldiv@divisor+3),7
	goto	u1671
	goto	u1670
u1671:
	goto	l796
u1670:
	line	15
	
l2617:	
	comf	(___aldiv@divisor),f
	comf	(___aldiv@divisor+1),f
	comf	(___aldiv@divisor+2),f
	comf	(___aldiv@divisor+3),f
	incf	(___aldiv@divisor),f
	skipnz
	incf	(___aldiv@divisor+1),f
	skipnz
	incf	(___aldiv@divisor+2),f
	skipnz
	incf	(___aldiv@divisor+3),f
	line	16
	clrf	(___aldiv@sign)
	incf	(___aldiv@sign),f
	line	17
	
l796:	
	line	18
	btfss	(___aldiv@dividend+3),7
	goto	u1681
	goto	u1680
u1681:
	goto	l2623
u1680:
	line	19
	
l2619:	
	comf	(___aldiv@dividend),f
	comf	(___aldiv@dividend+1),f
	comf	(___aldiv@dividend+2),f
	comf	(___aldiv@dividend+3),f
	incf	(___aldiv@dividend),f
	skipnz
	incf	(___aldiv@dividend+1),f
	skipnz
	incf	(___aldiv@dividend+2),f
	skipnz
	incf	(___aldiv@dividend+3),f
	line	20
	
l2621:	
	movlw	low(01h)
	movwf	(??___aldiv+0)+0
	movf	(??___aldiv+0)+0,w
	xorwf	(___aldiv@sign),f
	line	22
	
l2623:	
	movlw	high highword(0)
	movwf	(___aldiv@quotient+3)
	movlw	low highword(0)
	movwf	(___aldiv@quotient+2)
	movlw	high(0)
	movwf	(___aldiv@quotient+1)
	movlw	low(0)
	movwf	(___aldiv@quotient)

	line	23
	
l2625:	
	movf	(___aldiv@divisor+3),w
	iorwf	(___aldiv@divisor+2),w
	iorwf	(___aldiv@divisor+1),w
	iorwf	(___aldiv@divisor),w
	skipnz
	goto	u1691
	goto	u1690
u1691:
	goto	l2645
u1690:
	line	24
	
l2627:	
	clrf	(___aldiv@counter)
	incf	(___aldiv@counter),f
	line	25
	goto	l2631
	line	26
	
l2629:	
	movlw	01h
	movwf	(??___aldiv+0)+0
u1705:
	clrc
	rlf	(___aldiv@divisor),f
	rlf	(___aldiv@divisor+1),f
	rlf	(___aldiv@divisor+2),f
	rlf	(___aldiv@divisor+3),f
	decfsz	(??___aldiv+0)+0
	goto	u1705
	line	27
	movlw	low(01h)
	movwf	(??___aldiv+0)+0
	movf	(??___aldiv+0)+0,w
	addwf	(___aldiv@counter),f
	line	25
	
l2631:	
	btfss	(___aldiv@divisor+3),(31)&7
	goto	u1711
	goto	u1710
u1711:
	goto	l2629
u1710:
	line	30
	
l2633:	
	movlw	01h
	movwf	(??___aldiv+0)+0
u1725:
	clrc
	rlf	(___aldiv@quotient),f
	rlf	(___aldiv@quotient+1),f
	rlf	(___aldiv@quotient+2),f
	rlf	(___aldiv@quotient+3),f
	decfsz	(??___aldiv+0)+0
	goto	u1725
	line	31
	
l2635:	
	movf	(___aldiv@divisor+3),w
	subwf	(___aldiv@dividend+3),w
	skipz
	goto	u1735
	movf	(___aldiv@divisor+2),w
	subwf	(___aldiv@dividend+2),w
	skipz
	goto	u1735
	movf	(___aldiv@divisor+1),w
	subwf	(___aldiv@dividend+1),w
	skipz
	goto	u1735
	movf	(___aldiv@divisor),w
	subwf	(___aldiv@dividend),w
u1735:
	skipc
	goto	u1731
	goto	u1730
u1731:
	goto	l2641
u1730:
	line	32
	
l2637:	
	movf	(___aldiv@divisor),w
	subwf	(___aldiv@dividend),f
	movf	(___aldiv@divisor+1),w
	skipc
	incfsz	(___aldiv@divisor+1),w
	subwf	(___aldiv@dividend+1),f
	movf	(___aldiv@divisor+2),w
	skipc
	incfsz	(___aldiv@divisor+2),w
	subwf	(___aldiv@dividend+2),f
	movf	(___aldiv@divisor+3),w
	skipc
	incfsz	(___aldiv@divisor+3),w
	subwf	(___aldiv@dividend+3),f
	line	33
	
l2639:	
	bsf	(___aldiv@quotient)+(0/8),(0)&7
	line	35
	
l2641:	
	movlw	01h
u1745:
	clrc
	rrf	(___aldiv@divisor+3),f
	rrf	(___aldiv@divisor+2),f
	rrf	(___aldiv@divisor+1),f
	rrf	(___aldiv@divisor),f
	addlw	-1
	skipz
	goto	u1745

	line	36
	
l2643:	
	movlw	01h
	subwf	(___aldiv@counter),f
	btfss	status,2
	goto	u1751
	goto	u1750
u1751:
	goto	l2633
u1750:
	line	38
	
l2645:	
	movf	((___aldiv@sign)),w
	btfsc	status,2
	goto	u1761
	goto	u1760
u1761:
	goto	l2649
u1760:
	line	39
	
l2647:	
	comf	(___aldiv@quotient),f
	comf	(___aldiv@quotient+1),f
	comf	(___aldiv@quotient+2),f
	comf	(___aldiv@quotient+3),f
	incf	(___aldiv@quotient),f
	skipnz
	incf	(___aldiv@quotient+1),f
	skipnz
	incf	(___aldiv@quotient+2),f
	skipnz
	incf	(___aldiv@quotient+3),f
	line	40
	
l2649:	
	movf	(___aldiv@quotient+3),w
	movwf	(?___aldiv+3)
	movf	(___aldiv@quotient+2),w
	movwf	(?___aldiv+2)
	movf	(___aldiv@quotient+1),w
	movwf	(?___aldiv+1)
	movf	(___aldiv@quotient),w
	movwf	(?___aldiv)

	line	41
	
l806:	
	return
	callstack 0
GLOBAL	__end_of___aldiv
	__end_of___aldiv:
	signat	___aldiv,8316
	global	_SPI_initialize

;; *************** function _SPI_initialize *****************
;; Defined at:
;;		line 3 in file "F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/spi_master.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text34,local,class=CODE,delta=2,merge=1,group=1
	file	"F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/spi_master.c"
	line	3
global __ptext34
__ptext34:	;psect for function _SPI_initialize
psect	text34
	file	"F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/spi_master.c"
	line	3
	
_SPI_initialize:	
;incstack = 0
	callstack 5
; Regs used in _SPI_initialize: [wreg+status,2]
	line	5
	
l2703:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/spi_master.c: 5:     SSPEN = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(165/8),(165)&7	;volatile
	line	6
	
l2705:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/spi_master.c: 6:     SSPSTAT = 0b01000000;
	movlw	low(040h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(148)^080h	;volatile
	line	7
	
l2707:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/spi_master.c: 7:     TRISC5 = 0;
	bcf	(1085/8)^080h,(1085)&7	;volatile
	line	8
	
l2709:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/spi_master.c: 8:     TRISC4 = 1;
	bsf	(1084/8)^080h,(1084)&7	;volatile
	line	9
	
l2711:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/spi_master.c: 9:     TRISC3 = 0;
	bcf	(1083/8)^080h,(1083)&7	;volatile
	line	10
	
l2713:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/spi_master.c: 10:     SSPCON = (SSPCON & 0xf0) | 0b0010;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(20),w	;volatile
	andlw	0F0h
	iorlw	02h
	movwf	(20)	;volatile
	line	11
	
l551:	
	return
	callstack 0
GLOBAL	__end_of_SPI_initialize
	__end_of_SPI_initialize:
	signat	_SPI_initialize,89
	global	_Network_begin

;; *************** function _Network_begin *****************
;; Defined at:
;;		line 138 in file "F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/internet.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 6
;; This function calls:
;;		_RF24_begin
;;		_RF24_enableDynamicPayloads
;;		_RF24_getPALevel
;;		_RF24_openReadingPipe
;;		_RF24_setAddressWidth
;;		_RF24_setAutoAck
;;		_RF24_setCRCLength
;;		_RF24_setDataRate
;;		_RF24_setPayloadSize
;;		_RF24_startListening
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text35,local,class=CODE,delta=2,merge=1,group=1
	file	"F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/internet.c"
	line	138
global __ptext35
__ptext35:	;psect for function _Network_begin
psect	text35
	file	"F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/internet.c"
	line	138
	
_Network_begin:	
;incstack = 0
	callstack 1
; Regs used in _Network_begin: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	141
	
l3291:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/internet.c: 141:     RF24_begin();
	fcall	_RF24_begin
	line	142
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/internet.c: 142:     RF24_setAddressWidth(5);
	movlw	low(05h)
	fcall	_RF24_setAddressWidth
	line	143
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/internet.c: 143:     RF24_enableDynamicPayloads();
	fcall	_RF24_enableDynamicPayloads
	line	144
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/internet.c: 144:     RF24_setDataRate(RF24_1MBPS);
	movlw	low(0)
	fcall	_RF24_setDataRate
	line	145
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/internet.c: 145:     RF24_setCRCLength(RF24_CRC_8);
	movlw	low(01h)
	fcall	_RF24_setCRCLength
	line	146
	
l3293:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/internet.c: 146:     RF24_openReadingPipe(0, BASE_PIPE);
	movlw	low(((_BASE_PIPE)|8000h))
	movwf	(RF24_openReadingPipe@address)
	movlw	high(((_BASE_PIPE)|8000h))
	movwf	((RF24_openReadingPipe@address))+1
	movlw	low(0)
	fcall	_RF24_openReadingPipe
	line	147
	
l3295:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/internet.c: 147:     RF24_setAutoAck(1);
	movlw	low(01h)
	fcall	_RF24_setAutoAck
	line	148
	
l3297:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/internet.c: 148:     RF24_getPALevel(RF24_PA_MAX);
	movlw	low(03h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_Network_begin+0)+0
	movf	(??_Network_begin+0)+0,w
	movwf	(?_RF24_getPALevel)
	fcall	_RF24_getPALevel
	line	149
	
l3299:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/internet.c: 149:     RF24_setPayloadSize(32);
	movlw	low(020h)
	fcall	_RF24_setPayloadSize
	line	150
	
l3301:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/internet.c: 150:     RF24_startListening();
	fcall	_RF24_startListening
	line	151
	
l300:	
	return
	callstack 0
GLOBAL	__end_of_Network_begin
	__end_of_Network_begin:
	signat	_Network_begin,89
	global	_RF24_startListening

;; *************** function _RF24_startListening *****************
;; Defined at:
;;		line 139 in file "F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		_RF24_read_register
;;		_RF24_write_register
;; This function is called by:
;;		_internet_relay
;;		_Network_begin
;; This function uses a non-reentrant model
;;
psect	text36,local,class=CODE,delta=2,merge=1,group=1
	file	"F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c"
	line	139
global __ptext36
__ptext36:	;psect for function _RF24_startListening
psect	text36
	file	"F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c"
	line	139
	
_RF24_startListening:	
;incstack = 0
	callstack 0
; Regs used in _RF24_startListening: [wreg+status,2+status,0+pclath+cstack]
	line	141
	
l3049:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 141:     RF24_write_register(0x00, RF24_read_register(0x00) | (1 << (0)));
	movlw	low(0)
	fcall	_RF24_read_register
	iorlw	01h
	movwf	(??_RF24_startListening+0)+0
	movf	(??_RF24_startListening+0)+0,w
	movwf	(RF24_write_register@value)
	movlw	low(0)
	fcall	_RF24_write_register
	line	142
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 142:     RF24_write_register(0x07, (1 << (6)) | (1 << (5)) | (1 << (4)));
	movlw	low(070h)
	movwf	(??_RF24_startListening+0)+0
	movf	(??_RF24_startListening+0)+0,w
	movwf	(RF24_write_register@value)
	movlw	low(07h)
	fcall	_RF24_write_register
	line	143
	
l3051:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 143:     RD2 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(66/8),(66)&7	;volatile
	line	154
	
l399:	
	return
	callstack 0
GLOBAL	__end_of_RF24_startListening
	__end_of_RF24_startListening:
	signat	_RF24_startListening,89
	global	_RF24_setCRCLength

;; *************** function _RF24_setCRCLength *****************
;; Defined at:
;;		line 404 in file "F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c"
;; Parameters:    Size  Location     Type
;;  length          1    wreg     enum E904
;; Auto vars:     Size  Location     Type
;;  length          1   10[COMMON] enum E904
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		_RF24_write_register
;; This function is called by:
;;		_Network_begin
;; This function uses a non-reentrant model
;;
psect	text37,local,class=CODE,delta=2,merge=1,group=1
	line	404
global __ptext37
__ptext37:	;psect for function _RF24_setCRCLength
psect	text37
	file	"F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c"
	line	404
	
_RF24_setCRCLength:	
;incstack = 0
	callstack 2
; Regs used in _RF24_setCRCLength: [wreg+status,2+status,0+pclath+cstack]
;RF24_setCRCLength@length stored from wreg
	movwf	(RF24_setCRCLength@length)
	line	406
	
l3269:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 404: void RF24_setCRCLength(rf24_crclength_e length);F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 405: {;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 406:     RF24_attr_config = RF24_attr_config & ~((1 << (2)) | (1 << (3)));
	movf	(_RF24_attr_config),w
	andlw	0F3h
	movwf	(??_RF24_setCRCLength+0)+0
	movf	(??_RF24_setCRCLength+0)+0,w
	movwf	(_RF24_attr_config)
	line	409
	
l3271:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 409:     if (length == RF24_CRC_DISABLED)
	movf	((RF24_setCRCLength@length)),w
	btfss	status,2
	goto	u2361
	goto	u2360
u2361:
	goto	l3275
u2360:
	goto	l3279
	line	413
	
l3275:	
		decf	((RF24_setCRCLength@length)),w
	btfss	status,2
	goto	u2371
	goto	u2370
u2371:
	goto	l490
u2370:
	line	415
	
l3277:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 414:     {;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 415:         RF24_attr_config |= (1 << (3));
	bsf	(_RF24_attr_config)+(3/8),(3)&7
	line	416
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 416:     }
	goto	l3279
	line	417
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 417:     else
	
l490:	
	line	419
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 418:     {;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 419:         RF24_attr_config |= (1 << (3));
	bsf	(_RF24_attr_config)+(3/8),(3)&7
	line	420
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 420:         RF24_attr_config |= (1 << (2));
	bsf	(_RF24_attr_config)+(2/8),(2)&7
	line	422
	
l3279:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 422:     RF24_write_register(0x00, RF24_attr_config);
	movf	(_RF24_attr_config),w
	movwf	(??_RF24_setCRCLength+0)+0
	movf	(??_RF24_setCRCLength+0)+0,w
	movwf	(RF24_write_register@value)
	movlw	low(0)
	fcall	_RF24_write_register
	line	423
	
l492:	
	return
	callstack 0
GLOBAL	__end_of_RF24_setCRCLength
	__end_of_RF24_setCRCLength:
	signat	_RF24_setCRCLength,4217
	global	_RF24_setAutoAck

;; *************** function _RF24_setAutoAck *****************
;; Defined at:
;;		line 335 in file "F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c"
;; Parameters:    Size  Location     Type
;;  enable          1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  enable          1   10[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		_RF24_write_register
;; This function is called by:
;;		_Network_begin
;; This function uses a non-reentrant model
;;
psect	text38,local,class=CODE,delta=2,merge=1,group=1
	line	335
global __ptext38
__ptext38:	;psect for function _RF24_setAutoAck
psect	text38
	file	"F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c"
	line	335
	
_RF24_setAutoAck:	
;incstack = 0
	callstack 2
; Regs used in _RF24_setAutoAck: [wreg+status,2+status,0+pclath+cstack]
;RF24_setAutoAck@enable stored from wreg
	movwf	(RF24_setAutoAck@enable)
	line	337
	
l3281:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 335: void RF24_setAutoAck(uint8_t enable);F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 336: {;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 337:     if (enable)
	movf	((RF24_setAutoAck@enable)),w
	btfsc	status,2
	goto	u2381
	goto	u2380
u2381:
	goto	l3285
u2380:
	line	339
	
l3283:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 338:     {;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 339:         RF24_write_register(0x01, 0x3F);
	movlw	low(03Fh)
	movwf	(??_RF24_setAutoAck+0)+0
	movf	(??_RF24_setAutoAck+0)+0,w
	movwf	(RF24_write_register@value)
	movlw	low(01h)
	fcall	_RF24_write_register
	line	340
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 340:     }
	goto	l467
	line	343
	
l3285:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 342:     {;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 343:         RF24_write_register(0x01, 0);
	clrf	(RF24_write_register@value)
	movlw	low(01h)
	fcall	_RF24_write_register
	line	345
	
l467:	
	return
	callstack 0
GLOBAL	__end_of_RF24_setAutoAck
	__end_of_RF24_setAutoAck:
	signat	_RF24_setAutoAck,4217
	global	_RF24_openReadingPipe

;; *************** function _RF24_openReadingPipe *****************
;; Defined at:
;;		line 305 in file "F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c"
;; Parameters:    Size  Location     Type
;;  child           1    wreg     unsigned char 
;;  address         2    9[COMMON] PTR unsigned char 
;;		 -> BASE_PIPE(5), networkInfo(6), 
;; Auto vars:     Size  Location     Type
;;  child           1    2[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         2       3       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		_RF24_read_register
;;		_RF24_write_n_register
;;		_RF24_write_register
;; This function is called by:
;;		_internet_setNetworkPipe
;;		_internet_relay
;;		_Network_begin
;; This function uses a non-reentrant model
;;
psect	text39,local,class=CODE,delta=2,merge=1,group=1
	line	305
global __ptext39
__ptext39:	;psect for function _RF24_openReadingPipe
psect	text39
	file	"F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c"
	line	305
	
_RF24_openReadingPipe:	
;incstack = 0
;; using string table level
	callstack 1
; Regs used in _RF24_openReadingPipe: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;RF24_openReadingPipe@child stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(RF24_openReadingPipe@child)
	line	307
	
l3013:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 305: void RF24_openReadingPipe(uint8_t child, uint8_t *address);F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 306: {;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 307:     if (child < 2)
	movlw	low(02h)
	subwf	(RF24_openReadingPipe@child),w
	skipnc
	goto	u2191
	goto	u2190
u2191:
	goto	l3017
u2190:
	line	309
	
l3015:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 308:     {;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 309:         RF24_write_n_register(0x0A + child, address, 5);
		movf	(RF24_openReadingPipe@address),w
	movwf	(RF24_write_n_register@buffer)
movf	(RF24_openReadingPipe@address+1),w
movwf	(RF24_write_n_register@buffer+1)

	movlw	low(05h)
	movwf	(??_RF24_openReadingPipe+0)+0
	movf	(??_RF24_openReadingPipe+0)+0,w
	movwf	(RF24_write_n_register@length)
	movf	(RF24_openReadingPipe@child),w
	addlw	0Ah
	fcall	_RF24_write_n_register
	line	310
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 310:     }
	goto	l3019
	line	313
	
l3017:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 312:     {;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 313:         RF24_write_register(0x0A + child, *address);
	movf	(RF24_openReadingPipe@address+1),w
	movwf	btemp+1
	movf	(RF24_openReadingPipe@address),w
	movwf	fsr0
	fcall	stringtab
	movwf	(??_RF24_openReadingPipe+0)+0
	movf	(??_RF24_openReadingPipe+0)+0,w
	movwf	(RF24_write_register@value)
	movf	(RF24_openReadingPipe@child),w
	addlw	0Ah
	fcall	_RF24_write_register
	line	315
	
l3019:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 315:     RF24_write_register(0x02, RF24_read_register(0x02) | (1 << (0 + child)));
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_RF24_openReadingPipe+0)+0
	incf	(RF24_openReadingPipe@child),w
	goto	u2204
u2205:
	clrc
	rlf	(??_RF24_openReadingPipe+0)+0,f
u2204:
	addlw	-1
	skipz
	goto	u2205
	movlw	low(02h)
	fcall	_RF24_read_register
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	iorwf	0+(??_RF24_openReadingPipe+0)+0,w
	movwf	(??_RF24_openReadingPipe+1)+0
	movf	(??_RF24_openReadingPipe+1)+0,w
	movwf	(RF24_write_register@value)
	movlw	low(02h)
	fcall	_RF24_write_register
	line	316
	
l453:	
	return
	callstack 0
GLOBAL	__end_of_RF24_openReadingPipe
	__end_of_RF24_openReadingPipe:
	signat	_RF24_openReadingPipe,8313
	global	_RF24_write_n_register

;; *************** function _RF24_write_n_register *****************
;; Defined at:
;;		line 29 in file "F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c"
;; Parameters:    Size  Location     Type
;;  mnemonic_add    1    wreg     unsigned char 
;;  buffer          2    3[COMMON] PTR unsigned char 
;;		 -> BASE_PIPE(5), networkInfo(6), 
;;  length          1    5[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  mnemonic_add    1    7[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         3       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         5       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_SPI_exchangeByte
;; This function is called by:
;;		_RF24_openReadingPipe
;;		_RF24_openWritingPipe
;; This function uses a non-reentrant model
;;
psect	text40,local,class=CODE,delta=2,merge=1,group=1
	line	29
global __ptext40
__ptext40:	;psect for function _RF24_write_n_register
psect	text40
	file	"F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c"
	line	29
	
_RF24_write_n_register:	
;incstack = 0
;; using string table level
	callstack 1
; Regs used in _RF24_write_n_register: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;RF24_write_n_register@mnemonic_addr stored from wreg
	movwf	(RF24_write_n_register@mnemonic_addr)
	line	31
	
l2937:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 29: void RF24_write_n_register(uint8_t mnemonic_addr, uint8_t *buffer, uint8_t length);F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 30: {;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 31:     RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7	;volatile
	line	32
	
l2939:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 32:     RF24_attr_status = SPI_exchangeByte(0x20 | mnemonic_addr);
	movf	(RF24_write_n_register@mnemonic_addr),w
	iorlw	020h
	fcall	_SPI_exchangeByte
	movwf	(??_RF24_write_n_register+0)+0
	movf	(??_RF24_write_n_register+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_RF24_attr_status)
	line	33
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 33:     while (length)
	goto	l2947
	line	35
	
l2941:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 34:     {;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 35:         SPI_exchangeByte(*buffer++);
	movf	(RF24_write_n_register@buffer+1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	btemp+1
	movf	(RF24_write_n_register@buffer),w
	movwf	fsr0
	fcall	stringtab
	fcall	_SPI_exchangeByte
	
l2943:	
	movlw	01h
	addwf	(RF24_write_n_register@buffer),f
	skipnc
	incf	(RF24_write_n_register@buffer+1),f
	movlw	0
	addwf	(RF24_write_n_register@buffer+1),f
	line	36
	
l2945:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 36:         length--;
	movlw	01h
	subwf	(RF24_write_n_register@length),f
	line	33
	
l2947:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 33:     while (length)
	movf	((RF24_write_n_register@length)),w
	btfss	status,2
	goto	u2131
	goto	u2130
u2131:
	goto	l2941
u2130:
	
l375:	
	line	38
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 38:     RD3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(67/8),(67)&7	;volatile
	line	39
	
l376:	
	return
	callstack 0
GLOBAL	__end_of_RF24_write_n_register
	__end_of_RF24_write_n_register:
	signat	_RF24_write_n_register,12409
	global	_RF24_getPALevel

;; *************** function _RF24_getPALevel *****************
;; Defined at:
;;		line 458 in file "F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		_RF24_read_register
;; This function is called by:
;;		_Network_begin
;; This function uses a non-reentrant model
;;
psect	text41,local,class=CODE,delta=2,merge=1,group=1
	line	458
global __ptext41
__ptext41:	;psect for function _RF24_getPALevel
psect	text41
	file	"F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c"
	line	458
	
_RF24_getPALevel:	
;incstack = 0
	callstack 2
; Regs used in _RF24_getPALevel: [wreg+status,2+status,0+pclath+cstack]
	line	460
	
l3287:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 460:     return ((RF24_read_register(0x06) & ((1 << (1)) | (1 << (2)))) >> 1);;	Return value of _RF24_getPALevel is never used
	movlw	low(06h)
	fcall	_RF24_read_register
	line	461
	
l519:	
	return
	callstack 0
GLOBAL	__end_of_RF24_getPALevel
	__end_of_RF24_getPALevel:
	signat	_RF24_getPALevel,89
	global	_RF24_enableDynamicPayloads

;; *************** function _RF24_enableDynamicPayloads *****************
;; Defined at:
;;		line 323 in file "F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		_RF24_read_register
;;		_RF24_write_register
;; This function is called by:
;;		_Network_begin
;; This function uses a non-reentrant model
;;
psect	text42,local,class=CODE,delta=2,merge=1,group=1
	line	323
global __ptext42
__ptext42:	;psect for function _RF24_enableDynamicPayloads
psect	text42
	file	"F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c"
	line	323
	
_RF24_enableDynamicPayloads:	
;incstack = 0
	callstack 2
; Regs used in _RF24_enableDynamicPayloads: [wreg+status,2+status,0+pclath+cstack]
	line	325
	
l3267:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 325:     RF24_write_register(0x1D, RF24_read_register(0x1D) | (1 << (2)));
	movlw	low(01Dh)
	fcall	_RF24_read_register
	iorlw	04h
	movwf	(??_RF24_enableDynamicPayloads+0)+0
	movf	(??_RF24_enableDynamicPayloads+0)+0,w
	movwf	(RF24_write_register@value)
	movlw	low(01Dh)
	fcall	_RF24_write_register
	line	326
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 326:     RF24_write_register(0x1C, RF24_read_register(0x1C) | (1 << (5)) | (1 << (4)) | (1 << (3)) | (1 << (2)) | (1 << (1)) | (1 << (0)));
	movlw	low(01Ch)
	fcall	_RF24_read_register
	iorlw	03Fh
	movwf	(??_RF24_enableDynamicPayloads+0)+0
	movf	(??_RF24_enableDynamicPayloads+0)+0,w
	movwf	(RF24_write_register@value)
	movlw	low(01Ch)
	fcall	_RF24_write_register
	line	327
	
l459:	
	return
	callstack 0
GLOBAL	__end_of_RF24_enableDynamicPayloads
	__end_of_RF24_enableDynamicPayloads:
	signat	_RF24_enableDynamicPayloads,89
	global	_RF24_begin

;; *************** function _RF24_begin *****************
;; Defined at:
;;		line 59 in file "F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 5
;; This function calls:
;;		_RF24_flush_rx
;;		_RF24_flush_tx
;;		_RF24_powerUp
;;		_RF24_read_register
;;		_RF24_setAddressWidth
;;		_RF24_setChannel
;;		_RF24_setDataRate
;;		_RF24_setPALevel
;;		_RF24_setPayloadSize
;;		_RF24_setRetries
;;		_RF24_write_register
;; This function is called by:
;;		_Network_begin
;; This function uses a non-reentrant model
;;
psect	text43,local,class=CODE,delta=2,merge=1,group=1
	line	59
global __ptext43
__ptext43:	;psect for function _RF24_begin
psect	text43
	file	"F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c"
	line	59
	
_RF24_begin:	
;incstack = 0
	callstack 1
; Regs used in _RF24_begin: [wreg+status,2+status,0+pclath+cstack]
	line	62
	
l3229:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 62:     TRISD2 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1090/8)^080h,(1090)&7	;volatile
	line	63
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 63:     TRISD3 = 0;
	bcf	(1091/8)^080h,(1091)&7	;volatile
	line	64
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 64:     RD2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(66/8),(66)&7	;volatile
	line	65
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 65:     RD3 = 1;
	bsf	(67/8),(67)&7	;volatile
	line	66
	
l3231:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 66:     _delay((unsigned long)((100)*(16000000/4000.0)));
	asmopt push
asmopt off
movlw  3
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_RF24_begin+0)+0+2)
movlw	8
movwf	((??_RF24_begin+0)+0+1)
	movlw	118
movwf	((??_RF24_begin+0)+0)
	u2497:
decfsz	((??_RF24_begin+0)+0),f
	goto	u2497
	decfsz	((??_RF24_begin+0)+0+1),f
	goto	u2497
	decfsz	((??_RF24_begin+0)+0+2),f
	goto	u2497
	nop
asmopt pop

	line	76
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 76:     _delay((unsigned long)((5)*(16000000/4000.0)));
	asmopt push
asmopt off
movlw	26
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_RF24_begin+0)+0+1)
	movlw	247
movwf	((??_RF24_begin+0)+0)
	u2507:
decfsz	((??_RF24_begin+0)+0),f
	goto	u2507
	decfsz	((??_RF24_begin+0)+0+1),f
	goto	u2507
	nop2
asmopt pop

	line	80
	
l3233:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 80:     RF24_setRetries(5, 15);
	movlw	low(0Fh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_RF24_begin+0)+0
	movf	(??_RF24_begin+0)+0,w
	movwf	(RF24_setRetries@count)
	movlw	low(05h)
	fcall	_RF24_setRetries
	line	85
	
l3235:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 85:     RF24_setPALevel(RF24_PA_MAX);
	movlw	low(03h)
	fcall	_RF24_setPALevel
	line	86
	
l3237:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 86:     RF24_setDataRate(RF24_1MBPS);
	movlw	low(0)
	fcall	_RF24_setDataRate
	line	89
	
l3239:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 89:     RF24_write_register(0x1D, 0);
	clrf	(RF24_write_register@value)
	movlw	low(01Dh)
	fcall	_RF24_write_register
	line	90
	
l3241:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 90:     RF24_write_register(0x1C, 0);
	clrf	(RF24_write_register@value)
	movlw	low(01Ch)
	fcall	_RF24_write_register
	line	91
	
l3243:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 91:     RF24_write_register(0x01, 0x3F);
	movlw	low(03Fh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_RF24_begin+0)+0
	movf	(??_RF24_begin+0)+0,w
	movwf	(RF24_write_register@value)
	movlw	low(01h)
	fcall	_RF24_write_register
	line	92
	
l3245:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 92:     RF24_write_register(0x02, 3);
	movlw	low(03h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_RF24_begin+0)+0
	movf	(??_RF24_begin+0)+0,w
	movwf	(RF24_write_register@value)
	movlw	low(02h)
	fcall	_RF24_write_register
	line	93
	
l3247:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 93:     RF24_setPayloadSize(32);
	movlw	low(020h)
	fcall	_RF24_setPayloadSize
	line	94
	
l3249:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 94:     RF24_setAddressWidth(5);
	movlw	low(05h)
	fcall	_RF24_setAddressWidth
	line	99
	
l3251:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 99:     RF24_setChannel(76);
	movlw	low(04Ch)
	fcall	_RF24_setChannel
	line	103
	
l3253:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 103:     RF24_write_register(0x07, (1 << (6)) | (1 << (5)) | (1 << (4)));
	movlw	low(070h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_RF24_begin+0)+0
	movf	(??_RF24_begin+0)+0,w
	movwf	(RF24_write_register@value)
	movlw	low(07h)
	fcall	_RF24_write_register
	line	106
	
l3255:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 106:     RF24_flush_rx();
	fcall	_RF24_flush_rx
	line	107
	
l3257:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 107:     RF24_flush_tx();
	fcall	_RF24_flush_tx
	line	116
	
l3259:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 116:     RF24_write_register(0x00, ((1 << (3)) | (1 << (2))));
	movlw	low(0Ch)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_RF24_begin+0)+0
	movf	(??_RF24_begin+0)+0,w
	movwf	(RF24_write_register@value)
	movlw	low(0)
	fcall	_RF24_write_register
	line	117
	
l3261:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 117:     RF24_powerUp();
	fcall	_RF24_powerUp
	line	118
	
l3263:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 118:     RF24_attr_config = RF24_read_register(0x00);
	movlw	low(0)
	fcall	_RF24_read_register
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_RF24_begin+0)+0
	movf	(??_RF24_begin+0)+0,w
	movwf	(_RF24_attr_config)
	line	120
	
l385:	
	return
	callstack 0
GLOBAL	__end_of_RF24_begin
	__end_of_RF24_begin:
	signat	_RF24_begin,89
	global	_RF24_setRetries

;; *************** function _RF24_setRetries *****************
;; Defined at:
;;		line 462 in file "F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c"
;; Parameters:    Size  Location     Type
;;  delay           1    wreg     unsigned char 
;;  count           1    9[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  delay           1   10[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         2       3       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		_RF24_write_register
;; This function is called by:
;;		_RF24_begin
;; This function uses a non-reentrant model
;;
psect	text44,local,class=CODE,delta=2,merge=1,group=1
	line	462
global __ptext44
__ptext44:	;psect for function _RF24_setRetries
psect	text44
	file	"F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c"
	line	462
	
_RF24_setRetries:	
;incstack = 0
	callstack 1
; Regs used in _RF24_setRetries: [wreg+status,2+status,0+pclath+cstack]
;RF24_setRetries@delay stored from wreg
	movwf	(RF24_setRetries@delay)
	line	464
	
l3145:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 462: void RF24_setRetries(uint8_t delay, uint8_t count);F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 463: {;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 464:     RF24_write_register(0x04, ((delay & 0x0f) << 4) | (count & 0x0f));
	movlw	low(0Fh)
	andwf	(RF24_setRetries@count),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_RF24_setRetries+0)+0
	movf	(RF24_setRetries@delay),w
	andlw	0Fh
	movwf	(??_RF24_setRetries+1)+0
	movlw	(04h)-1
u2315:
	clrc
	rlf	(??_RF24_setRetries+1)+0,f
	addlw	-1
	skipz
	goto	u2315
	clrc
	rlf	(??_RF24_setRetries+1)+0,w
	iorwf	0+(??_RF24_setRetries+0)+0,w
	movwf	(??_RF24_setRetries+2)+0
	movf	(??_RF24_setRetries+2)+0,w
	movwf	(RF24_write_register@value)
	movlw	low(04h)
	fcall	_RF24_write_register
	line	465
	
l522:	
	return
	callstack 0
GLOBAL	__end_of_RF24_setRetries
	__end_of_RF24_setRetries:
	signat	_RF24_setRetries,8313
	global	_RF24_setPayloadSize

;; *************** function _RF24_setPayloadSize *****************
;; Defined at:
;;		line 177 in file "F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c"
;; Parameters:    Size  Location     Type
;;  size            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  size            1   10[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		_RF24_write_register
;; This function is called by:
;;		_Network_begin
;;		_RF24_begin
;; This function uses a non-reentrant model
;;
psect	text45,local,class=CODE,delta=2,merge=1,group=1
	line	177
global __ptext45
__ptext45:	;psect for function _RF24_setPayloadSize
psect	text45
	file	"F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c"
	line	177
	
_RF24_setPayloadSize:	
;incstack = 0
	callstack 2
; Regs used in _RF24_setPayloadSize: [wreg+status,2+status,0+pclath+cstack]
;RF24_setPayloadSize@size stored from wreg
	movwf	(RF24_setPayloadSize@size)
	line	179
	
l3133:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 177: void RF24_setPayloadSize(uint8_t size);F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 178: {;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 179:     RF24_write_register(0x11, size);
	movf	(RF24_setPayloadSize@size),w
	movwf	(??_RF24_setPayloadSize+0)+0
	movf	(??_RF24_setPayloadSize+0)+0,w
	movwf	(RF24_write_register@value)
	movlw	low(011h)
	fcall	_RF24_write_register
	line	180
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 180:     RF24_write_register(0x12, size);
	movf	(RF24_setPayloadSize@size),w
	movwf	(??_RF24_setPayloadSize+0)+0
	movf	(??_RF24_setPayloadSize+0)+0,w
	movwf	(RF24_write_register@value)
	movlw	low(012h)
	fcall	_RF24_write_register
	line	181
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 181:     RF24_write_register(0x13, size);
	movf	(RF24_setPayloadSize@size),w
	movwf	(??_RF24_setPayloadSize+0)+0
	movf	(??_RF24_setPayloadSize+0)+0,w
	movwf	(RF24_write_register@value)
	movlw	low(013h)
	fcall	_RF24_write_register
	line	182
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 182:     RF24_write_register(0x14, size);
	movf	(RF24_setPayloadSize@size),w
	movwf	(??_RF24_setPayloadSize+0)+0
	movf	(??_RF24_setPayloadSize+0)+0,w
	movwf	(RF24_write_register@value)
	movlw	low(014h)
	fcall	_RF24_write_register
	line	183
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 183:     RF24_write_register(0x15, size);
	movf	(RF24_setPayloadSize@size),w
	movwf	(??_RF24_setPayloadSize+0)+0
	movf	(??_RF24_setPayloadSize+0)+0,w
	movwf	(RF24_write_register@value)
	movlw	low(015h)
	fcall	_RF24_write_register
	line	184
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 184:     RF24_write_register(0x16, size);
	movf	(RF24_setPayloadSize@size),w
	movwf	(??_RF24_setPayloadSize+0)+0
	movf	(??_RF24_setPayloadSize+0)+0,w
	movwf	(RF24_write_register@value)
	movlw	low(016h)
	fcall	_RF24_write_register
	line	185
	
l411:	
	return
	callstack 0
GLOBAL	__end_of_RF24_setPayloadSize
	__end_of_RF24_setPayloadSize:
	signat	_RF24_setPayloadSize,4217
	global	_RF24_setPALevel

;; *************** function _RF24_setPALevel *****************
;; Defined at:
;;		line 122 in file "F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c"
;; Parameters:    Size  Location     Type
;;  level           1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  level           1    2[BANK0 ] unsigned char 
;;  setup           1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         2       3       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		_RF24_read_register
;;		_RF24_write_register
;; This function is called by:
;;		_RF24_begin
;; This function uses a non-reentrant model
;;
psect	text46,local,class=CODE,delta=2,merge=1,group=1
	line	122
global __ptext46
__ptext46:	;psect for function _RF24_setPALevel
psect	text46
	file	"F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c"
	line	122
	
_RF24_setPALevel:	
;incstack = 0
	callstack 1
; Regs used in _RF24_setPALevel: [wreg+status,2+status,0+pclath+cstack]
;RF24_setPALevel@level stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(RF24_setPALevel@level)
	line	124
	
l3147:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 122: void RF24_setPALevel(uint8_t level);F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 123: {;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 124:     uint8_t setup = RF24_read_register(0x06) & 0xF8;
	movlw	low(06h)
	fcall	_RF24_read_register
	andlw	0F8h
	movwf	(??_RF24_setPALevel+0)+0
	movf	(??_RF24_setPALevel+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(RF24_setPALevel@setup)
	line	125
	
l3149:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 125:     setup |= (level > RF24_PA_MAX ? RF24_PA_MAX : level) << 1;
	movlw	low(04h)
	subwf	(RF24_setPALevel@level),w
	skipnc
	goto	u2321
	goto	u2320
u2321:
	goto	l3153
u2320:
	
l3151:	
	movf	(RF24_setPALevel@level),w
	movwf	(??_RF24_setPALevel+0)+0
	movf	(??_RF24_setPALevel+0)+0,w
	movwf	(_RF24_setPALevel$675)
	goto	l3155
	
l3153:	
	movlw	low(03h)
	movwf	(??_RF24_setPALevel+0)+0
	movf	(??_RF24_setPALevel+0)+0,w
	movwf	(_RF24_setPALevel$675)
	
l3155:	
	movf	(_RF24_setPALevel$675),w
	movwf	(??_RF24_setPALevel+0)+0
	addwf	(??_RF24_setPALevel+0)+0,w
	movwf	(??_RF24_setPALevel+1)+0
	movf	(??_RF24_setPALevel+1)+0,w
	iorwf	(RF24_setPALevel@setup),f
	line	126
	
l3157:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 126:     RF24_write_register(0x06, setup);
	movf	(RF24_setPALevel@setup),w
	movwf	(??_RF24_setPALevel+0)+0
	movf	(??_RF24_setPALevel+0)+0,w
	movwf	(RF24_write_register@value)
	movlw	low(06h)
	fcall	_RF24_write_register
	line	127
	
l392:	
	return
	callstack 0
GLOBAL	__end_of_RF24_setPALevel
	__end_of_RF24_setPALevel:
	signat	_RF24_setPALevel,4217
	global	_RF24_setDataRate

;; *************** function _RF24_setDataRate *****************
;; Defined at:
;;		line 363 in file "F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c"
;; Parameters:    Size  Location     Type
;;  speed           1    wreg     enum E899
;; Auto vars:     Size  Location     Type
;;  speed           1    0[BANK0 ] enum E899
;;  setup           1    1[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1       2       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		_RF24_read_register
;;		_RF24_write_register
;; This function is called by:
;;		_Network_begin
;;		_RF24_begin
;; This function uses a non-reentrant model
;;
psect	text47,local,class=CODE,delta=2,merge=1,group=1
	line	363
global __ptext47
__ptext47:	;psect for function _RF24_setDataRate
psect	text47
	file	"F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c"
	line	363
	
_RF24_setDataRate:	
;incstack = 0
	callstack 2
; Regs used in _RF24_setDataRate: [wreg+status,2+status,0+pclath+cstack]
;RF24_setDataRate@speed stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(RF24_setDataRate@speed)
	line	365
	
l3119:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 363: void RF24_setDataRate(rf24_datarate_e speed);F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 364: {;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 365:     uint8_t setup = RF24_read_register(0x06);
	movlw	low(06h)
	fcall	_RF24_read_register
	movwf	(??_RF24_setDataRate+0)+0
	movf	(??_RF24_setDataRate+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(RF24_setDataRate@setup)
	line	367
	
l3121:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 367:     setup = setup & ~((1 << (5)) | (1 << (3)));
	movf	(RF24_setDataRate@setup),w
	andlw	0D7h
	movwf	(??_RF24_setDataRate+0)+0
	movf	(??_RF24_setDataRate+0)+0,w
	movwf	(RF24_setDataRate@setup)
	line	368
	
l3123:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 368:     if (speed == RF24_250KBPS)
		movlw	2
	xorwf	((RF24_setDataRate@speed)),w
	btfss	status,2
	goto	u2281
	goto	u2280
u2281:
	goto	l3127
u2280:
	line	370
	
l3125:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 369:     {;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 370:         setup |= (1 << (5));
	bsf	(RF24_setDataRate@setup)+(5/8),(5)&7
	line	371
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 371:     }
	goto	l3131
	line	372
	
l3127:	
		decf	((RF24_setDataRate@speed)),w
	btfss	status,2
	goto	u2291
	goto	u2290
u2291:
	goto	l3131
u2290:
	line	374
	
l3129:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 373:     {;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 374:         setup |= (1 << (3));
	bsf	(RF24_setDataRate@setup)+(3/8),(3)&7
	line	376
	
l3131:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 376:     RF24_write_register(0x06, setup);
	movf	(RF24_setDataRate@setup),w
	movwf	(??_RF24_setDataRate+0)+0
	movf	(??_RF24_setDataRate+0)+0,w
	movwf	(RF24_write_register@value)
	movlw	low(06h)
	fcall	_RF24_write_register
	line	377
	
l478:	
	return
	callstack 0
GLOBAL	__end_of_RF24_setDataRate
	__end_of_RF24_setDataRate:
	signat	_RF24_setDataRate,4217
	global	_RF24_setChannel

;; *************** function _RF24_setChannel *****************
;; Defined at:
;;		line 442 in file "F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c"
;; Parameters:    Size  Location     Type
;;  channel         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  channel         1   10[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		_RF24_write_register
;; This function is called by:
;;		_internet_setChannel
;;		_RF24_begin
;; This function uses a non-reentrant model
;;
psect	text48,local,class=CODE,delta=2,merge=1,group=1
	line	442
global __ptext48
__ptext48:	;psect for function _RF24_setChannel
psect	text48
	file	"F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c"
	line	442
	
_RF24_setChannel:	
;incstack = 0
	callstack 2
; Regs used in _RF24_setChannel: [wreg+status,2+status,0+pclath+cstack]
;RF24_setChannel@channel stored from wreg
	movwf	(RF24_setChannel@channel)
	line	444
	
l3053:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 442: void RF24_setChannel(uint8_t channel);F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 443: {;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 444:     RF24_write_register(0x05, channel);
	movf	(RF24_setChannel@channel),w
	movwf	(??_RF24_setChannel+0)+0
	movf	(??_RF24_setChannel+0)+0,w
	movwf	(RF24_write_register@value)
	movlw	low(05h)
	fcall	_RF24_write_register
	line	445
	
l507:	
	return
	callstack 0
GLOBAL	__end_of_RF24_setChannel
	__end_of_RF24_setChannel:
	signat	_RF24_setChannel,4217
	global	_RF24_setAddressWidth

;; *************** function _RF24_setAddressWidth *****************
;; Defined at:
;;		line 466 in file "F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c"
;; Parameters:    Size  Location     Type
;;  w               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  w               1   10[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		_RF24_write_register
;; This function is called by:
;;		_Network_begin
;;		_RF24_begin
;; This function uses a non-reentrant model
;;
psect	text49,local,class=CODE,delta=2,merge=1,group=1
	line	466
global __ptext49
__ptext49:	;psect for function _RF24_setAddressWidth
psect	text49
	file	"F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c"
	line	466
	
_RF24_setAddressWidth:	
;incstack = 0
	callstack 2
; Regs used in _RF24_setAddressWidth: [wreg+status,2+status,0+pclath+cstack]
;RF24_setAddressWidth@w stored from wreg
	movwf	(RF24_setAddressWidth@w)
	line	468
	
l3117:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 466: void RF24_setAddressWidth(uint8_t w);F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 467: {;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 468:     RF24_write_register(0x03, (w - 2) & 0b11);
	movf	(RF24_setAddressWidth@w),w
	addlw	0FEh
	andlw	03h
	movwf	(??_RF24_setAddressWidth+0)+0
	movf	(??_RF24_setAddressWidth+0)+0,w
	movwf	(RF24_write_register@value)
	movlw	low(03h)
	fcall	_RF24_write_register
	line	469
	
l525:	
	return
	callstack 0
GLOBAL	__end_of_RF24_setAddressWidth
	__end_of_RF24_setAddressWidth:
	signat	_RF24_setAddressWidth,4217
	global	_RF24_powerUp

;; *************** function _RF24_powerUp *****************
;; Defined at:
;;		line 171 in file "F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		_RF24_read_register
;;		_RF24_write_register
;; This function is called by:
;;		_RF24_begin
;; This function uses a non-reentrant model
;;
psect	text50,local,class=CODE,delta=2,merge=1,group=1
	line	171
global __ptext50
__ptext50:	;psect for function _RF24_powerUp
psect	text50
	file	"F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c"
	line	171
	
_RF24_powerUp:	
;incstack = 0
	callstack 1
; Regs used in _RF24_powerUp: [wreg+status,2+status,0+pclath+cstack]
	line	173
	
l3161:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 173:     RF24_write_register(0x00, RF24_read_register(0x00) | (1 << (1)));
	movlw	low(0)
	fcall	_RF24_read_register
	iorlw	02h
	movwf	(??_RF24_powerUp+0)+0
	movf	(??_RF24_powerUp+0)+0,w
	movwf	(RF24_write_register@value)
	movlw	low(0)
	fcall	_RF24_write_register
	line	174
	
l3163:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 174:     _delay((unsigned long)((5)*(16000000/4000.0)));
	asmopt push
asmopt off
movlw	26
movwf	((??_RF24_powerUp+0)+0+1)
	movlw	248
movwf	((??_RF24_powerUp+0)+0)
	u2517:
decfsz	((??_RF24_powerUp+0)+0),f
	goto	u2517
	decfsz	((??_RF24_powerUp+0)+0+1),f
	goto	u2517
	nop
asmopt pop

	line	175
	
l408:	
	return
	callstack 0
GLOBAL	__end_of_RF24_powerUp
	__end_of_RF24_powerUp:
	signat	_RF24_powerUp,89
	global	_RF24_read_register

;; *************** function _RF24_read_register *****************
;; Defined at:
;;		line 18 in file "F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c"
;; Parameters:    Size  Location     Type
;;  mnemonic_add    1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  mnemonic_add    1    4[COMMON] unsigned char 
;;  result          1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_SPI_exchangeByte
;; This function is called by:
;;		_RF24_begin
;;		_RF24_setPALevel
;;		_RF24_startListening
;;		_RF24_stopListening
;;		_RF24_powerUp
;;		_RF24_getDynamicPayloadSize
;;		_RF24_openReadingPipe
;;		_RF24_enableDynamicPayloads
;;		_RF24_setDataRate
;;		_RF24_getPALevel
;; This function uses a non-reentrant model
;;
psect	text51,local,class=CODE,delta=2,merge=1,group=1
	line	18
global __ptext51
__ptext51:	;psect for function _RF24_read_register
psect	text51
	file	"F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c"
	line	18
	
_RF24_read_register:	
;incstack = 0
	callstack 0
; Regs used in _RF24_read_register: [wreg+pclath+cstack]
;RF24_read_register@mnemonic_addr stored from wreg
	movwf	(RF24_read_register@mnemonic_addr)
	line	20
	
l2927:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 18: uint8_t RF24_read_register(uint8_t mnemonic_addr);F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 19: {;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 20:     RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7	;volatile
	line	22
	
l2929:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 21:     uint8_t result;;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 22:     RF24_attr_status = SPI_exchangeByte(0x00 | mnemonic_addr);
	movf	(RF24_read_register@mnemonic_addr),w
	fcall	_SPI_exchangeByte
	movwf	(??_RF24_read_register+0)+0
	movf	(??_RF24_read_register+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_RF24_attr_status)
	line	23
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 23:     result = SPI_exchangeByte(0xFF);
	movlw	low(0FFh)
	fcall	_SPI_exchangeByte
	movwf	(??_RF24_read_register+0)+0
	movf	(??_RF24_read_register+0)+0,w
	movwf	(RF24_read_register@result)
	line	24
	
l2931:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 24:     RD3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(67/8),(67)&7	;volatile
	line	26
	
l2933:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 26:     return result;
	movf	(RF24_read_register@result),w
	line	27
	
l370:	
	return
	callstack 0
GLOBAL	__end_of_RF24_read_register
	__end_of_RF24_read_register:
	signat	_RF24_read_register,4217
	global	_RF24_flush_tx

;; *************** function _RF24_flush_tx *****************
;; Defined at:
;;		line 430 in file "F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		_RF24_write_register
;; This function is called by:
;;		_RF24_begin
;;		_RF24_write
;; This function uses a non-reentrant model
;;
psect	text52,local,class=CODE,delta=2,merge=1,group=1
	line	430
global __ptext52
__ptext52:	;psect for function _RF24_flush_tx
psect	text52
	file	"F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c"
	line	430
	
_RF24_flush_tx:	
;incstack = 0
;; hardware stack exceeded
	callstack 0
; Regs used in _RF24_flush_tx: [wreg+status,2+status,0+pclath+cstack]
	line	432
	
l2959:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 432:     RF24_write_register(0xE1, 0xFF);
	movlw	low(0FFh)
	movwf	(??_RF24_flush_tx+0)+0
	movf	(??_RF24_flush_tx+0)+0,w
	movwf	(RF24_write_register@value)
	movlw	low(0E1h)
	fcall	_RF24_write_register
	line	433
	
l498:	
	return
	callstack 0
GLOBAL	__end_of_RF24_flush_tx
	__end_of_RF24_flush_tx:
	signat	_RF24_flush_tx,89
	global	_RF24_flush_rx

;; *************** function _RF24_flush_rx *****************
;; Defined at:
;;		line 434 in file "F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		_RF24_write_register
;; This function is called by:
;;		_RF24_begin
;;		_RF24_getDynamicPayloadSize
;; This function uses a non-reentrant model
;;
psect	text53,local,class=CODE,delta=2,merge=1,group=1
	line	434
global __ptext53
__ptext53:	;psect for function _RF24_flush_rx
psect	text53
	file	"F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c"
	line	434
	
_RF24_flush_rx:	
;incstack = 0
	callstack 1
; Regs used in _RF24_flush_rx: [wreg+status,2+status,0+pclath+cstack]
	line	436
	
l3159:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 436:     RF24_write_register(0xE2, 0xFF);
	movlw	low(0FFh)
	movwf	(??_RF24_flush_rx+0)+0
	movf	(??_RF24_flush_rx+0)+0,w
	movwf	(RF24_write_register@value)
	movlw	low(0E2h)
	fcall	_RF24_write_register
	line	437
	
l501:	
	return
	callstack 0
GLOBAL	__end_of_RF24_flush_rx
	__end_of_RF24_flush_rx:
	signat	_RF24_flush_rx,89
	global	_RF24_write_register

;; *************** function _RF24_write_register *****************
;; Defined at:
;;		line 42 in file "F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c"
;; Parameters:    Size  Location     Type
;;  mnemonic_add    1    wreg     unsigned char 
;;  value           1    6[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  mnemonic_add    1    8[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_SPI_exchangeByte
;; This function is called by:
;;		_RF24_begin
;;		_RF24_setPALevel
;;		_RF24_startListening
;;		_RF24_stopListening
;;		_RF24_powerUp
;;		_RF24_setPayloadSize
;;		_RF24_write
;;		_RF24_read
;;		_RF24_openReadingPipe
;;		_RF24_enableDynamicPayloads
;;		_RF24_setAutoAck
;;		_RF24_setDataRate
;;		_RF24_setCRCLength
;;		_RF24_flush_tx
;;		_RF24_flush_rx
;;		_RF24_setChannel
;;		_RF24_setRetries
;;		_RF24_setAddressWidth
;; This function uses a non-reentrant model
;;
psect	text54,local,class=CODE,delta=2,merge=1,group=1
	line	42
global __ptext54
__ptext54:	;psect for function _RF24_write_register
psect	text54
	file	"F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c"
	line	42
	
_RF24_write_register:	
;incstack = 0
	callstack 0
; Regs used in _RF24_write_register: [wreg+status,2+status,0+pclath+cstack]
;RF24_write_register@mnemonic_addr stored from wreg
	movwf	(RF24_write_register@mnemonic_addr)
	line	45
	
l2857:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 42: void RF24_write_register(uint8_t mnemonic_addr, uint8_t value);F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 43: {;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 45:     RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7	;volatile
	line	46
	
l2859:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 46:     RF24_attr_status = SPI_exchangeByte(0x20 | mnemonic_addr);
	movf	(RF24_write_register@mnemonic_addr),w
	iorlw	020h
	fcall	_SPI_exchangeByte
	movwf	(??_RF24_write_register+0)+0
	movf	(??_RF24_write_register+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_RF24_attr_status)
	line	47
	
l2861:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 47:     SPI_exchangeByte(value);
	movf	(RF24_write_register@value),w
	fcall	_SPI_exchangeByte
	line	48
	
l2863:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c: 48:     RD3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(67/8),(67)&7	;volatile
	line	49
	
l379:	
	return
	callstack 0
GLOBAL	__end_of_RF24_write_register
	__end_of_RF24_write_register:
	signat	_RF24_write_register,8313
	global	_SPI_exchangeByte

;; *************** function _SPI_exchangeByte *****************
;; Defined at:
;;		line 13 in file "F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/spi_master.c"
;; Parameters:    Size  Location     Type
;;  byte            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  byte            1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_RF24_read_n_register
;;		_RF24_read_register
;;		_RF24_write_n_register
;;		_RF24_write_register
;;		_RF24_get_status
;;		_RF24_write
;; This function uses a non-reentrant model
;;
psect	text55,local,class=CODE,delta=2,merge=1,group=1
	file	"F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/spi_master.c"
	line	13
global __ptext55
__ptext55:	;psect for function _SPI_exchangeByte
psect	text55
	file	"F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/spi_master.c"
	line	13
	
_SPI_exchangeByte:	
;incstack = 0
	callstack 1
; Regs used in _SPI_exchangeByte: [wreg]
;SPI_exchangeByte@byte stored from wreg
	movwf	(SPI_exchangeByte@byte)
	line	16
	
l2851:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/spi_master.c: 13: uint8_t SPI_exchangeByte(uint8_t byte);F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/spi_master.c: 14: {;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/spi_master.c: 16:     SSPBUF = byte;
	movf	(SPI_exchangeByte@byte),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(19)	;volatile
	line	19
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/spi_master.c: 19:         ;
	
l554:	
	line	18
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/spi_master.c: 18:     while (SSPIF == 0)
	btfss	(99/8),(99)&7	;volatile
	goto	u1991
	goto	u1990
u1991:
	goto	l554
u1990:
	
l556:	
	line	20
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/spi_master.c: 20:     SSPIF = 0;
	bcf	(99/8),(99)&7	;volatile
	line	21
	
l2853:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/spi_master.c: 21:     return SSPBUF;
	movf	(19),w	;volatile
	line	22
	
l557:	
	return
	callstack 0
GLOBAL	__end_of_SPI_exchangeByte
	__end_of_SPI_exchangeByte:
	signat	_SPI_exchangeByte,4217
	global	_ISR

;; *************** function _ISR *****************
;; Defined at:
;;		line 178 in file "F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/app/src/main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		_timeISR
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text56,local,class=CODE,delta=2,merge=1,group=0
	file	"F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/app/src/main.c"
	line	178
global __ptext56
__ptext56:	;psect for function _ISR
psect	text56
	file	"F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/app/src/main.c"
	line	178
	
_ISR:	
;incstack = 0
;; hardware stack exceeded
	callstack 0
; Regs used in _ISR: [wreg+status,2+status,0+pclath+cstack]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_ISR+0)
	movf	pclath,w
	movwf	(??_ISR+1)
	ljmp	_ISR
psect	text56
	line	180
	
i1l2829:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/app/src/main.c: 180:     timeISR();
	fcall	_timeISR
	line	181
	
i1l100:	
	movf	(??_ISR+1),w
	movwf	pclath
	swapf	(??_ISR+0),w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	callstack 0
GLOBAL	__end_of_ISR
	__end_of_ISR:
	signat	_ISR,89
	global	_timeISR

;; *************** function _timeISR *****************
;; Defined at:
;;		line 35 in file "F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/time.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text57,local,class=CODE,delta=2,merge=1,group=1
	file	"F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/time.c"
	line	35
global __ptext57
__ptext57:	;psect for function _timeISR
psect	text57
	file	"F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/time.c"
	line	35
	
_timeISR:	
;incstack = 0
;; hardware stack exceeded
	callstack 0
; Regs used in _timeISR: [wreg]
	line	37
	
i1l2763:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/time.c: 37:     if (TMR1IF)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(96/8),(96)&7	;volatile
	goto	u193_21
	goto	u193_20
u193_21:
	goto	i1l594
u193_20:
	line	39
	
i1l2765:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/time.c: 38:     {;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/time.c: 39:         _microsMSB += 0x10000;
	movlw	0
	addwf	(__microsMSB),f
	movlw	0
	skipnc
movlw 1
	addwf	(__microsMSB+1),f
	movlw	01h
	skipnc
movlw 2
	addwf	(__microsMSB+2),f
	movlw	0
	skipnc
movlw 1
	addwf	(__microsMSB+3),f
	line	40
	
i1l2767:	
;F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/time.c: 40:         TMR1IF = 0;
	bcf	(96/8),(96)&7	;volatile
	line	42
	
i1l594:	
	return
	callstack 0
GLOBAL	__end_of_timeISR
	__end_of_timeISR:
	signat	_timeISR,89
global	___latbits
___latbits	equ	2
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp+0
	end

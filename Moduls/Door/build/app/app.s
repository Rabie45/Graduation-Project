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
	FNCALL	_main,_transport_udp_tx
	FNCALL	_main,_wait_init
	FNCALL	_wait_init,_timerInit
	FNCALL	_transport_udp_tx,_internet_tx
	FNCALL	_internet_tx,_internet_relay
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
	FNCALL	_RF24_get_status,_SPI_exchangeByte
	FNCALL	_RF24_flush_tx,_RF24_write_register
	FNCALL	_RF24_stopListening,_RF24_read_register
	FNCALL	_RF24_stopListening,_RF24_write_register
	FNCALL	_RF24_startListening,_RF24_read_register
	FNCALL	_RF24_startListening,_RF24_write_register
	FNCALL	_RF24_openWritingPipe,_RF24_write_n_register
	FNCALL	_RF24_openReadingPipe,_RF24_read_register
	FNCALL	_RF24_openReadingPipe,_RF24_write_n_register
	FNCALL	_RF24_openReadingPipe,_RF24_write_register
	FNCALL	_RF24_write_register,_SPI_exchangeByte
	FNCALL	_RF24_write_n_register,_SPI_exchangeByte
	FNCALL	_RF24_read_register,_SPI_exchangeByte
	FNROOT	_main
	FNCALL	_ISR,_timeISR
	FNCALL	intlevel1,_ISR
	global	intlevel1
	FNROOT	intlevel1
psect	strings,class=STRING,delta=2,noexec
global __pstrings
__pstrings:
stringtab:
	global    __stringtab
__stringtab:
;	String table - string pointers are 1 byte each
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
stringcode:stringdir:
movlw high(stringdir)
movwf pclath
movf fsr,w
incf fsr
	addwf pc
	global __stringbase
__stringbase:
	retlw	0
psect	strings
	global    __end_of__stringtab
__end_of__stringtab:
	file	"F:/GitHub/Graduation-Project/Moduls/Door/libs/logline.c"
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
psect	strings
	file	"F:/GitHub/Graduation-Project/Moduls/Door/libs/include\logline.h"
	line	17
_LOGLINE_FAIL:
	retlw	046h
	retlw	041h
	retlw	049h
	retlw	04Ch
	retlw	low(0)
	global __end_of_LOGLINE_FAIL
__end_of_LOGLINE_FAIL:
psect	strings
	file	"F:/GitHub/Graduation-Project/Moduls/Door/libs/include\internet.h"
	line	14
_BROADCAST_PIPE:
	retlw	0F9h
	retlw	036h
	retlw	0CDh
	retlw	0ACh
	retlw	0E7h
	global __end_of_BROADCAST_PIPE
__end_of_BROADCAST_PIPE:
psect	strings
	file	"F:/GitHub/Graduation-Project/Moduls/Door/libs/include\logline.h"
	line	16
_LOGLINE_OK:
	retlw	04Fh
	retlw	04Bh
	retlw	low(0)
	global __end_of_LOGLINE_OK
__end_of_LOGLINE_OK:
	global	_BASE_PIPE
psect	strings
	file	"F:/GitHub/Graduation-Project/Moduls/Door/libs/include\internet.h"
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
	global	_node
	global	__microsMSB
	global	_prop
	global	_RF24_attr_status
	global	_networkInfo
	global	_buffer_rx
	global	_buffer_tx
	global	_TMR1
_TMR1	set	0xE
	global	_TXREG
_TXREG	set	0x19
	global	_SSPBUF
_SSPBUF	set	0x13
	global	_SSPIF
_SSPIF	set	0x63
	global	_RD2
_RD2	set	0x42
	global	_RD3
_RD3	set	0x43
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
	global	_RD0
_RD0	set	0x40
	global	_RD1
_RD1	set	0x41
	global	_TRMT
_TRMT	set	0x4C1
	global	_TMR1IE
_TMR1IE	set	0x460
	global	_TRISD0
_TRISD0	set	0x440
	global	_TRISD1
_TRISD1	set	0x441
	
STR_19:	
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
psect	strings
	
STR_2:	
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
psect	strings
	
STR_7:	
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
psect	strings
	
STR_11:	
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
psect	strings
	
STR_5:	
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
psect	strings
	
STR_1:	
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
psect	strings
	
STR_9:	
	retlw	82	;'R'
	retlw	70	;'F'
	retlw	95	;'_'
	retlw	83	;'S'
	retlw	69	;'E'
	retlw	84	;'T'
	retlw	85	;'U'
	retlw	80	;'P'
	retlw	0
psect	strings
	
STR_6:	
	retlw	83	;'S'
	retlw	69	;'E'
	retlw	84	;'T'
	retlw	85	;'U'
	retlw	80	;'P'
	retlw	95	;'_'
	retlw	65	;'A'
	retlw	87	;'W'
	retlw	0
psect	strings
	
STR_3:	
	retlw	67	;'C'
	retlw	79	;'O'
	retlw	78	;'N'
	retlw	70	;'F'
	retlw	73	;'I'
	retlw	71	;'G'
	retlw	0
psect	strings
	
STR_10:	
	retlw	83	;'S'
	retlw	84	;'T'
	retlw	65	;'A'
	retlw	84	;'T'
	retlw	85	;'U'
	retlw	83	;'S'
	retlw	0
psect	strings
	
STR_12:	
	retlw	82	;'R'
	retlw	88	;'X'
	retlw	95	;'_'
	retlw	80	;'P'
	retlw	48	;'0'
	retlw	0
psect	strings
	
STR_13:	
	retlw	82	;'R'
	retlw	88	;'X'
	retlw	95	;'_'
	retlw	80	;'P'
	retlw	49	;'1'
	retlw	0
psect	strings
	
STR_14:	
	retlw	82	;'R'
	retlw	88	;'X'
	retlw	95	;'_'
	retlw	80	;'P'
	retlw	50	;'2'
	retlw	0
psect	strings
	
STR_15:	
	retlw	82	;'R'
	retlw	88	;'X'
	retlw	95	;'_'
	retlw	80	;'P'
	retlw	51	;'3'
	retlw	0
psect	strings
	
STR_16:	
	retlw	82	;'R'
	retlw	88	;'X'
	retlw	95	;'_'
	retlw	80	;'P'
	retlw	52	;'4'
	retlw	0
psect	strings
	
STR_17:	
	retlw	82	;'R'
	retlw	88	;'X'
	retlw	95	;'_'
	retlw	80	;'P'
	retlw	53	;'5'
	retlw	0
psect	strings
	
STR_4:	
	retlw	69	;'E'
	retlw	78	;'N'
	retlw	95	;'_'
	retlw	65	;'A'
	retlw	65	;'A'
	retlw	0
psect	strings
	
STR_8:	
	retlw	82	;'R'
	retlw	70	;'F'
	retlw	95	;'_'
	retlw	67	;'C'
	retlw	72	;'H'
	retlw	0
psect	strings
STR_18	equ	STR_11+8
; #config settings
	config pad_punits      = on
	config apply_mask      = off
	config ignore_cmsgs    = off
	config default_configs = off
	config default_idlocs  = off
	config FOSC = "HS"
	config WDTE = "OFF"
	config PWRTE = "ON"
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

_prop:
       ds      1

_RF24_attr_status:
       ds      1

_networkInfo:
       ds      6

psect	bssBANK1,class=BANK1,space=1,noexec
global __pbssBANK1
__pbssBANK1:
_buffer_rx:
       ds      32

_buffer_tx:
       ds      32

	file	"app.s"
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

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssCOMMON)+0)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+011h)
	fcall	clear_ram0
; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2,merge=1
	movlw	low(__pbssBANK1)
	movwf	fsr
	movlw	low((__pbssBANK1)+040h)
	fcall	clear_ram0
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
?_timeISR:	; 1 bytes @ 0x0
??_timeISR:	; 1 bytes @ 0x0
?_internet_calculateMask:	; 1 bytes @ 0x0
?_internet_hasChild:	; 1 bytes @ 0x0
?_RF24_openWritingPipe:	; 1 bytes @ 0x0
?_RF24_stopListening:	; 1 bytes @ 0x0
?_Serial_write:	; 1 bytes @ 0x0
?_RF24_startListening:	; 1 bytes @ 0x0
?_SPI_exchangeByte:	; 1 bytes @ 0x0
?_RF24_flush_tx:	; 1 bytes @ 0x0
?_ISR:	; 1 bytes @ 0x0
??_ISR:	; 1 bytes @ 0x0
?_timerInit:	; 1 bytes @ 0x0
?_RF24_read_register:	; 1 bytes @ 0x0
?_RF24_get_status:	; 1 bytes @ 0x0
?_main:	; 2 bytes @ 0x0
	ds	2
??_internet_calculateMask:	; 1 bytes @ 0x2
??_internet_hasChild:	; 1 bytes @ 0x2
??_Serial_write:	; 1 bytes @ 0x2
??_SPI_exchangeByte:	; 1 bytes @ 0x2
??_timerInit:	; 1 bytes @ 0x2
	global	internet_calculateMask@address
internet_calculateMask@address:	; 1 bytes @ 0x2
	global	SPI_exchangeByte@byte
SPI_exchangeByte@byte:	; 1 bytes @ 0x2
	global	Serial_write@data
Serial_write@data:	; 1 bytes @ 0x2
	ds	1
?__$_logline_str:	; 1 bytes @ 0x3
??_RF24_read_register:	; 1 bytes @ 0x3
?_RF24_write_n_register:	; 1 bytes @ 0x3
??_RF24_get_status:	; 1 bytes @ 0x3
	global	timerInit@mhz
timerInit@mhz:	; 1 bytes @ 0x3
	global	internet_calculateMask@mask
internet_calculateMask@mask:	; 1 bytes @ 0x3
	global	internet_hasChild@address
internet_hasChild@address:	; 1 bytes @ 0x3
	global	RF24_write_n_register@buffer
RF24_write_n_register@buffer:	; 2 bytes @ 0x3
	global	__$_logline_str@string
__$_logline_str@string:	; 2 bytes @ 0x3
	ds	1
	global	timerInit@prescaler
timerInit@prescaler:	; 1 bytes @ 0x4
	global	RF24_read_register@mnemonic_addr
RF24_read_register@mnemonic_addr:	; 1 bytes @ 0x4
	ds	1
??_wait_init:	; 1 bytes @ 0x5
??__$_logline_str:	; 1 bytes @ 0x5
	global	RF24_read_register@result
RF24_read_register@result:	; 1 bytes @ 0x5
	global	RF24_write_n_register@length
RF24_write_n_register@length:	; 1 bytes @ 0x5
	global	wait_init@megaHertez
wait_init@megaHertez:	; 1 bytes @ 0x5
	ds	1
??_RF24_write_n_register:	; 1 bytes @ 0x6
?_RF24_write_register:	; 1 bytes @ 0x6
	global	RF24_write_register@value
RF24_write_register@value:	; 1 bytes @ 0x6
	global	__$_logline_str@limit
__$_logline_str@limit:	; 1 bytes @ 0x6
	ds	1
??_RF24_write_register:	; 1 bytes @ 0x7
	global	RF24_write_n_register@mnemonic_addr
RF24_write_n_register@mnemonic_addr:	; 1 bytes @ 0x7
	ds	1
??_RF24_openWritingPipe:	; 1 bytes @ 0x8
	global	RF24_write_register@mnemonic_addr
RF24_write_register@mnemonic_addr:	; 1 bytes @ 0x8
	ds	1
?_RF24_openReadingPipe:	; 1 bytes @ 0x9
??_RF24_stopListening:	; 1 bytes @ 0x9
??_RF24_startListening:	; 1 bytes @ 0x9
??_RF24_flush_tx:	; 1 bytes @ 0x9
	global	RF24_openWritingPipe@address
RF24_openWritingPipe@address:	; 1 bytes @ 0x9
	global	RF24_openReadingPipe@address
RF24_openReadingPipe@address:	; 2 bytes @ 0x9
	ds	1
??_RF24_write:	; 1 bytes @ 0xA
	ds	1
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
??_RF24_openReadingPipe:	; 1 bytes @ 0x0
?_RF24_write:	; 1 bytes @ 0x0
	global	RF24_write@len
RF24_write@len:	; 1 bytes @ 0x0
	ds	1
	global	RF24_write@buf
RF24_write@buf:	; 1 bytes @ 0x1
	ds	1
	global	RF24_openReadingPipe@child
RF24_openReadingPipe@child:	; 1 bytes @ 0x2
	ds	1
?_internet_relay:	; 1 bytes @ 0x3
	global	internet_relay@size
internet_relay@size:	; 1 bytes @ 0x3
	ds	1
??_internet_relay:	; 1 bytes @ 0x4
	ds	1
	global	internet_relay@dstMask
internet_relay@dstMask:	; 1 bytes @ 0x5
	ds	1
	global	internet_relay@packetHeader
internet_relay@packetHeader:	; 1 bytes @ 0x6
	ds	1
	global	internet_relay@payload
internet_relay@payload:	; 1 bytes @ 0x7
	ds	1
?_internet_tx:	; 1 bytes @ 0x8
	global	internet_tx@size
internet_tx@size:	; 1 bytes @ 0x8
	ds	1
??_internet_tx:	; 1 bytes @ 0x9
	ds	1
	global	internet_tx@packetHeader
internet_tx@packetHeader:	; 1 bytes @ 0xA
	ds	1
	global	internet_tx@payload
internet_tx@payload:	; 1 bytes @ 0xB
	ds	1
?_transport_udp_tx:	; 1 bytes @ 0xC
	global	transport_udp_tx@size
transport_udp_tx@size:	; 1 bytes @ 0xC
	ds	1
	global	transport_udp_tx@destination
transport_udp_tx@destination:	; 1 bytes @ 0xD
	ds	1
	global	transport_udp_tx@sourcePort
transport_udp_tx@sourcePort:	; 1 bytes @ 0xE
	ds	1
	global	transport_udp_tx@destinationPort
transport_udp_tx@destinationPort:	; 1 bytes @ 0xF
	ds	1
??_transport_udp_tx:	; 1 bytes @ 0x10
	ds	1
	global	transport_udp_tx@payload
transport_udp_tx@payload:	; 1 bytes @ 0x11
	ds	1
	global	transport_udp_tx@packetHeader
transport_udp_tx@packetHeader:	; 1 bytes @ 0x12
	ds	1
??_main:	; 1 bytes @ 0x13
	ds	3
	global	main@packet
main@packet:	; 1 bytes @ 0x16
	ds	1
;!
;!Data Sizes:
;!    Strings     168
;!    Constant    34
;!    Data        0
;!    BSS         82
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14     11      12
;!    BANK0            80     23      40
;!    BANK1            80      0      64
;!    BANK3            96      0       0
;!    BANK2            96      0       0

;!
;!Pointer List with Targets:
;!
;!    buffer_tx.udpHeader	PTR struct UDPPacket size(1) Largest target is 0
;!
;!    transport_udp_process$0	PTR unsigned char  size(1) Largest target is 32
;!		 -> buffer_rx(BANK1[32]), 
;!
;!    _$_logline_str@string	PTR unsigned char  size(2) Largest target is 32
;!		 -> STR_19(CODE[23]), STR_18(CODE[3]), STR_17(CODE[6]), STR_16(CODE[6]), 
;!		 -> STR_15(CODE[6]), STR_14(CODE[6]), STR_13(CODE[6]), STR_12(CODE[6]), 
;!		 -> STR_11(CODE[11]), STR_10(CODE[7]), STR_9(CODE[9]), STR_8(CODE[6]), 
;!		 -> STR_7(CODE[11]), STR_6(CODE[9]), STR_5(CODE[10]), STR_4(CODE[6]), 
;!		 -> STR_3(CODE[7]), STR_2(CODE[23]), STR_1(CODE[10]), buffer_rx(BANK1[32]), 
;!		 -> buffer_tx(BANK1[32]), 
;!
;!    RF24_openWritingPipe@address	PTR unsigned char  size(1) Largest target is 6
;!		 -> networkInfo(BANK0[6]), 
;!
;!    RF24_openReadingPipe@address	PTR unsigned char  size(2) Largest target is 6
;!		 -> BASE_PIPE(CODE[5]), networkInfo(BANK0[6]), 
;!
;!    RF24_write@buf	PTR void  size(1) Largest target is 32
;!		 -> buffer_rx(BANK1[32]), buffer_tx(BANK1[32]), 
;!
;!    RF24_write_n_register@buffer	PTR unsigned char  size(2) Largest target is 6
;!		 -> BASE_PIPE(CODE[5]), networkInfo(BANK0[6]), 
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
;!    internet_tx@payload	PTR unsigned char  size(1) Largest target is 32
;!		 -> buffer_tx(BANK1[32]), 
;!
;!    internet_tx@packetHeader	PTR struct Packet size(1) Largest target is 32
;!		 -> buffer_tx(BANK1[32]), 
;!
;!    sp__memcpy	PTR void  size(1) Largest target is 6
;!		 -> networkInfo(BANK0[6]), 
;!
;!    transport_udp_tx@payload	PTR unsigned char  size(1) Largest target is 32
;!		 -> buffer_tx(BANK1[32]), 
;!
;!    transport_udp_tx@packetHeader	PTR struct UDPPacket size(1) Largest target is 32
;!		 -> buffer_tx(BANK1[32]), 
;!
;!    S46$udpHeader	PTR struct UDPPacket size(1) Largest target is 0
;!
;!    main@packet.udpHeader	PTR struct UDPPacket size(1) Largest target is 0
;!
;!    main@packet	PTR struct . size(1) Largest target is 32
;!		 -> buffer_tx(BANK1[32]), 
;!


;!
;!Critical Paths under _main in COMMON
;!
;!    _wait_init->_timerInit
;!    _internet_relay->_RF24_openReadingPipe
;!    _internet_relay->_RF24_write
;!    __$_logline_str->_Serial_write
;!    _RF24_write->_RF24_flush_tx
;!    _RF24_get_status->_SPI_exchangeByte
;!    _RF24_flush_tx->_RF24_write_register
;!    _RF24_stopListening->_RF24_write_register
;!    _RF24_startListening->_RF24_write_register
;!    _RF24_openWritingPipe->_RF24_write_n_register
;!    _RF24_openReadingPipe->_RF24_write_register
;!    _RF24_write_register->_RF24_read_register
;!    _RF24_write_n_register->_SPI_exchangeByte
;!    _RF24_read_register->_SPI_exchangeByte
;!
;!Critical Paths under _ISR in COMMON
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_transport_udp_tx
;!    _transport_udp_tx->_internet_tx
;!    _internet_tx->_internet_relay
;!    _internet_relay->_RF24_openReadingPipe
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
;;Main: autosize = 0, tempsize = 3, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                12    12      0   21768
;!                                             19 BANK0      4     4      0
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
;! (1) _transport_udp_tx                                     7     3      4   21493
;!                                             12 BANK0      7     3      4
;!                        _internet_tx
;! ---------------------------------------------------------------------------------
;! (2) _internet_tx                                          4     3      1   20734
;!                                              8 BANK0      4     3      1
;!                     _internet_relay
;! ---------------------------------------------------------------------------------
;! (3) _internet_relay                                       6     5      1   20400
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
;! (4) __$_logline_str                                       4     2      2    1376
;!                                              3 COMMON     4     2      2
;!                       _Serial_write
;! ---------------------------------------------------------------------------------
;! (5) _Serial_write                                         1     1      0      22
;!                                              2 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (4) _RF24_write                                           3     2      1    6769
;!                                             10 COMMON     1     1      0
;!                                              0 BANK0      2     1      1
;!                      _RF24_flush_tx
;!                    _RF24_get_status
;!                _RF24_write_register
;!                   _SPI_exchangeByte
;! ---------------------------------------------------------------------------------
;! (5) _RF24_get_status                                      1     1      0      31
;!                                              3 COMMON     1     1      0
;!                   _SPI_exchangeByte
;! ---------------------------------------------------------------------------------
;! (5) _RF24_flush_tx                                        1     1      0    3057
;!                                              9 COMMON     1     1      0
;!                _RF24_write_register
;! ---------------------------------------------------------------------------------
;! (4) _RF24_stopListening                                   1     1      0    3153
;!                                              9 COMMON     1     1      0
;!                 _RF24_read_register
;!                _RF24_write_register
;! ---------------------------------------------------------------------------------
;! (4) _RF24_startListening                                  1     1      0    3153
;!                                              9 COMMON     1     1      0
;!                 _RF24_read_register
;!                _RF24_write_register
;! ---------------------------------------------------------------------------------
;! (4) _RF24_openWritingPipe                                 2     2      0     629
;!                                              8 COMMON     2     2      0
;!              _RF24_write_n_register
;! ---------------------------------------------------------------------------------
;! (4) _RF24_openReadingPipe                                 5     3      2    4509
;!                                              9 COMMON     2     0      2
;!                                              0 BANK0      3     3      0
;!                 _RF24_read_register
;!              _RF24_write_n_register
;!                _RF24_write_register
;! ---------------------------------------------------------------------------------
;! (5) _RF24_write_register                                  3     2      1    3057
;!                                              6 COMMON     3     2      1
;!                 _RF24_read_register (ARG)
;!                   _SPI_exchangeByte
;! ---------------------------------------------------------------------------------
;! (5) _RF24_write_n_register                                5     2      3     490
;!                                              3 COMMON     5     2      3
;!                   _SPI_exchangeByte
;! ---------------------------------------------------------------------------------
;! (5) _RF24_read_register                                   3     3      0      96
;!                                              3 COMMON     3     3      0
;!                   _SPI_exchangeByte
;! ---------------------------------------------------------------------------------
;! (5) _SPI_exchangeByte                                     1     1      0      31
;!                                              2 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 5
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
;!   _transport_udp_tx
;!     _internet_tx
;!       _internet_relay
;!         _RF24_openReadingPipe
;!           _RF24_read_register
;!             _SPI_exchangeByte
;!           _RF24_write_n_register
;!             _SPI_exchangeByte
;!           _RF24_write_register
;!             _RF24_read_register (ARG)
;!             _SPI_exchangeByte (ARG)
;!         _RF24_openWritingPipe
;!           _RF24_write_n_register
;!         _RF24_startListening
;!           _RF24_read_register
;!           _RF24_write_register
;!         _RF24_stopListening
;!           _RF24_read_register
;!           _RF24_write_register
;!         _RF24_write
;!           _RF24_flush_tx
;!             _RF24_write_register
;!           _RF24_get_status
;!             _SPI_exchangeByte
;!           _RF24_write_register
;!           _SPI_exchangeByte
;!         _Serial_write
;!         __$_logline_str
;!           _Serial_write
;!         _internet_calculateMask
;!         _internet_hasChild
;!   _wait_init
;!     _timerInit
;!
;! _ISR (ROOT)
;!   _timeISR
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            E      0       0       0        0.0%
;!EEDATA             100      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      B       C       1       85.7%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!STACK                0      0       0       2        0.0%
;!ABS                  0      0      74       3        0.0%
;!BITBANK0            50      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BANK0               50     17      28       5       50.0%
;!BITSFR2              0      0       0       5        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITBANK1            50      0       0       6        0.0%
;!BANK1               50      0      40       7       80.0%
;!BITBANK3            60      0       0       8        0.0%
;!BANK3               60      0       0       9        0.0%
;!BITBANK2            60      0       0      10        0.0%
;!BANK2               60      0       0      11        0.0%
;!DATA                 0      0      74      12        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 40 in file "F:/GitHub/Graduation-Project/Moduls/Door/app/src/main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  packet          1   22[BANK0 ] PTR struct .
;;		 -> buffer_tx(32), 
;;  stopTime        4    0        unsigned long 
;;  startTime       4    0        unsigned long 
;; Return value:  Size  Location     Type
;;                  2   30[None  ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0       4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels required when called: 9
;; This function calls:
;;		_transport_udp_tx
;;		_wait_init
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"F:/GitHub/Graduation-Project/Moduls/Door/app/src/main.c"
	line	40
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"F:/GitHub/Graduation-Project/Moduls/Door/app/src/main.c"
	line	40
	
_main:	
;incstack = 0
;; hardware stack exceeded
	callstack 0
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	42
	
l1902:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1089/8)^080h,(1089)&7	;volatile
	line	43
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(65/8),(65)&7	;volatile
	line	44
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1088/8)^080h,(1088)&7	;volatile
	line	45
	
l1904:	
	movlw	low(010h)
	fcall	_wait_init
	line	46
	
l1906:	
	line	50
	
l1908:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(64/8),(64)&7	;volatile
	goto	u751
	goto	u750
u751:
	goto	l1924
u750:
	line	52
	
l1910:	
	clrf	(_prop)
	incf	(_prop),f
	line	53
	btfsc	(_prop),0
	goto	u761
	goto	u760
	
u761:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(65/8),(65)&7	;volatile
	goto	u774
u760:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(65/8),(65)&7	;volatile
u774:
	line	54
	
l1912:	
	movlw	(low(_buffer_tx|((0x0)<<8)))&0ffh
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@packet)
	line	55
	
l1914:	
	movf	(main@packet),w
	addlw	03h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	line	56
	
l1916:	
	movf	(_prop),w
	movwf	(??_main+0)+0
	movf	(main@packet),w
	addlw	04h
	movwf	fsr0
	movf	(??_main+0)+0,w
	movwf	indf
	line	57
	
l1918:	
	movf	(main@packet),w
	addlw	02h
	movwf	fsr0
	clrf	indf
	incf	indf,f
	line	58
	
l1920:	
	movlw	low(03h)
	movwf	(??_main+0)+0
	incf	(main@packet),w
	movwf	fsr0
	movf	(??_main+0)+0,w
	movwf	indf
	line	59
	
l1922:	
	movlw	low(020h)
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
	movf	(main@packet),w
	fcall	_transport_udp_tx
	line	60
	goto	l1926
	line	62
	
l1924:	
	clrf	(_prop)
	line	63
	
l1926:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(_prop),0
	goto	u781
	goto	u780
	
u781:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(65/8),(65)&7	;volatile
	goto	u794
u780:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(65/8),(65)&7	;volatile
u794:
	goto	l1908
	global	start
	ljmp	start
	callstack 0
	line	67
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,90
	global	_wait_init

;; *************** function _wait_init *****************
;; Defined at:
;;		line 3 in file "F:/GitHub/Graduation-Project/Moduls/Door/libs/wait.c"
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
	file	"F:/GitHub/Graduation-Project/Moduls/Door/libs/wait.c"
	line	3
global __ptext1
__ptext1:	;psect for function _wait_init
psect	text1
	file	"F:/GitHub/Graduation-Project/Moduls/Door/libs/wait.c"
	line	3
	
_wait_init:	
;incstack = 0
	callstack 4
; Regs used in _wait_init: [wreg+status,2+status,0+pclath+cstack]
	movwf	(wait_init@megaHertez)
	line	5
	
l1638:	
	movf	(wait_init@megaHertez),w
	fcall	_timerInit
	line	6
	
l560:	
	return
	callstack 0
GLOBAL	__end_of_wait_init
	__end_of_wait_init:
	signat	_wait_init,4217
	global	_timerInit

;; *************** function _timerInit *****************
;; Defined at:
;;		line 3 in file "F:/GitHub/Graduation-Project/Moduls/Door/libs/time.c"
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
	file	"F:/GitHub/Graduation-Project/Moduls/Door/libs/time.c"
	line	3
global __ptext2
__ptext2:	;psect for function _timerInit
psect	text2
	file	"F:/GitHub/Graduation-Project/Moduls/Door/libs/time.c"
	line	3
	
_timerInit:	
;incstack = 0
	callstack 4
; Regs used in _timerInit: [wreg+status,2+status,0]
	movwf	(timerInit@mhz)
	line	5
	
l1610:	
	clrc
	rrf	(timerInit@mhz),f
	clrc
	rrf	(timerInit@mhz),f

	line	6
	
l1612:	
	clrf	(timerInit@prescaler)
	line	7
	goto	l1618
	line	9
	
l1614:	
	movlw	low(01h)
	movwf	(??_timerInit+0)+0
	movf	(??_timerInit+0)+0,w
	addwf	(timerInit@prescaler),f
	line	10
	
l1616:	
	clrc
	rrf	(timerInit@mhz),f

	line	7
	
l1618:	
	movf	((timerInit@mhz)),w
	btfsc	status,2
	goto	u481
	goto	u480
u481:
	goto	l152
u480:
	
l1620:	
	btfss	(timerInit@mhz),(0)&7
	goto	u491
	goto	u490
u491:
	goto	l1614
u490:
	
l152:	
	line	16
	bsf	(94/8),(94)&7	;volatile
	line	17
	bsf	(95/8),(95)&7	;volatile
	line	18
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1120/8)^080h,(1120)&7	;volatile
	line	19
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(129/8),(129)&7	;volatile
	line	20
	bsf	(131/8),(131)&7	;volatile
	line	21
	
l1622:	
	movf	(timerInit@prescaler),w
	movwf	(??_timerInit+0)+0
	movlw	01h
u505:
	clrc
	rrf	(??_timerInit+0)+0,f
	addlw	-1
	skipz
	goto	u505
	btfsc	0+(??_timerInit+0)+0,0
	goto	u511
	goto	u510
	
u511:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(133/8),(133)&7	;volatile
	goto	u524
u510:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(133/8),(133)&7	;volatile
u524:
	line	22
	
l1624:	
	btfsc	(timerInit@prescaler),0
	goto	u531
	goto	u530
	
u531:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(132/8),(132)&7	;volatile
	goto	u544
u530:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(132/8),(132)&7	;volatile
u544:
	line	23
	
l1626:	
	bsf	(128/8),(128)&7	;volatile
	line	24
	
l1628:	
	clrf	(14)	;volatile
	clrf	(14+1)	;volatile
	line	28
	
l153:	
	return
	callstack 0
GLOBAL	__end_of_timerInit
	__end_of_timerInit:
	signat	_timerInit,4217
	global	_transport_udp_tx

;; *************** function _transport_udp_tx *****************
;; Defined at:
;;		line 3 in file "F:/GitHub/Graduation-Project/Moduls/Door/libs/transport.c"
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
	file	"F:/GitHub/Graduation-Project/Moduls/Door/libs/transport.c"
	line	3
global __ptext3
__ptext3:	;psect for function _transport_udp_tx
psect	text3
	file	"F:/GitHub/Graduation-Project/Moduls/Door/libs/transport.c"
	line	3
	
_transport_udp_tx:	
;incstack = 0
;; hardware stack exceeded
	callstack 0
; Regs used in _transport_udp_tx: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(transport_udp_tx@payload)
	line	5
	
l1876:	
	movf	(transport_udp_tx@payload),w
	movwf	(??_transport_udp_tx+0)+0
	movf	(??_transport_udp_tx+0)+0,w
	movwf	(transport_udp_tx@packetHeader)
	line	6
	
l1878:	
	incf	(transport_udp_tx@packetHeader),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	incf	indf,f
	line	7
	
l1880:	
	movf	(transport_udp_tx@destination),w
	movwf	(??_transport_udp_tx+0)+0
	movf	(transport_udp_tx@packetHeader),w
	addlw	03h
	movwf	fsr0
	movf	(??_transport_udp_tx+0)+0,w
	movwf	indf
	line	8
	
l1882:	
	movf	(transport_udp_tx@packetHeader),w
	addlw	04h
	movwf	fsr0
	movf	indf,w
	xorwf	(transport_udp_tx@sourcePort),w
	andlw	not ((1<<4)-1)
	xorwf	(transport_udp_tx@sourcePort),w
	movwf	indf
	line	9
	
l1884:	
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
	
l1886:	
	movf	(transport_udp_tx@size),w
	movwf	(??_transport_udp_tx+0)+0
	movf	(??_transport_udp_tx+0)+0,w
	movwf	(internet_tx@size)
	movf	(transport_udp_tx@payload),w
	fcall	_internet_tx
	line	11
	
l175:	
	return
	callstack 0
GLOBAL	__end_of_transport_udp_tx
	__end_of_transport_udp_tx:
	signat	_transport_udp_tx,20601
	global	_internet_tx

;; *************** function _internet_tx *****************
;; Defined at:
;;		line 29 in file "F:/GitHub/Graduation-Project/Moduls/Door/libs/internet.c"
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
	file	"F:/GitHub/Graduation-Project/Moduls/Door/libs/internet.c"
	line	29
global __ptext4
__ptext4:	;psect for function _internet_tx
psect	text4
	file	"F:/GitHub/Graduation-Project/Moduls/Door/libs/internet.c"
	line	29
	
_internet_tx:	
;incstack = 0
;; hardware stack exceeded
	callstack 0
; Regs used in _internet_tx: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(internet_tx@payload)
	line	32
	
l1868:	
	movf	(internet_tx@payload),w
	movwf	(??_internet_tx+0)+0
	movf	(??_internet_tx+0)+0,w
	movwf	(internet_tx@packetHeader)
	line	33
	
l1870:	
	movlw	low(020h)
	movwf	(??_internet_tx+0)+0
	movf	(internet_tx@packetHeader),w
	movwf	fsr0
	movf	(??_internet_tx+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	34
	
l1872:	
	movf	(_node),w
	movwf	(??_internet_tx+0)+0
	movf	(internet_tx@packetHeader),w
	addlw	02h
	movwf	fsr0
	movf	(??_internet_tx+0)+0,w
	movwf	indf
	line	35
	
l1874:	
	movf	(internet_tx@size),w
	movwf	(??_internet_tx+0)+0
	movf	(??_internet_tx+0)+0,w
	movwf	(internet_relay@size)
	movf	(internet_tx@payload),w
	fcall	_internet_relay
	line	36
	
l263:	
	return
	callstack 0
GLOBAL	__end_of_internet_tx
	__end_of_internet_tx:
	signat	_internet_tx,8313
	global	_internet_relay

;; *************** function _internet_relay *****************
;; Defined at:
;;		line 61 in file "F:/GitHub/Graduation-Project/Moduls/Door/libs/internet.c"
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
psect	text5,local,class=CODE,delta=2,merge=1,group=1
	line	61
global __ptext5
__ptext5:	;psect for function _internet_relay
psect	text5
	file	"F:/GitHub/Graduation-Project/Moduls/Door/libs/internet.c"
	line	61
	
_internet_relay:	
;incstack = 0
;; hardware stack exceeded
	callstack 0
; Regs used in _internet_relay: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(internet_relay@payload)
	line	64
	
l1810:	
	movf	(internet_relay@payload),w
	movwf	(??_internet_relay+0)+0
	movf	(??_internet_relay+0)+0,w
	movwf	(internet_relay@packetHeader)
	line	65
	
l1812:	
	movf	((_node)),w
	btfss	status,2
	goto	u701
	goto	u700
u701:
	goto	l1816
u700:
	goto	l277
	line	72
	
l1816:	
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
	
l1818:	
	movf	(internet_relay@dstMask),w
	subwf	0+(_node)+01h,w
	skipnc
	goto	u711
	goto	u710
u711:
	goto	l1848
u710:
	
l1820:	
	movf	(internet_relay@packetHeader),w
	addlw	03h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	_internet_hasChild
	xorlw	0
	skipnz
	goto	u721
	goto	u720
u721:
	goto	l1848
u720:
	line	76
	
l1822:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(internet_relay@packetHeader),w
	addlw	03h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	andwf	0+(_node)+02h,w
	btfsc	status,2
	goto	u731
	goto	u730
u731:
	goto	l1836
u730:
	line	79
	
l1824:	
	movf	0+(_node)+04h,w
	movwf	(??_internet_relay+0)+0
	movf	(??_internet_relay+0)+0,w
	movwf	(_networkInfo)
	line	80
	
l1826:	
	movlw	(low(_networkInfo|((0x0)<<8))&0ffh)
	movwf	(RF24_openReadingPipe@address)
	movlw	(0x0)
	movwf	(RF24_openReadingPipe@address+1)
	movlw	low(0)
	fcall	_RF24_openReadingPipe
	line	81
	
l1828:	
	movlw	(low(_networkInfo|((0x0)<<8)))&0ffh
	fcall	_RF24_openWritingPipe
	line	82
	
l1830:	
	fcall	_RF24_stopListening
	line	83
	
l1832:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(internet_relay@size),w
	movwf	(??_internet_relay+0)+0
	movf	(??_internet_relay+0)+0,w
	movwf	(RF24_write@len)
	movf	(internet_relay@payload),w
	fcall	_RF24_write
	line	84
	
l1834:	
	movlw	(low((((_BASE_PIPE)-__stringbase)|8000h)))&0ffh
	movwf	(RF24_openReadingPipe@address)
	movlw	80h
	movwf	(RF24_openReadingPipe@address+1)
	movlw	low(0)
	fcall	_RF24_openReadingPipe
	line	85
	goto	l1866
	line	89
	
l1836:	
	movf	0+(_node)+03h,w
	movwf	(??_internet_relay+0)+0
	movf	(??_internet_relay+0)+0,w
	movwf	(_networkInfo)
	line	90
	
l1838:	
	movlw	(low(_networkInfo|((0x0)<<8))&0ffh)
	movwf	(RF24_openReadingPipe@address)
	movlw	(0x0)
	movwf	(RF24_openReadingPipe@address+1)
	movlw	low(0)
	fcall	_RF24_openReadingPipe
	line	91
	
l1840:	
	movlw	(low(_networkInfo|((0x0)<<8)))&0ffh
	fcall	_RF24_openWritingPipe
	line	92
	
l1842:	
	fcall	_RF24_stopListening
	line	93
	
l1844:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(internet_relay@size),w
	movwf	(??_internet_relay+0)+0
	movf	(??_internet_relay+0)+0,w
	movwf	(RF24_write@len)
	movf	(internet_relay@payload),w
	fcall	_RF24_write
	line	94
	
l1846:	
	movlw	(low((((_BASE_PIPE)-__stringbase)|8000h)))&0ffh
	movwf	(RF24_openReadingPipe@address)
	movlw	80h
	movwf	(RF24_openReadingPipe@address+1)
	movlw	low(0)
	fcall	_RF24_openReadingPipe
	goto	l1866
	line	100
	
l1848:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_node),w
	movwf	(??_internet_relay+0)+0
	movf	(??_internet_relay+0)+0,w
	movwf	(_networkInfo)
	line	101
	
l1850:	
	movlw	(low(_networkInfo|((0x0)<<8))&0ffh)
	movwf	(RF24_openReadingPipe@address)
	movlw	(0x0)
	movwf	(RF24_openReadingPipe@address+1)
	movlw	low(0)
	fcall	_RF24_openReadingPipe
	line	102
	
l1852:	
	movlw	(low(_networkInfo|((0x0)<<8)))&0ffh
	fcall	_RF24_openWritingPipe
	line	103
	
l1854:	
	fcall	_RF24_stopListening
	line	104
	
l1856:	
	movlw	(low((((STR_1)-__stringbase)|8000h)))&0ffh
	movwf	(__$_logline_str@string)
	movlw	80h
	movwf	(__$_logline_str@string+1)
	fcall	__$_logline_str
	line	105
	
l1858:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(internet_relay@payload),w
	movwf	(__$_logline_str@string)
	movlw	(0x0)
	movwf	(__$_logline_str@string+1)
	fcall	__$_logline_str
	
l1860:	
	movlw	low(0Ah)
	fcall	_Serial_write
	line	106
	
l1862:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(internet_relay@size),w
	movwf	(??_internet_relay+0)+0
	movf	(??_internet_relay+0)+0,w
	movwf	(RF24_write@len)
	movf	(internet_relay@payload),w
	fcall	_RF24_write
	line	108
	
l1864:	
	movlw	(low((((_BASE_PIPE)-__stringbase)|8000h)))&0ffh
	movwf	(RF24_openReadingPipe@address)
	movlw	80h
	movwf	(RF24_openReadingPipe@address+1)
	movlw	low(0)
	fcall	_RF24_openReadingPipe
	line	110
	
l1866:	
	fcall	_RF24_startListening
	line	111
	
l277:	
	return
	callstack 0
GLOBAL	__end_of_internet_relay
	__end_of_internet_relay:
	signat	_internet_relay,8313
	global	_internet_hasChild

;; *************** function _internet_hasChild *****************
;; Defined at:
;;		line 133 in file "F:/GitHub/Graduation-Project/Moduls/Door/libs/internet.c"
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
psect	text6,local,class=CODE,delta=2,merge=1,group=1
	line	133
global __ptext6
__ptext6:	;psect for function _internet_hasChild
psect	text6
	file	"F:/GitHub/Graduation-Project/Moduls/Door/libs/internet.c"
	line	133
	
_internet_hasChild:	
;incstack = 0
	callstack 2
; Regs used in _internet_hasChild: [wreg+status,2+status,0]
	movwf	(internet_hasChild@address)
	line	135
	
l1506:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_node),w
	andwf	0+(_node)+01h,w
	movwf	(??_internet_hasChild+0)+0
	movf	0+(_node)+01h,w
	andwf	(internet_hasChild@address),w
	xorwf	0+(??_internet_hasChild+0)+0,w
	skipnz
	goto	u371
	goto	u370
u371:
	movlw	1
	goto	u380
u370:
	movlw	0
u380:
	line	136
	
l293:	
	return
	callstack 0
GLOBAL	__end_of_internet_hasChild
	__end_of_internet_hasChild:
	signat	_internet_hasChild,4217
	global	_internet_calculateMask

;; *************** function _internet_calculateMask *****************
;; Defined at:
;;		line 112 in file "F:/GitHub/Graduation-Project/Moduls/Door/libs/internet.c"
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
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1,group=1
	line	112
global __ptext7
__ptext7:	;psect for function _internet_calculateMask
psect	text7
	file	"F:/GitHub/Graduation-Project/Moduls/Door/libs/internet.c"
	line	112
	
_internet_calculateMask:	
;incstack = 0
	callstack 2
; Regs used in _internet_calculateMask: [wreg+status,2+status,0]
	movwf	(internet_calculateMask@address)
	line	114
	
l1494:	
	clrf	(internet_calculateMask@mask)
	line	115
	goto	l1500
	line	117
	
l1496:	
	setc
	rlf	(internet_calculateMask@mask),f
	line	118
	
l1498:	
	clrc
	rrf	(internet_calculateMask@address),f

	line	115
	
l1500:	
	movlw	low(02h)
	subwf	(internet_calculateMask@address),w
	skipnc
	goto	u361
	goto	u360
u361:
	goto	l1496
u360:
	line	120
	
l1502:	
	movf	(internet_calculateMask@mask),w
	line	121
	
l287:	
	return
	callstack 0
GLOBAL	__end_of_internet_calculateMask
	__end_of_internet_calculateMask:
	signat	_internet_calculateMask,4217
	global	__$_logline_str

;; *************** function __$_logline_str *****************
;; Defined at:
;;		line 5 in file "F:/GitHub/Graduation-Project/Moduls/Door/libs/logline.c"
;; Parameters:    Size  Location     Type
;;  string          2    3[COMMON] PTR unsigned char 
;;		 -> STR_19(23), STR_18(3), STR_17(6), STR_16(6), 
;;		 -> STR_15(6), STR_14(6), STR_13(6), STR_12(6), 
;;		 -> STR_11(11), STR_10(7), STR_9(9), STR_8(6), 
;;		 -> STR_7(11), STR_6(9), STR_5(10), STR_4(6), 
;;		 -> STR_3(7), STR_2(23), STR_1(10), buffer_rx(32), 
;;		 -> buffer_tx(32), 
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
;;		_internet_relay
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1,group=1
	file	"F:/GitHub/Graduation-Project/Moduls/Door/libs/logline.c"
	line	5
global __ptext8
__ptext8:	;psect for function __$_logline_str
psect	text8
	file	"F:/GitHub/Graduation-Project/Moduls/Door/libs/logline.c"
	line	5
	
__$_logline_str:	
;incstack = 0
	callstack 1
; Regs used in __$_logline_str: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	7
	
l1538:	
	movlw	low(064h)
	movwf	(??__$_logline_str+0)+0
	movf	(??__$_logline_str+0)+0,w
	movwf	(__$_logline_str@limit)
	line	8
	goto	l1544
	line	10
	
l1540:	
	movf	(__$_logline_str@string+1),w
	movwf	btemp+1
	movf	(__$_logline_str@string),w
	movwf	fsr0
	fcall	stringtab
	fcall	_Serial_write
	line	11
	
l1542:	
	movlw	01h
	addwf	(__$_logline_str@string),f
	skipnc
	incf	(__$_logline_str@string+1),f
	movlw	0
	addwf	(__$_logline_str@string+1),f
	line	8
	
l1544:	
	movf	(__$_logline_str@string+1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	btemp+1
	movf	(__$_logline_str@string),w
	movwf	fsr0
	fcall	stringtab
	xorlw	0
	skipnz
	goto	u421
	goto	u420
u421:
	goto	l632
u420:
	
l1546:	
	movlw	01h
	subwf	(__$_logline_str@limit),f
		incf	(((__$_logline_str@limit))),w
	btfss	status,2
	goto	u431
	goto	u430
u431:
	goto	l1540
u430:
	line	13
	
l632:	
	return
	callstack 0
GLOBAL	__end_of__$_logline_str
	__end_of__$_logline_str:
	signat	__$_logline_str,4217
	global	_Serial_write

;; *************** function _Serial_write *****************
;; Defined at:
;;		line 36 in file "F:/GitHub/Graduation-Project/Moduls/Door/libs/Serial.c"
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
;;		_internet_relay
;;		__$_logline_str
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1,group=1
	file	"F:/GitHub/Graduation-Project/Moduls/Door/libs/Serial.c"
	line	36
global __ptext9
__ptext9:	;psect for function _Serial_write
psect	text9
	file	"F:/GitHub/Graduation-Project/Moduls/Door/libs/Serial.c"
	line	36
	
_Serial_write:	
;incstack = 0
	callstack 1
; Regs used in _Serial_write: [wreg]
	movwf	(Serial_write@data)
	line	38
	
l1448:	
	line	39
	
l613:	
	line	38
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(1217/8)^080h,(1217)&7	;volatile
	goto	u321
	goto	u320
u321:
	goto	l613
u320:
	line	40
	
l1450:	
	movf	(Serial_write@data),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(25)	;volatile
	line	41
	
l616:	
	return
	callstack 0
GLOBAL	__end_of_Serial_write
	__end_of_Serial_write:
	signat	_Serial_write,4217
	global	_RF24_write

;; *************** function _RF24_write *****************
;; Defined at:
;;		line 198 in file "F:/GitHub/Graduation-Project/Moduls/Door/libs/rf24.c"
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
psect	text10,local,class=CODE,delta=2,merge=1,group=1
	file	"F:/GitHub/Graduation-Project/Moduls/Door/libs/rf24.c"
	line	198
global __ptext10
__ptext10:	;psect for function _RF24_write
psect	text10
	file	"F:/GitHub/Graduation-Project/Moduls/Door/libs/rf24.c"
	line	198
	
_RF24_write:	
;incstack = 0
;; hardware stack exceeded
	callstack 0
; Regs used in _RF24_write: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(RF24_write@buf)
	line	202
	
l1786:	
	bcf	(67/8),(67)&7	;volatile
	line	203
	
l1788:	
	movlw	low(0A0h)
	fcall	_SPI_exchangeByte
	movwf	(??_RF24_write+0)+0
	movf	(??_RF24_write+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_RF24_attr_status)
	line	204
	goto	l1794
	line	206
	
l1790:	
	movf	(RF24_write@buf),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	_SPI_exchangeByte
	
l1792:	
	movlw	low(01h)
	movwf	(??_RF24_write+0)+0
	movf	(??_RF24_write+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(RF24_write@buf),f
	line	204
	
l1794:	
	movlw	01h
	subwf	(RF24_write@len),f
		incf	(((RF24_write@len))),w
	btfss	status,2
	goto	u671
	goto	u670
u671:
	goto	l1790
u670:
	
l415:	
	line	208
	bsf	(67/8),(67)&7	;volatile
	line	210
	bsf	(66/8),(66)&7	;volatile
	line	211
	
l1796:	
	fcall	_RF24_get_status
	andlw	030h
	btfsc	status,2
	goto	u681
	goto	u680
u681:
	goto	l1796
u680:
	
l418:	
	line	216
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(66/8),(66)&7	;volatile
	line	217
	
l1798:	
	movlw	low(070h)
	movwf	(??_RF24_write+0)+0
	movf	(??_RF24_write+0)+0,w
	movwf	(RF24_write_register@value)
	movlw	low(07h)
	fcall	_RF24_write_register
	line	220
	
l1800:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(_RF24_attr_status),(4)&7
	goto	u691
	goto	u690
u691:
	goto	l420
u690:
	line	222
	
l1802:	
	fcall	_RF24_flush_tx
	line	226
	
l420:	
	return
	callstack 0
GLOBAL	__end_of_RF24_write
	__end_of_RF24_write:
	signat	_RF24_write,8313
	global	_RF24_get_status

;; *************** function _RF24_get_status *****************
;; Defined at:
;;		line 51 in file "F:/GitHub/Graduation-Project/Moduls/Door/libs/rf24.c"
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
;; This function uses a non-reentrant model
;;
psect	text11,local,class=CODE,delta=2,merge=1,group=1
	line	51
global __ptext11
__ptext11:	;psect for function _RF24_get_status
psect	text11
	file	"F:/GitHub/Graduation-Project/Moduls/Door/libs/rf24.c"
	line	51
	
_RF24_get_status:	
;incstack = 0
	callstack 0
; Regs used in _RF24_get_status: [wreg+pclath+cstack]
	line	53
	
l1758:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7	;volatile
	line	54
	
l1760:	
	movlw	low(0FFh)
	fcall	_SPI_exchangeByte
	movwf	(??_RF24_get_status+0)+0
	movf	(??_RF24_get_status+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_RF24_attr_status)
	line	55
	
l1762:	
	bsf	(67/8),(67)&7	;volatile
	line	56
	
l1764:	
	movf	(_RF24_attr_status),w
	line	57
	
l378:	
	return
	callstack 0
GLOBAL	__end_of_RF24_get_status
	__end_of_RF24_get_status:
	signat	_RF24_get_status,89
	global	_RF24_flush_tx

;; *************** function _RF24_flush_tx *****************
;; Defined at:
;;		line 437 in file "F:/GitHub/Graduation-Project/Moduls/Door/libs/rf24.c"
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
;;		_RF24_write
;; This function uses a non-reentrant model
;;
psect	text12,local,class=CODE,delta=2,merge=1,group=1
	line	437
global __ptext12
__ptext12:	;psect for function _RF24_flush_tx
psect	text12
	file	"F:/GitHub/Graduation-Project/Moduls/Door/libs/rf24.c"
	line	437
	
_RF24_flush_tx:	
;incstack = 0
;; hardware stack exceeded
	callstack 0
; Regs used in _RF24_flush_tx: [wreg+status,2+status,0+pclath+cstack]
	line	439
	
l1768:	
	movlw	low(0FFh)
	movwf	(??_RF24_flush_tx+0)+0
	movf	(??_RF24_flush_tx+0)+0,w
	movwf	(RF24_write_register@value)
	movlw	low(0E1h)
	fcall	_RF24_write_register
	line	440
	
l494:	
	return
	callstack 0
GLOBAL	__end_of_RF24_flush_tx
	__end_of_RF24_flush_tx:
	signat	_RF24_flush_tx,89
	global	_RF24_stopListening

;; *************** function _RF24_stopListening *****************
;; Defined at:
;;		line 156 in file "F:/GitHub/Graduation-Project/Moduls/Door/libs/rf24.c"
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
psect	text13,local,class=CODE,delta=2,merge=1,group=1
	line	156
global __ptext13
__ptext13:	;psect for function _RF24_stopListening
psect	text13
	file	"F:/GitHub/Graduation-Project/Moduls/Door/libs/rf24.c"
	line	156
	
_RF24_stopListening:	
;incstack = 0
	callstack 0
; Regs used in _RF24_stopListening: [wreg+status,2+status,0+pclath+cstack]
	line	158
	
l1780:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(66/8),(66)&7	;volatile
	line	165
	
l1782:	
	movlw	low(0)
	fcall	_RF24_read_register
	andlw	0FEh
	movwf	(??_RF24_stopListening+0)+0
	movf	(??_RF24_stopListening+0)+0,w
	movwf	(RF24_write_register@value)
	movlw	low(0)
	fcall	_RF24_write_register
	line	166
	movlw	low(02h)
	fcall	_RF24_read_register
	iorlw	01h
	movwf	(??_RF24_stopListening+0)+0
	movf	(??_RF24_stopListening+0)+0,w
	movwf	(RF24_write_register@value)
	movlw	low(02h)
	fcall	_RF24_write_register
	line	167
	
l1784:	
	asmopt push
asmopt off
	movlw	173
movwf	((??_RF24_stopListening+0)+0)
	u817:
decfsz	(??_RF24_stopListening+0)+0,f
	goto	u817
asmopt pop

	line	168
	
l398:	
	return
	callstack 0
GLOBAL	__end_of_RF24_stopListening
	__end_of_RF24_stopListening:
	signat	_RF24_stopListening,89
	global	_RF24_startListening

;; *************** function _RF24_startListening *****************
;; Defined at:
;;		line 139 in file "F:/GitHub/Graduation-Project/Moduls/Door/libs/rf24.c"
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
psect	text14,local,class=CODE,delta=2,merge=1,group=1
	line	139
global __ptext14
__ptext14:	;psect for function _RF24_startListening
psect	text14
	file	"F:/GitHub/Graduation-Project/Moduls/Door/libs/rf24.c"
	line	139
	
_RF24_startListening:	
;incstack = 0
	callstack 0
; Regs used in _RF24_startListening: [wreg+status,2+status,0+pclath+cstack]
	line	141
	
l1806:	
	movlw	low(0)
	fcall	_RF24_read_register
	iorlw	01h
	movwf	(??_RF24_startListening+0)+0
	movf	(??_RF24_startListening+0)+0,w
	movwf	(RF24_write_register@value)
	movlw	low(0)
	fcall	_RF24_write_register
	line	142
	movlw	low(070h)
	movwf	(??_RF24_startListening+0)+0
	movf	(??_RF24_startListening+0)+0,w
	movwf	(RF24_write_register@value)
	movlw	low(07h)
	fcall	_RF24_write_register
	line	143
	
l1808:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(66/8),(66)&7	;volatile
	line	154
	
l395:	
	return
	callstack 0
GLOBAL	__end_of_RF24_startListening
	__end_of_RF24_startListening:
	signat	_RF24_startListening,89
	global	_RF24_openWritingPipe

;; *************** function _RF24_openWritingPipe *****************
;; Defined at:
;;		line 457 in file "F:/GitHub/Graduation-Project/Moduls/Door/libs/rf24.c"
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
psect	text15,local,class=CODE,delta=2,merge=1,group=1
	line	457
global __ptext15
__ptext15:	;psect for function _RF24_openWritingPipe
psect	text15
	file	"F:/GitHub/Graduation-Project/Moduls/Door/libs/rf24.c"
	line	457
	
_RF24_openWritingPipe:	
;incstack = 0
	callstack 0
; Regs used in _RF24_openWritingPipe: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	movwf	(RF24_openWritingPipe@address)
	line	459
	
l1778:	
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
	line	460
	
l509:	
	return
	callstack 0
GLOBAL	__end_of_RF24_openWritingPipe
	__end_of_RF24_openWritingPipe:
	signat	_RF24_openWritingPipe,4217
	global	_RF24_openReadingPipe

;; *************** function _RF24_openReadingPipe *****************
;; Defined at:
;;		line 312 in file "F:/GitHub/Graduation-Project/Moduls/Door/libs/rf24.c"
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
;;		_internet_relay
;; This function uses a non-reentrant model
;;
psect	text16,local,class=CODE,delta=2,merge=1,group=1
	line	312
global __ptext16
__ptext16:	;psect for function _RF24_openReadingPipe
psect	text16
	file	"F:/GitHub/Graduation-Project/Moduls/Door/libs/rf24.c"
	line	312
	
_RF24_openReadingPipe:	
;incstack = 0
;; using string table level
	callstack 1
; Regs used in _RF24_openReadingPipe: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(RF24_openReadingPipe@child)
	line	314
	
l1770:	
	movlw	low(02h)
	subwf	(RF24_openReadingPipe@child),w
	skipnc
	goto	u651
	goto	u650
u651:
	goto	l1774
u650:
	line	316
	
l1772:	
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
	line	317
	goto	l1776
	line	320
	
l1774:	
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
	line	322
	
l1776:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_RF24_openReadingPipe+0)+0
	incf	(RF24_openReadingPipe@child),w
	goto	u664
u665:
	clrc
	rlf	(??_RF24_openReadingPipe+0)+0,f
u664:
	addlw	-1
	skipz
	goto	u665
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
	line	323
	
l449:	
	return
	callstack 0
GLOBAL	__end_of_RF24_openReadingPipe
	__end_of_RF24_openReadingPipe:
	signat	_RF24_openReadingPipe,8313
	global	_RF24_write_register

;; *************** function _RF24_write_register *****************
;; Defined at:
;;		line 42 in file "F:/GitHub/Graduation-Project/Moduls/Door/libs/rf24.c"
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
;;		_RF24_startListening
;;		_RF24_stopListening
;;		_RF24_write
;;		_RF24_openReadingPipe
;;		_RF24_flush_tx
;;		_RF24_read
;; This function uses a non-reentrant model
;;
psect	text17,local,class=CODE,delta=2,merge=1,group=1
	line	42
global __ptext17
__ptext17:	;psect for function _RF24_write_register
psect	text17
	file	"F:/GitHub/Graduation-Project/Moduls/Door/libs/rf24.c"
	line	42
	
_RF24_write_register:	
;incstack = 0
	callstack 0
; Regs used in _RF24_write_register: [wreg+status,2+status,0+pclath+cstack]
	movwf	(RF24_write_register@mnemonic_addr)
	line	45
	
l1728:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7	;volatile
	line	46
	
l1730:	
	movf	(RF24_write_register@mnemonic_addr),w
	iorlw	020h
	fcall	_SPI_exchangeByte
	movwf	(??_RF24_write_register+0)+0
	movf	(??_RF24_write_register+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_RF24_attr_status)
	line	47
	
l1732:	
	movf	(RF24_write_register@value),w
	fcall	_SPI_exchangeByte
	line	48
	
l1734:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(67/8),(67)&7	;volatile
	line	49
	
l375:	
	return
	callstack 0
GLOBAL	__end_of_RF24_write_register
	__end_of_RF24_write_register:
	signat	_RF24_write_register,8313
	global	_RF24_write_n_register

;; *************** function _RF24_write_n_register *****************
;; Defined at:
;;		line 29 in file "F:/GitHub/Graduation-Project/Moduls/Door/libs/rf24.c"
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
psect	text18,local,class=CODE,delta=2,merge=1,group=1
	line	29
global __ptext18
__ptext18:	;psect for function _RF24_write_n_register
psect	text18
	file	"F:/GitHub/Graduation-Project/Moduls/Door/libs/rf24.c"
	line	29
	
_RF24_write_n_register:	
;incstack = 0
;; using string table level
	callstack 1
; Regs used in _RF24_write_n_register: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	movwf	(RF24_write_n_register@mnemonic_addr)
	line	31
	
l1746:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7	;volatile
	line	32
	
l1748:	
	movf	(RF24_write_n_register@mnemonic_addr),w
	iorlw	020h
	fcall	_SPI_exchangeByte
	movwf	(??_RF24_write_n_register+0)+0
	movf	(??_RF24_write_n_register+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_RF24_attr_status)
	line	33
	goto	l1756
	line	35
	
l1750:	
	movf	(RF24_write_n_register@buffer+1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	btemp+1
	movf	(RF24_write_n_register@buffer),w
	movwf	fsr0
	fcall	stringtab
	fcall	_SPI_exchangeByte
	
l1752:	
	movlw	01h
	addwf	(RF24_write_n_register@buffer),f
	skipnc
	incf	(RF24_write_n_register@buffer+1),f
	movlw	0
	addwf	(RF24_write_n_register@buffer+1),f
	line	36
	
l1754:	
	movlw	01h
	subwf	(RF24_write_n_register@length),f
	line	33
	
l1756:	
	movf	((RF24_write_n_register@length)),w
	btfss	status,2
	goto	u641
	goto	u640
u641:
	goto	l1750
u640:
	
l371:	
	line	38
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(67/8),(67)&7	;volatile
	line	39
	
l372:	
	return
	callstack 0
GLOBAL	__end_of_RF24_write_n_register
	__end_of_RF24_write_n_register:
	signat	_RF24_write_n_register,12409
	global	_RF24_read_register

;; *************** function _RF24_read_register *****************
;; Defined at:
;;		line 18 in file "F:/GitHub/Graduation-Project/Moduls/Door/libs/rf24.c"
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
;;		_RF24_startListening
;;		_RF24_stopListening
;;		_RF24_openReadingPipe
;; This function uses a non-reentrant model
;;
psect	text19,local,class=CODE,delta=2,merge=1,group=1
	line	18
global __ptext19
__ptext19:	;psect for function _RF24_read_register
psect	text19
	file	"F:/GitHub/Graduation-Project/Moduls/Door/libs/rf24.c"
	line	18
	
_RF24_read_register:	
;incstack = 0
	callstack 0
; Regs used in _RF24_read_register: [wreg+pclath+cstack]
	movwf	(RF24_read_register@mnemonic_addr)
	line	20
	
l1736:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7	;volatile
	line	22
	
l1738:	
	movf	(RF24_read_register@mnemonic_addr),w
	fcall	_SPI_exchangeByte
	movwf	(??_RF24_read_register+0)+0
	movf	(??_RF24_read_register+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_RF24_attr_status)
	line	23
	movlw	low(0FFh)
	fcall	_SPI_exchangeByte
	movwf	(??_RF24_read_register+0)+0
	movf	(??_RF24_read_register+0)+0,w
	movwf	(RF24_read_register@result)
	line	24
	
l1740:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(67/8),(67)&7	;volatile
	line	26
	
l1742:	
	movf	(RF24_read_register@result),w
	line	27
	
l366:	
	return
	callstack 0
GLOBAL	__end_of_RF24_read_register
	__end_of_RF24_read_register:
	signat	_RF24_read_register,4217
	global	_SPI_exchangeByte

;; *************** function _SPI_exchangeByte *****************
;; Defined at:
;;		line 13 in file "F:/GitHub/Graduation-Project/Moduls/Door/libs/spi_master.c"
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
;;		_RF24_read_register
;;		_RF24_write_n_register
;;		_RF24_write_register
;;		_RF24_get_status
;;		_RF24_write
;;		_RF24_read_n_register
;; This function uses a non-reentrant model
;;
psect	text20,local,class=CODE,delta=2,merge=1,group=1
	file	"F:/GitHub/Graduation-Project/Moduls/Door/libs/spi_master.c"
	line	13
global __ptext20
__ptext20:	;psect for function _SPI_exchangeByte
psect	text20
	file	"F:/GitHub/Graduation-Project/Moduls/Door/libs/spi_master.c"
	line	13
	
_SPI_exchangeByte:	
;incstack = 0
	callstack 1
; Regs used in _SPI_exchangeByte: [wreg]
	movwf	(SPI_exchangeByte@byte)
	line	16
	
l1722:	
	movf	(SPI_exchangeByte@byte),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(19)	;volatile
	line	19
	
l550:	
	line	18
	btfss	(99/8),(99)&7	;volatile
	goto	u631
	goto	u630
u631:
	goto	l550
u630:
	
l552:	
	line	20
	bcf	(99/8),(99)&7	;volatile
	line	21
	
l1724:	
	movf	(19),w	;volatile
	line	22
	
l553:	
	return
	callstack 0
GLOBAL	__end_of_SPI_exchangeByte
	__end_of_SPI_exchangeByte:
	signat	_SPI_exchangeByte,4217
	global	_ISR

;; *************** function _ISR *****************
;; Defined at:
;;		line 68 in file "F:/GitHub/Graduation-Project/Moduls/Door/app/src/main.c"
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
psect	text21,local,class=CODE,delta=2,merge=1,group=0
	file	"F:/GitHub/Graduation-Project/Moduls/Door/app/src/main.c"
	line	68
global __ptext21
__ptext21:	;psect for function _ISR
psect	text21
	file	"F:/GitHub/Graduation-Project/Moduls/Door/app/src/main.c"
	line	68
	
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
psect	text21
	line	70
	
i1l1698:	
	fcall	_timeISR
	line	71
	
i1l41:	
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
;;		line 35 in file "F:/GitHub/Graduation-Project/Moduls/Door/libs/time.c"
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
psect	text22,local,class=CODE,delta=2,merge=1,group=1
	file	"F:/GitHub/Graduation-Project/Moduls/Door/libs/time.c"
	line	35
global __ptext22
__ptext22:	;psect for function _timeISR
psect	text22
	file	"F:/GitHub/Graduation-Project/Moduls/Door/libs/time.c"
	line	35
	
_timeISR:	
;incstack = 0
;; hardware stack exceeded
	callstack 0
; Regs used in _timeISR: [wreg]
	line	37
	
i1l1652:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(96/8),(96)&7	;volatile
	goto	u55_21
	goto	u55_20
u55_21:
	goto	i1l160
u55_20:
	line	39
	
i1l1654:	
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
	
i1l1656:	
	bcf	(96/8),(96)&7	;volatile
	line	42
	
i1l160:	
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

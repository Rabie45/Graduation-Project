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
	FNCALL	_main,_RF24_isChipConnected
	FNCALL	_main,_SPI_initialize
	FNCALL	_main,_Serial_begin
	FNCALL	_main,__$_logline_str
	FNCALL	_main,_internet_process
	FNCALL	_main,_internet_setAddress
	FNCALL	_main,_internet_setChannel
	FNCALL	_main,_internet_setNetworkPipe
	FNCALL	_main,_micros
	FNCALL	_main,_transport_udp_tx
	FNCALL	_main,_wait_init
	FNCALL	_wait_init,_timerInit
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
	FNCALL	_transport_udp_process,_memcpy
	FNCALL	_transport_udp_process,_transport_udp_tx
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
	FNCALL	_Serial_begin,___aldiv
	FNCALL	_RF24_isChipConnected,_RF24_read_register
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
	FNCALL	intlevel1,_ISR
	global	intlevel1
	FNROOT	intlevel1
	global	_network_pipe
psect	idataBANK1,class=CODE,space=0,delta=2,noexec
global __pidataBANK1
__pidataBANK1:
	file	"F:/GitHub/Graduation-Project/Moduls/Switch/app/src/main.c"
	line	31

;initializer for _network_pipe
	retlw	low(0)
	retlw	0FCh
	retlw	0B0h
	retlw	0E8h
	retlw	0F5h
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
	file	"F:/GitHub/Graduation-Project/Moduls/Switch/libs/logline.c"
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
	file	"F:/GitHub/Graduation-Project/Moduls/Switch/libs/include\internet.h"
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
	file	"F:/GitHub/Graduation-Project/Moduls/Switch/libs/include\logline.h"
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
	file	"F:/GitHub/Graduation-Project/Moduls/Switch/libs/include\logline.h"
	line	16
_LOGLINE_OK:
	retlw	04Fh
	retlw	04Bh
	retlw	low(0)
	global __end_of_LOGLINE_OK
__end_of_LOGLINE_OK:
	global	_BASE_PIPE
psect	strings
	file	"F:/GitHub/Graduation-Project/Moduls/Switch/libs/include\internet.h"
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
	global	_RF24_attr_status
	global	_prop
	global	_buffer_tx
	global	_networkInfo
	global	_buffer_rx
	global	_TMR1
_TMR1	set	0xE
	global	_TXREG
_TXREG	set	0x19
	global	_SSPBUF
_SSPBUF	set	0x13
	global	_SSPCON
_SSPCON	set	0x14
	global	_PORTD
_PORTD	set	0x8
	global	_CREN
_CREN	set	0xC4
	global	_SPEN
_SPEN	set	0xC7
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
	global	_RD1
_RD1	set	0x41
	global	_SPBRG
_SPBRG	set	0x99
	global	_SSPSTAT
_SSPSTAT	set	0x94
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
	global	_TRISB3
_TRISB3	set	0x433
	global	_TRISB2
_TRISB2	set	0x432
	global	_nRBPU
_nRBPU	set	0x40F
	global	_TRISD1
_TRISD1	set	0x441
	
STR_20:	
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
	
STR_3:	
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
	
STR_8:	
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
	
STR_12:	
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
	
STR_6:	
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
	
STR_2:	
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
	
STR_10:	
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
	
STR_7:	
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
	
STR_4:	
	retlw	67	;'C'
	retlw	79	;'O'
	retlw	78	;'N'
	retlw	70	;'F'
	retlw	73	;'I'
	retlw	71	;'G'
	retlw	0
psect	strings
	
STR_11:	
	retlw	83	;'S'
	retlw	84	;'T'
	retlw	65	;'A'
	retlw	84	;'T'
	retlw	85	;'U'
	retlw	83	;'S'
	retlw	0
psect	strings
	
STR_1:	
	retlw	104	;'h'
	retlw	105	;'i'
	retlw	105	;'i'
	retlw	105	;'i'
	retlw	105	;'i'
	retlw	105	;'i'
	retlw	0
psect	strings
	
STR_13:	
	retlw	82	;'R'
	retlw	88	;'X'
	retlw	95	;'_'
	retlw	80	;'P'
	retlw	48	;'0'
	retlw	0
psect	strings
	
STR_14:	
	retlw	82	;'R'
	retlw	88	;'X'
	retlw	95	;'_'
	retlw	80	;'P'
	retlw	49	;'1'
	retlw	0
psect	strings
	
STR_15:	
	retlw	82	;'R'
	retlw	88	;'X'
	retlw	95	;'_'
	retlw	80	;'P'
	retlw	50	;'2'
	retlw	0
psect	strings
	
STR_16:	
	retlw	82	;'R'
	retlw	88	;'X'
	retlw	95	;'_'
	retlw	80	;'P'
	retlw	51	;'3'
	retlw	0
psect	strings
	
STR_17:	
	retlw	82	;'R'
	retlw	88	;'X'
	retlw	95	;'_'
	retlw	80	;'P'
	retlw	52	;'4'
	retlw	0
psect	strings
	
STR_18:	
	retlw	82	;'R'
	retlw	88	;'X'
	retlw	95	;'_'
	retlw	80	;'P'
	retlw	53	;'5'
	retlw	0
psect	strings
	
STR_5:	
	retlw	69	;'E'
	retlw	78	;'N'
	retlw	95	;'_'
	retlw	65	;'A'
	retlw	65	;'A'
	retlw	0
psect	strings
	
STR_9:	
	retlw	82	;'R'
	retlw	70	;'F'
	retlw	95	;'_'
	retlw	67	;'C'
	retlw	72	;'H'
	retlw	0
psect	strings
STR_19	equ	STR_12+8
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

_RF24_attr_status:
       ds      1

_prop:
       ds      2

psect	bssBANK1,class=BANK1,space=1,noexec
global __pbssBANK1
__pbssBANK1:
_btn1:
       ds      5

__microsMSB:
       ds      4

_buffer_tx:
       ds      32

_networkInfo:
       ds      6

psect	dataBANK1,class=BANK1,space=1,noexec
global __pdataBANK1
__pdataBANK1:
	file	"F:/GitHub/Graduation-Project/Moduls/Switch/app/src/main.c"
	line	31
_network_pipe:
       ds      5

psect	bssBANK3,class=BANK3,space=1,noexec
global __pbssBANK3
__pbssBANK3:
_buffer_rx:
       ds      32

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

; Clear objects allocated to BANK3
psect cinit,class=CODE,delta=2,merge=1
	bsf	status, 7	;select IRP bank2
	movlw	low(__pbssBANK3)
	movwf	fsr
	movlw	low((__pbssBANK3)+020h)
	fcall	clear_ram0
; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2,merge=1
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK1)
	movwf	fsr
	movlw	low((__pbssBANK1)+02Fh)
	fcall	clear_ram0
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+08h)
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
?_RF24_isChipConnected:	; 1 bytes @ 0x0
?_internet_process:	; 1 bytes @ 0x0
?_RF24_setChannel:	; 1 bytes @ 0x0
?_RF24_getDynamicPayloadSize:	; 1 bytes @ 0x0
?_RF24_available:	; 1 bytes @ 0x0
?_internet_calculateMask:	; 1 bytes @ 0x0
?_internet_hasChild:	; 1 bytes @ 0x0
?_RF24_openWritingPipe:	; 1 bytes @ 0x0
?_RF24_stopListening:	; 1 bytes @ 0x0
?_Serial_write:	; 1 bytes @ 0x0
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
?_memcpy:	; 1 bytes @ 0x2
??_internet_calculateMask:	; 1 bytes @ 0x2
??_internet_hasChild:	; 1 bytes @ 0x2
??_Serial_write:	; 1 bytes @ 0x2
??_SPI_exchangeByte:	; 1 bytes @ 0x2
??_timerInit:	; 1 bytes @ 0x2
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
	global	memcpy@s1
memcpy@s1:	; 1 bytes @ 0x2
	global	___aldiv@divisor
___aldiv@divisor:	; 4 bytes @ 0x2
	ds	1
?__$_logline_str:	; 1 bytes @ 0x3
?_RF24_read_n_register:	; 1 bytes @ 0x3
??_RF24_read_register:	; 1 bytes @ 0x3
?_RF24_write_n_register:	; 1 bytes @ 0x3
??_RF24_get_status:	; 1 bytes @ 0x3
	global	internet_calculateMask@mask
internet_calculateMask@mask:	; 1 bytes @ 0x3
	global	internet_hasChild@address
internet_hasChild@address:	; 1 bytes @ 0x3
	global	timerInit@mhz
timerInit@mhz:	; 1 bytes @ 0x3
	global	RF24_read_n_register@buf
RF24_read_n_register@buf:	; 2 bytes @ 0x3
	global	RF24_write_n_register@buffer
RF24_write_n_register@buffer:	; 2 bytes @ 0x3
	global	__$_logline_str@string
__$_logline_str@string:	; 2 bytes @ 0x3
	global	memcpy@n
memcpy@n:	; 2 bytes @ 0x3
	ds	1
??_RF24_available:	; 1 bytes @ 0x4
	global	RF24_read_register@mnemonic_addr
RF24_read_register@mnemonic_addr:	; 1 bytes @ 0x4
	global	timerInit@prescaler
timerInit@prescaler:	; 1 bytes @ 0x4
	ds	1
??_wait_init:	; 1 bytes @ 0x5
??__$_logline_str:	; 1 bytes @ 0x5
??_memcpy:	; 1 bytes @ 0x5
	global	RF24_read_n_register@len
RF24_read_n_register@len:	; 1 bytes @ 0x5
	global	RF24_read_register@result
RF24_read_register@result:	; 1 bytes @ 0x5
	global	RF24_write_n_register@length
RF24_write_n_register@length:	; 1 bytes @ 0x5
	global	wait_init@megaHertez
wait_init@megaHertez:	; 1 bytes @ 0x5
	ds	1
??_RF24_isChipConnected:	; 1 bytes @ 0x6
??_micros:	; 1 bytes @ 0x6
	global	?_RF24_getPALevel
?_RF24_getPALevel:	; 1 bytes @ 0x6
??_RF24_read_n_register:	; 1 bytes @ 0x6
??_RF24_write_n_register:	; 1 bytes @ 0x6
?_RF24_write_register:	; 1 bytes @ 0x6
	global	RF24_write_register@value
RF24_write_register@value:	; 1 bytes @ 0x6
	global	RF24_available@pipe
RF24_available@pipe:	; 1 bytes @ 0x6
	global	__$_logline_str@limit
__$_logline_str@limit:	; 1 bytes @ 0x6
	global	memcpy@tmp
memcpy@tmp:	; 1 bytes @ 0x6
	global	___aldiv@dividend
___aldiv@dividend:	; 4 bytes @ 0x6
	ds	1
??_RF24_getPALevel:	; 1 bytes @ 0x7
??_RF24_write_register:	; 1 bytes @ 0x7
	global	RF24_read_n_register@mnemonic_addr
RF24_read_n_register@mnemonic_addr:	; 1 bytes @ 0x7
	global	RF24_write_n_register@mnemonic_addr
RF24_write_n_register@mnemonic_addr:	; 1 bytes @ 0x7
	global	RF24_isChipConnected@width
RF24_isChipConnected@width:	; 1 bytes @ 0x7
	global	memcpy@d
memcpy@d:	; 1 bytes @ 0x7
	ds	1
??_RF24_openWritingPipe:	; 1 bytes @ 0x8
	global	RF24_write_register@mnemonic_addr
RF24_write_register@mnemonic_addr:	; 1 bytes @ 0x8
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
	ds	1
??_RF24_read:	; 1 bytes @ 0xA
??_RF24_write:	; 1 bytes @ 0xA
??___aldiv:	; 1 bytes @ 0xA
	global	RF24_setPayloadSize@size
RF24_setPayloadSize@size:	; 1 bytes @ 0xA
	global	RF24_getDynamicPayloadSize@result
RF24_getDynamicPayloadSize@result:	; 1 bytes @ 0xA
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
??_RF24_openReadingPipe:	; 1 bytes @ 0x0
?_RF24_write:	; 1 bytes @ 0x0
??_RF24_setRetries:	; 1 bytes @ 0x0
	global	internet_setChannel@channel
internet_setChannel@channel:	; 1 bytes @ 0x0
	global	RF24_setPALevel@setup
RF24_setPALevel@setup:	; 1 bytes @ 0x0
	global	RF24_read@buf
RF24_read@buf:	; 1 bytes @ 0x0
	global	RF24_setDataRate@speed
RF24_setDataRate@speed:	; 1 bytes @ 0x0
	global	___aldiv@counter
___aldiv@counter:	; 1 bytes @ 0x0
	global	RF24_write@buf
RF24_write@buf:	; 2 bytes @ 0x0
	ds	1
	global	_RF24_setPALevel$650
_RF24_setPALevel$650:	; 1 bytes @ 0x1
	global	RF24_setDataRate@setup
RF24_setDataRate@setup:	; 1 bytes @ 0x1
	global	___aldiv@sign
___aldiv@sign:	; 1 bytes @ 0x1
	ds	1
	global	RF24_setPALevel@level
RF24_setPALevel@level:	; 1 bytes @ 0x2
	global	RF24_write@len
RF24_write@len:	; 1 bytes @ 0x2
	global	RF24_openReadingPipe@child
RF24_openReadingPipe@child:	; 1 bytes @ 0x2
	global	___aldiv@quotient
___aldiv@quotient:	; 4 bytes @ 0x2
	ds	1
??_internet_setNetworkPipe:	; 1 bytes @ 0x3
?_internet_relay:	; 1 bytes @ 0x3
??_RF24_begin:	; 1 bytes @ 0x3
	global	internet_relay@payload
internet_relay@payload:	; 2 bytes @ 0x3
	ds	1
	global	internet_setNetworkPipe@pipe
internet_setNetworkPipe@pipe:	; 1 bytes @ 0x4
	ds	1
??_internet_setAddress:	; 1 bytes @ 0x5
	global	internet_relay@size
internet_relay@size:	; 1 bytes @ 0x5
	ds	1
?_Serial_begin:	; 1 bytes @ 0x6
??_Network_begin:	; 1 bytes @ 0x6
??_internet_relay:	; 1 bytes @ 0x6
	global	Serial_begin@baudrate
Serial_begin@baudrate:	; 4 bytes @ 0x6
	ds	1
	global	internet_setAddress@address
internet_setAddress@address:	; 1 bytes @ 0x7
	ds	2
	global	internet_relay@dstMask
internet_relay@dstMask:	; 1 bytes @ 0x9
	ds	1
??_Serial_begin:	; 1 bytes @ 0xA
	global	internet_relay@packetHeader
internet_relay@packetHeader:	; 2 bytes @ 0xA
	ds	2
?_internet_tx:	; 1 bytes @ 0xC
	global	internet_tx@size
internet_tx@size:	; 1 bytes @ 0xC
	ds	1
??_internet_tx:	; 1 bytes @ 0xD
	ds	1
	global	internet_tx@packetHeader
internet_tx@packetHeader:	; 1 bytes @ 0xE
	ds	1
	global	internet_tx@payload
internet_tx@payload:	; 1 bytes @ 0xF
	ds	1
?_transport_udp_tx:	; 1 bytes @ 0x10
	global	transport_udp_tx@size
transport_udp_tx@size:	; 1 bytes @ 0x10
	ds	1
	global	transport_udp_tx@destination
transport_udp_tx@destination:	; 1 bytes @ 0x11
	ds	1
	global	transport_udp_tx@sourcePort
transport_udp_tx@sourcePort:	; 1 bytes @ 0x12
	ds	1
	global	transport_udp_tx@destinationPort
transport_udp_tx@destinationPort:	; 1 bytes @ 0x13
	ds	1
??_transport_udp_tx:	; 1 bytes @ 0x14
	ds	1
	global	transport_udp_tx@packetHeader
transport_udp_tx@packetHeader:	; 1 bytes @ 0x15
	ds	1
	global	transport_udp_tx@payload
transport_udp_tx@payload:	; 1 bytes @ 0x16
	global	Serial_begin@x
Serial_begin@x:	; 2 bytes @ 0x16
	ds	1
?_transport_udp_process:	; 1 bytes @ 0x17
	global	transport_udp_process@size
transport_udp_process@size:	; 1 bytes @ 0x17
	ds	1
	global	transport_udp_process@port
transport_udp_process@port:	; 1 bytes @ 0x18
	ds	1
??_transport_udp_process:	; 1 bytes @ 0x19
	ds	3
	global	transport_udp_process@load
transport_udp_process@load:	; 1 bytes @ 0x1C
	ds	1
	global	transport_udp_process@id
transport_udp_process@id:	; 1 bytes @ 0x1D
	ds	1
	global	transport_udp_process@value
transport_udp_process@value:	; 1 bytes @ 0x1E
	ds	1
	global	transport_udp_process@payload
transport_udp_process@payload:	; 1 bytes @ 0x1F
	ds	1
	global	transport_udp_process@data
transport_udp_process@data:	; 1 bytes @ 0x20
	ds	1
?_transport_udp_rx:	; 1 bytes @ 0x21
	global	transport_udp_rx@size
transport_udp_rx@size:	; 1 bytes @ 0x21
	ds	1
??_transport_udp_rx:	; 1 bytes @ 0x22
	ds	2
	global	transport_udp_rx@packetHeader
transport_udp_rx@packetHeader:	; 1 bytes @ 0x24
	ds	1
	global	transport_udp_rx@payload
transport_udp_rx@payload:	; 1 bytes @ 0x25
	ds	1
?_internet_rx:	; 1 bytes @ 0x26
	global	internet_rx@size
internet_rx@size:	; 1 bytes @ 0x26
	ds	1
??_internet_rx:	; 1 bytes @ 0x27
	ds	2
	global	internet_rx@packetHeader
internet_rx@packetHeader:	; 1 bytes @ 0x29
	ds	1
	global	internet_rx@payload
internet_rx@payload:	; 1 bytes @ 0x2A
	ds	1
??_internet_process:	; 1 bytes @ 0x2B
	ds	1
	global	internet_process@size
internet_process@size:	; 1 bytes @ 0x2C
	ds	1
??_main:	; 1 bytes @ 0x2D
	ds	3
	global	main@packet
main@packet:	; 1 bytes @ 0x30
	ds	1
;!
;!Data Sizes:
;!    Strings     175
;!    Constant    34
;!    Data        5
;!    BSS         88
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14     11      12
;!    BANK0            80     49      57
;!    BANK1            80      0      52
;!    BANK3            96      0      32
;!    BANK2            96      0       0

;!
;!Pointer List with Targets:
;!
;!    buffer_tx.udpHeader	PTR struct UDPPacket size(1) Largest target is 0
;!
;!    memcpy@d1	PTR void  size(1) Largest target is 32
;!		 -> networkInfo(BANK1[6]), buffer_tx(BANK1[32]), 
;!
;!    memcpy@d	PTR unsigned char  size(1) Largest target is 32
;!		 -> networkInfo(BANK1[6]), buffer_tx(BANK1[32]), 
;!
;!    memcpy@s1	PTR const void  size(1) Largest target is 6
;!		 -> networkInfo(BANK1[6]), network_pipe(BANK1[5]), prop(BANK0[2]), 
;!
;!    memcpy@s	PTR const unsigned char  size(1) Largest target is 6
;!		 -> networkInfo(BANK1[6]), network_pipe(BANK1[5]), prop(BANK0[2]), 
;!
;!    _$_logline_str@string	PTR unsigned char  size(2) Largest target is 32
;!		 -> STR_20(CODE[23]), STR_19(CODE[3]), STR_18(CODE[6]), STR_17(CODE[6]), 
;!		 -> STR_16(CODE[6]), STR_15(CODE[6]), STR_14(CODE[6]), STR_13(CODE[6]), 
;!		 -> STR_12(CODE[11]), STR_11(CODE[7]), STR_10(CODE[9]), STR_9(CODE[6]), 
;!		 -> STR_8(CODE[11]), STR_7(CODE[9]), STR_6(CODE[10]), STR_5(CODE[6]), 
;!		 -> STR_4(CODE[7]), STR_3(CODE[23]), STR_2(CODE[10]), buffer_rx(BANK3[32]), 
;!		 -> buffer_tx(BANK1[32]), STR_1(CODE[7]), 
;!
;!    transport_udp_rx@payload	PTR unsigned char  size(1) Largest target is 32
;!		 -> buffer_rx(BANK3[32]), 
;!
;!    transport_udp_rx@packetHeader	PTR struct UDPPacket size(1) Largest target is 32
;!		 -> buffer_rx(BANK3[32]), 
;!
;!    transport_udp_tx@payload	PTR unsigned char  size(1) Largest target is 32
;!		 -> buffer_tx(BANK1[32]), 
;!
;!    transport_udp_tx@packetHeader	PTR struct UDPPacket size(1) Largest target is 32
;!		 -> buffer_tx(BANK1[32]), 
;!
;!    RF24_openWritingPipe@address	PTR unsigned char  size(1) Largest target is 6
;!		 -> networkInfo(BANK1[6]), 
;!
;!    RF24_openReadingPipe@address	PTR unsigned char  size(2) Largest target is 6
;!		 -> BASE_PIPE(CODE[5]), networkInfo(BANK1[6]), 
;!
;!    RF24_read@buf	PTR void  size(1) Largest target is 32
;!		 -> buffer_rx(BANK3[32]), 
;!
;!    RF24_write@buf	PTR void  size(2) Largest target is 32
;!		 -> buffer_rx(BANK3[32]), buffer_tx(BANK1[32]), 
;!
;!    RF24_write_n_register@buffer	PTR unsigned char  size(2) Largest target is 6
;!		 -> BASE_PIPE(CODE[5]), networkInfo(BANK1[6]), 
;!
;!    RF24_read_n_register@buf	PTR unsigned char  size(2) Largest target is 32
;!		 -> RF24_printDetails@buffer(COMMON[5]), buffer_rx(BANK3[32]), 
;!
;!    sp__internet_getRecievingBuffer	PTR unsigned char  size(1) Largest target is 32
;!		 -> buffer_rx(BANK3[32]), 
;!
;!    sp__internet_getTransmissionBuffer	PTR unsigned char  size(1) Largest target is 32
;!		 -> buffer_tx(BANK1[32]), 
;!
;!    internet_relay@payload	PTR unsigned char  size(2) Largest target is 32
;!		 -> buffer_rx(BANK3[32]), buffer_tx(BANK1[32]), 
;!
;!    internet_relay@packetHeader	PTR struct Packet size(2) Largest target is 32
;!		 -> buffer_rx(BANK3[32]), buffer_tx(BANK1[32]), 
;!
;!    internet_rx@payload	PTR unsigned char  size(1) Largest target is 32
;!		 -> buffer_rx(BANK3[32]), 
;!
;!    internet_rx@packetHeader	PTR struct Packet size(1) Largest target is 32
;!		 -> buffer_rx(BANK3[32]), 
;!
;!    internet_tx@payload	PTR unsigned char  size(1) Largest target is 32
;!		 -> buffer_tx(BANK1[32]), 
;!
;!    internet_tx@packetHeader	PTR struct Packet size(1) Largest target is 32
;!		 -> buffer_tx(BANK1[32]), 
;!
;!    internet_setNetworkPipe@pipe	PTR unsigned char  size(1) Largest target is 6
;!		 -> networkInfo(BANK1[6]), network_pipe(BANK1[5]), 
;!
;!    sp__memcpy	PTR void  size(1) Largest target is 32
;!		 -> networkInfo(BANK1[6]), buffer_tx(BANK1[32]), 
;!
;!    transport_udp_process@packet	PTR const struct . size(1) Largest target is 32
;!		 -> buffer_rx(BANK3[32]), 
;!
;!    transport_udp_process@data	PTR unsigned char  size(1) Largest target is 32
;!		 -> buffer_rx(BANK3[32]), 
;!
;!    transport_udp_process@payload	PTR unsigned char  size(1) Largest target is 32
;!		 -> buffer_rx(BANK3[32]), 
;!
;!    transport_udp_process@load	PTR const struct UDPPacket size(1) Largest target is 32
;!		 -> buffer_rx(BANK3[32]), 
;!
;!    S113$udpHeader	PTR struct UDPPacket size(1) Largest target is 0
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
;!    _internet_setChannel->_RF24_setChannel
;!    _internet_setNetworkPipe->_RF24_openReadingPipe
;!    _internet_process->_RF24_getDynamicPayloadSize
;!    _internet_process->_RF24_read
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
;!    _Serial_begin->___aldiv
;!    _RF24_isChipConnected->_RF24_read_register
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
;!    _internet_setAddress->_internet_setNetworkPipe
;!    _internet_setNetworkPipe->_RF24_openReadingPipe
;!    _internet_process->_internet_rx
;!    _internet_rx->_transport_udp_rx
;!    _transport_udp_rx->_transport_udp_process
;!    _transport_udp_process->_transport_udp_tx
;!    _transport_udp_tx->_internet_tx
;!    _internet_tx->_internet_relay
;!    _internet_relay->_RF24_openReadingPipe
;!    _internet_relay->_RF24_write
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
;;Main: autosize = 0, tempsize = 3, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                13    13      0  170077
;!                                             45 BANK0      4     4      0
;!                      _Network_begin
;!               _RF24_isChipConnected
;!                     _SPI_initialize
;!                       _Serial_begin
;!                     __$_logline_str
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
;! (1) _micros                                               4     0      4       0
;!                                              2 COMMON     4     0      4
;! ---------------------------------------------------------------------------------
;! (1) _internet_setChannel                                  1     1      0    3615
;!                                              0 BANK0      1     1      0
;!                    _RF24_setChannel
;! ---------------------------------------------------------------------------------
;! (1) _internet_setAddress                                  3     3      0    6052
;!                                              5 BANK0      3     3      0
;!             _internet_calculateMask
;!            _internet_setNetworkPipe
;! ---------------------------------------------------------------------------------
;! (1) _internet_setNetworkPipe                              2     2      0    5888
;!                                              3 BANK0      2     2      0
;!               _RF24_openReadingPipe
;!                             _memcpy
;! ---------------------------------------------------------------------------------
;! (1) _internet_process                                     2     2      0   58929
;!                                             43 BANK0      2     2      0
;!                     _RF24_available
;!         _RF24_getDynamicPayloadSize
;!                          _RF24_read
;!                        _internet_rx
;! ---------------------------------------------------------------------------------
;! (2) _internet_rx                                          5     4      1   50567
;!                                             38 BANK0      5     4      1
;!                     _internet_relay
;!                   _transport_udp_rx
;! ---------------------------------------------------------------------------------
;! (3) _transport_udp_rx                                     5     4      1   26864
;!                                             33 BANK0      5     4      1
;!              _transport_udp_process
;! ---------------------------------------------------------------------------------
;! (4) _transport_udp_process                               11     9      2   26561
;!                                             23 BANK0     10     8      2
;!                             _memcpy
;!                   _transport_udp_tx
;! ---------------------------------------------------------------------------------
;! (1) _transport_udp_tx                                     7     3      4   25292
;!                                             16 BANK0      7     3      4
;!                        _internet_tx
;! ---------------------------------------------------------------------------------
;! (2) _internet_tx                                          4     3      1   23641
;!                                             12 BANK0      4     3      1
;!                     _internet_relay
;! ---------------------------------------------------------------------------------
;! (3) _internet_relay                                      10     7      3   23307
;!                                              3 BANK0      9     6      3
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
;! (4) _internet_hasChild                                    2     2      0      31
;!                                              2 COMMON     2     2      0
;! ---------------------------------------------------------------------------------
;! (4) _internet_calculateMask                               2     2      0     102
;!                                              2 COMMON     2     2      0
;! ---------------------------------------------------------------------------------
;! (4) __$_logline_str                                       4     2      2    1660
;!                                              3 COMMON     4     2      2
;!                       _Serial_write
;! ---------------------------------------------------------------------------------
;! (5) _Serial_write                                         1     1      0      31
;!                                              2 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (4) _RF24_write                                           4     1      3    7773
;!                                             10 COMMON     1     1      0
;!                                              0 BANK0      3     0      3
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
;! (2) _memcpy                                               8     5      3     740
;!                                              2 COMMON     8     5      3
;! ---------------------------------------------------------------------------------
;! (2) _RF24_read                                            3     2      1    4518
;!                                              9 COMMON     2     1      1
;!                                              0 BANK0      1     1      0
;!               _RF24_read_n_register
;!                _RF24_write_register
;! ---------------------------------------------------------------------------------
;! (3) _RF24_read_n_register                                 5     2      3     727
;!                                              3 COMMON     5     2      3
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
;! (1) _RF24_isChipConnected                                 2     2      0     161
;!                                              6 COMMON     2     2      0
;!                 _RF24_read_register
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
;! Estimated maximum stack depth 5
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (12) _ISR                                                 2     2      0       0
;!                                              0 COMMON     2     2      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 12
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
;!   _RF24_isChipConnected
;!     _RF24_read_register
;!   _SPI_initialize
;!   _Serial_begin
;!     ___aldiv
;!   __$_logline_str
;!     _Serial_write
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
;!           _memcpy
;!           _transport_udp_tx
;!             _internet_tx
;!               _internet_relay
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
;!   _wait_init
;!     _timerInit
;!
;! _ISR (ROOT)
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BANK3               60      0      20       9       33.3%
;!BITBANK3            60      0       0       8        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!BANK2               60      0       0      11        0.0%
;!BITBANK2            60      0       0      10        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITSFR2              0      0       0       5        0.0%
;!BANK1               50      0      34       7       65.0%
;!BITBANK1            50      0       0       6        0.0%
;!SFR1                 0      0       0       2        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!BANK0               50     31      39       5       71.2%
;!BITBANK0            50      0       0       4        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!COMMON               E      B       C       1       85.7%
;!BITCOMMON            E      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!DATA                 0      0      99      12        0.0%
;!ABS                  0      0      99       3        0.0%
;!NULL                 0      0       0       0        0.0%
;!STACK                0      0       0       2        0.0%
;!EEDATA             100      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 66 in file "F:/GitHub/Graduation-Project/Moduls/Switch/app/src/main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  packet          1   48[BANK0 ] PTR struct .
;;		 -> buffer_tx(32), 
;;  var1            1    0        unsigned char 
;;  startTime       4    0        unsigned long 
;;  stopTime        4    0        unsigned long 
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
;;      Temps:          0       3       0       0       0
;;      Totals:         0       4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels required when called: 12
;; This function calls:
;;		_Network_begin
;;		_RF24_isChipConnected
;;		_SPI_initialize
;;		_Serial_begin
;;		__$_logline_str
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
	file	"F:/GitHub/Graduation-Project/Moduls/Switch/app/src/main.c"
	line	66
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"F:/GitHub/Graduation-Project/Moduls/Switch/app/src/main.c"
	line	66
	
_main:	
;incstack = 0
;; hardware stack exceeded
	callstack 0
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	69
	
l2949:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1089/8)^080h,(1089)&7	;volatile
	line	71
	
l2951:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	72
	
l2953:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1039/8)^080h,(1039)&7	;volatile
	line	73
	
l2955:	
	bcf	(1074/8)^080h,(1074)&7	;volatile
	line	74
	
l2957:	
	bsf	(1075/8)^080h,(1075)&7	;volatile
	line	75
	
l2959:	
	movlw	low(010h)
	fcall	_wait_init
	line	76
	
l2961:	
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
	line	77
	
l2963:	
	fcall	_SPI_initialize
	line	78
	
l2965:	
	fcall	_Network_begin
	line	79
	
l2967:	
	movlw	low(073h)
	fcall	_internet_setChannel
	line	80
	
l2969:	
	movlw	(low(_network_pipe|((0x0)<<8)))&0ffh
	fcall	_internet_setNetworkPipe
	line	81
	
l2971:	
	movlw	low(02h)
	fcall	_internet_setAddress
	line	82
	
l2973:	
	line	87
	
l2975:	
	movlw	(low((((STR_1)-__stringbase)|8000h)))&0ffh
	movwf	(__$_logline_str@string)
	movlw	80h
	movwf	(__$_logline_str@string+1)
	fcall	__$_logline_str
	line	88
	goto	l2979
	line	90
	
l2977:	
	movlw	1<<((65)&7)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	((65)/8),f
	line	91
	asmopt push
asmopt off
movlw  21
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main+0)+0+2)
movlw	75
movwf	((??_main+0)+0+1)
	movlw	189
movwf	((??_main+0)+0)
	u1627:
decfsz	((??_main+0)+0),f
	goto	u1627
	decfsz	((??_main+0)+0+1),f
	goto	u1627
	decfsz	((??_main+0)+0+2),f
	goto	u1627
	nop2
asmopt pop

	line	88
	
l2979:	
	fcall	_RF24_isChipConnected
	xorlw	0
	skipnz
	goto	u1611
	goto	u1610
u1611:
	goto	l2977
u1610:
	line	93
	
l2981:	
	movlw	low(08h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(transport_udp_tx@size)
	clrf	(transport_udp_tx@destination)
	incf	(transport_udp_tx@destination),f
	movlw	low(03h)
	movwf	(??_main+1)+0
	movf	(??_main+1)+0,w
	movwf	(transport_udp_tx@sourcePort)
	movlw	low(06h)
	movwf	(??_main+2)+0
	movf	(??_main+2)+0,w
	movwf	(transport_udp_tx@destinationPort)
	movlw	(low(_buffer_tx|((0x0)<<8)))&0ffh
	fcall	_transport_udp_tx
	line	94
	
l2983:	
	asmopt push
asmopt off
movlw  21
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main+0)+0+2)
movlw	75
movwf	((??_main+0)+0+1)
	movlw	189
movwf	((??_main+0)+0)
	u1637:
decfsz	((??_main+0)+0),f
	goto	u1637
	decfsz	((??_main+0)+0+1),f
	goto	u1637
	decfsz	((??_main+0)+0+2),f
	goto	u1637
	nop2
asmopt pop

	line	95
	
l2985:	
	fcall	_internet_process
	line	96
	
l2987:	
	fcall	_micros
	line	103
	
l2989:	
	line	104
	
l2991:	
	line	106
	
l2993:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	comf	(_prop),f
	line	107
	
l2995:	
	movlw	(low(_buffer_tx|((0x0)<<8)))&0ffh
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@packet)
	line	108
	
l2997:	
	movf	(main@packet),w
	addlw	03h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	line	109
	
l2999:	
	movf	(_prop),w
	movwf	(??_main+0)+0
	movf	(main@packet),w
	addlw	04h
	movwf	fsr0
	movf	(??_main+0)+0,w
	movwf	indf
	line	110
	
l3001:	
	movf	(main@packet),w
	addlw	02h
	movwf	fsr0
	clrf	indf
	incf	indf,f
	line	111
	
l3003:	
	movlw	low(03h)
	movwf	(??_main+0)+0
	incf	(main@packet),w
	movwf	fsr0
	movf	(??_main+0)+0,w
	movwf	indf
	line	112
	
l3005:	
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
	goto	l2975
	global	start
	ljmp	start
	callstack 0
	line	115
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_wait_init

;; *************** function _wait_init *****************
;; Defined at:
;;		line 3 in file "F:/GitHub/Graduation-Project/Moduls/Switch/libs/wait.c"
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
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_timerInit
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1,group=1
	file	"F:/GitHub/Graduation-Project/Moduls/Switch/libs/wait.c"
	line	3
global __ptext1
__ptext1:	;psect for function _wait_init
psect	text1
	file	"F:/GitHub/Graduation-Project/Moduls/Switch/libs/wait.c"
	line	3
	
_wait_init:	
;incstack = 0
	callstack 5
; Regs used in _wait_init: [wreg+status,2+status,0+pclath+cstack]
	movwf	(wait_init@megaHertez)
	line	5
	
l2319:	
	movf	(wait_init@megaHertez),w
	fcall	_timerInit
	line	6
	
l603:	
	return
	callstack 0
GLOBAL	__end_of_wait_init
	__end_of_wait_init:
	signat	_wait_init,4217
	global	_timerInit

;; *************** function _timerInit *****************
;; Defined at:
;;		line 3 in file "F:/GitHub/Graduation-Project/Moduls/Switch/libs/time.c"
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
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_wait_init
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1,group=1
	file	"F:/GitHub/Graduation-Project/Moduls/Switch/libs/time.c"
	line	3
global __ptext2
__ptext2:	;psect for function _timerInit
psect	text2
	file	"F:/GitHub/Graduation-Project/Moduls/Switch/libs/time.c"
	line	3
	
_timerInit:	
;incstack = 0
	callstack 5
; Regs used in _timerInit: [wreg+status,2+status,0]
	movwf	(timerInit@mhz)
	line	5
	
l2259:	
	clrc
	rrf	(timerInit@mhz),f
	clrc
	rrf	(timerInit@mhz),f

	line	6
	
l2261:	
	clrf	(timerInit@prescaler)
	line	7
	goto	l2267
	line	9
	
l2263:	
	movlw	low(01h)
	movwf	(??_timerInit+0)+0
	movf	(??_timerInit+0)+0,w
	addwf	(timerInit@prescaler),f
	line	10
	
l2265:	
	clrc
	rrf	(timerInit@mhz),f

	line	7
	
l2267:	
	movf	((timerInit@mhz)),w
	btfsc	status,2
	goto	u941
	goto	u940
u941:
	goto	l570
u940:
	
l2269:	
	btfss	(timerInit@mhz),(0)&7
	goto	u951
	goto	u950
u951:
	goto	l2263
u950:
	
l570:	
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
	
l2271:	
	movf	(timerInit@prescaler),w
	movwf	(??_timerInit+0)+0
	movlw	01h
u965:
	clrc
	rrf	(??_timerInit+0)+0,f
	addlw	-1
	skipz
	goto	u965
	btfsc	0+(??_timerInit+0)+0,0
	goto	u971
	goto	u970
	
u971:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(133/8),(133)&7	;volatile
	goto	u984
u970:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(133/8),(133)&7	;volatile
u984:
	line	22
	
l2273:	
	btfsc	(timerInit@prescaler),0
	goto	u991
	goto	u990
	
u991:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(132/8),(132)&7	;volatile
	goto	u1004
u990:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(132/8),(132)&7	;volatile
u1004:
	line	23
	
l2275:	
	bsf	(128/8),(128)&7	;volatile
	line	24
	
l2277:	
	clrf	(14)	;volatile
	clrf	(14+1)	;volatile
	line	28
	
l571:	
	return
	callstack 0
GLOBAL	__end_of_timerInit
	__end_of_timerInit:
	signat	_timerInit,4217
	global	_micros

;; *************** function _micros *****************
;; Defined at:
;;		line 30 in file "F:/GitHub/Graduation-Project/Moduls/Switch/libs/time.c"
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
;;      Temps:          0       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1,inline,group=1
	line	30
global __ptext3
__ptext3:	;psect for function _micros
psect	text3
	file	"F:/GitHub/Graduation-Project/Moduls/Switch/libs/time.c"
	line	30
	
_micros:	
;incstack = 0
	callstack 6
; Regs used in _micros: [wreg]
	line	32
	
l2409:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(14),w	;volatile
	movwf	(?_micros)
	movf	(14+1),w	;volatile
	movwf	((?_micros))+1
	clrf	2+((?_micros))
	clrf	3+((?_micros))
	line	33
	
l574:	
	return
	callstack 0
GLOBAL	__end_of_micros
	__end_of_micros:
	signat	_micros,92
	global	_internet_setChannel

;; *************** function _internet_setChannel *****************
;; Defined at:
;;		line 9 in file "F:/GitHub/Graduation-Project/Moduls/Switch/libs/internet.c"
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
;; Hardware stack levels required when called: 4
;; This function calls:
;;		_RF24_setChannel
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1,group=1
	file	"F:/GitHub/Graduation-Project/Moduls/Switch/libs/internet.c"
	line	9
global __ptext4
__ptext4:	;psect for function _internet_setChannel
psect	text4
	file	"F:/GitHub/Graduation-Project/Moduls/Switch/libs/internet.c"
	line	9
	
_internet_setChannel:	
;incstack = 0
	callstack 3
; Regs used in _internet_setChannel: [wreg+status,2+status,0+pclath+cstack]
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(internet_setChannel@channel)
	line	11
	
l2911:	
	movf	(internet_setChannel@channel),w
	fcall	_RF24_setChannel
	line	12
	
l239:	
	return
	callstack 0
GLOBAL	__end_of_internet_setChannel
	__end_of_internet_setChannel:
	signat	_internet_setChannel,4217
	global	_internet_setAddress

;; *************** function _internet_setAddress *****************
;; Defined at:
;;		line 123 in file "F:/GitHub/Graduation-Project/Moduls/Switch/libs/internet.c"
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
;; Hardware stack levels required when called: 5
;; This function calls:
;;		_internet_calculateMask
;;		_internet_setNetworkPipe
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1,group=1
	line	123
global __ptext5
__ptext5:	;psect for function _internet_setAddress
psect	text5
	file	"F:/GitHub/Graduation-Project/Moduls/Switch/libs/internet.c"
	line	123
	
_internet_setAddress:	
;incstack = 0
	callstack 2
; Regs used in _internet_setAddress: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(internet_setAddress@address)
	line	125
	
l2913:	
	movf	(internet_setAddress@address),w
	movwf	(??_internet_setAddress+0)+0
	movf	(??_internet_setAddress+0)+0,w
	movwf	(_node)
	line	126
	
l2915:	
	movf	(internet_setAddress@address),w
	fcall	_internet_calculateMask
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_internet_setAddress+0)+0
	movf	(??_internet_setAddress+0)+0,w
	movwf	0+(_node)+01h
	line	127
	
l2917:	
	movf	0+(_node)+01h,w
	addlw	01h
	movwf	(??_internet_setAddress+0)+0
	movf	(??_internet_setAddress+0)+0,w
	movwf	0+(_node)+02h
	line	128
	
l2919:	
	movf	0+(_node)+02h,w
	movwf	(??_internet_setAddress+0)+0
	movlw	01h
u1565:
	clrc
	rlf	(??_internet_setAddress+0)+0,f
	addlw	-1
	skipz
	goto	u1565
	movf	0+(_node)+01h,w
	andwf	(_node),w
	iorwf	0+(??_internet_setAddress+0)+0,w
	movwf	(??_internet_setAddress+1)+0
	movf	(??_internet_setAddress+1)+0,w
	movwf	0+(_node)+03h
	line	129
	
l2921:	
	movf	0+(_node)+02h,w
	movwf	(??_internet_setAddress+0)+0
	movlw	01h
u1575:
	clrc
	rlf	(??_internet_setAddress+0)+0,f
	addlw	-1
	skipz
	goto	u1575
	movf	0+(_node)+01h,w
	andwf	(_node),w
	iorwf	0+(??_internet_setAddress+0)+0,w
	iorwf	0+(_node)+02h,w
	movwf	(??_internet_setAddress+1)+0
	movf	(??_internet_setAddress+1)+0,w
	movwf	0+(_node)+04h
	line	130
	
l2923:	
	movlw	(low(_networkInfo|((0x0)<<8)))&0ffh
	fcall	_internet_setNetworkPipe
	line	131
	
l278:	
	return
	callstack 0
GLOBAL	__end_of_internet_setAddress
	__end_of_internet_setAddress:
	signat	_internet_setAddress,4217
	global	_internet_setNetworkPipe

;; *************** function _internet_setNetworkPipe *****************
;; Defined at:
;;		line 23 in file "F:/GitHub/Graduation-Project/Moduls/Switch/libs/internet.c"
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
;; Hardware stack levels required when called: 4
;; This function calls:
;;		_RF24_openReadingPipe
;;		_memcpy
;; This function is called by:
;;		_main
;;		_internet_setAddress
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1,group=1
	line	23
global __ptext6
__ptext6:	;psect for function _internet_setNetworkPipe
psect	text6
	file	"F:/GitHub/Graduation-Project/Moduls/Switch/libs/internet.c"
	line	23
	
_internet_setNetworkPipe:	
;incstack = 0
	callstack 3
; Regs used in _internet_setNetworkPipe: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(internet_setNetworkPipe@pipe)
	line	25
	
l2779:	
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
	
l2781:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_node),w
	movwf	(??_internet_setNetworkPipe+0)+0
	movf	(??_internet_setNetworkPipe+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_networkInfo)^080h
	line	27
	
l2783:	
	movlw	(low(_networkInfo|((0x0)<<8))&0ffh)
	movwf	(RF24_openReadingPipe@address)
	movlw	(0x0)
	movwf	(RF24_openReadingPipe@address+1)
	movlw	low(01h)
	fcall	_RF24_openReadingPipe
	line	28
	
l248:	
	return
	callstack 0
GLOBAL	__end_of_internet_setNetworkPipe
	__end_of_internet_setNetworkPipe:
	signat	_internet_setNetworkPipe,4217
	global	_internet_process

;; *************** function _internet_process *****************
;; Defined at:
;;		line 13 in file "F:/GitHub/Graduation-Project/Moduls/Switch/libs/internet.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  size            1   44[BANK0 ] unsigned char 
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
;; Hardware stack levels required when called: 11
;; This function calls:
;;		_RF24_available
;;		_RF24_getDynamicPayloadSize
;;		_RF24_read
;;		_internet_rx
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1,group=1
	line	13
global __ptext7
__ptext7:	;psect for function _internet_process
psect	text7
	file	"F:/GitHub/Graduation-Project/Moduls/Switch/libs/internet.c"
	line	13
	
_internet_process:	
;incstack = 0
;; hardware stack exceeded
	callstack 0
; Regs used in _internet_process: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	15
	
l2939:	
	goto	l2947
	line	17
	
l2941:	
	fcall	_RF24_getDynamicPayloadSize
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_internet_process+0)+0
	movf	(??_internet_process+0)+0,w
	movwf	(internet_process@size)
	line	19
	
l2943:	
	movf	(internet_process@size),w
	movwf	(??_internet_process+0)+0
	movf	(??_internet_process+0)+0,w
	movwf	(RF24_read@len)
	movlw	(low(_buffer_rx|((0x1)<<8)))&0ffh
	fcall	_RF24_read
	line	20
	
l2945:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(internet_process@size),w
	movwf	(??_internet_process+0)+0
	movf	(??_internet_process+0)+0,w
	movwf	(internet_rx@size)
	movlw	(low(_buffer_rx|((0x1)<<8)))&0ffh
	fcall	_internet_rx
	line	15
	
l2947:	
	fcall	_RF24_available
	xorlw	0
	skipz
	goto	u1601
	goto	u1600
u1601:
	goto	l2941
u1600:
	line	22
	
l245:	
	return
	callstack 0
GLOBAL	__end_of_internet_process
	__end_of_internet_process:
	signat	_internet_process,89
	global	_internet_rx

;; *************** function _internet_rx *****************
;; Defined at:
;;		line 37 in file "F:/GitHub/Graduation-Project/Moduls/Switch/libs/internet.c"
;; Parameters:    Size  Location     Type
;;  payload         1    wreg     PTR unsigned char 
;;		 -> buffer_rx(32), 
;;  size            1   38[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  payload         1   42[BANK0 ] PTR unsigned char 
;;		 -> buffer_rx(32), 
;;  packetHeader    1   41[BANK0 ] PTR struct Packet
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
;; Hardware stack levels required when called: 10
;; This function calls:
;;		_internet_relay
;;		_transport_udp_rx
;; This function is called by:
;;		_internet_process
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1,group=1
	line	37
global __ptext8
__ptext8:	;psect for function _internet_rx
psect	text8
	file	"F:/GitHub/Graduation-Project/Moduls/Switch/libs/internet.c"
	line	37
	
_internet_rx:	
;incstack = 0
;; hardware stack exceeded
	callstack 0
; Regs used in _internet_rx: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(internet_rx@payload)
	line	39
	
l2805:	
	movf	(internet_rx@payload),w
	movwf	(??_internet_rx+0)+0
	movf	(??_internet_rx+0)+0,w
	movwf	(internet_rx@packetHeader)
	line	40
	
l2807:	
	movf	(internet_rx@packetHeader),w
	addlw	03h
	movwf	fsr0
	bsf	status, 7	;select IRP bank2
	movf	indf,w
	xorwf	(_node),w
	skipnz
	goto	u1511
	goto	u1510
u1511:
	goto	l2817
u1510:
	line	42
	
l2809:	
	movf	(internet_rx@payload),w
	movwf	(internet_relay@payload)
	movlw	(0x1)
	movwf	(internet_relay@payload+1)
	movf	(internet_rx@size),w
	movwf	(??_internet_rx+0)+0
	movf	(??_internet_rx+0)+0,w
	movwf	(internet_relay@size)
	fcall	_internet_relay
	goto	l255
	line	54
	
l2813:	
	movf	(internet_rx@size),w
	movwf	(??_internet_rx+0)+0
	movf	(??_internet_rx+0)+0,w
	movwf	(transport_udp_rx@size)
	movf	(internet_rx@payload),w
	fcall	_transport_udp_rx
	line	55
	goto	l255
	line	59
	
l2817:	
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
	goto	l3037
	goto	l255
	asmopt pop
	
l3037:	
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
	goto	l255
	xorlw	1^0	; case 1
	skipnz
	goto	l2813
	xorlw	2^1	; case 2
	skipnz
	goto	l255
	goto	l255
	asmopt pop

	line	60
	
l255:	
	return
	callstack 0
GLOBAL	__end_of_internet_rx
	__end_of_internet_rx:
	signat	_internet_rx,8313
	global	_transport_udp_rx

;; *************** function _transport_udp_rx *****************
;; Defined at:
;;		line 12 in file "F:/GitHub/Graduation-Project/Moduls/Switch/libs/transport.c"
;; Parameters:    Size  Location     Type
;;  payload         1    wreg     PTR unsigned char 
;;		 -> buffer_rx(32), 
;;  size            1   33[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  payload         1   37[BANK0 ] PTR unsigned char 
;;		 -> buffer_rx(32), 
;;  packetHeader    1   36[BANK0 ] PTR struct UDPPacket
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
;; Hardware stack levels required when called: 9
;; This function calls:
;;		_transport_udp_process
;; This function is called by:
;;		_internet_rx
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1,group=1
	file	"F:/GitHub/Graduation-Project/Moduls/Switch/libs/transport.c"
	line	12
global __ptext9
__ptext9:	;psect for function _transport_udp_rx
psect	text9
	file	"F:/GitHub/Graduation-Project/Moduls/Switch/libs/transport.c"
	line	12
	
_transport_udp_rx:	
;incstack = 0
;; hardware stack exceeded
	callstack 0
; Regs used in _transport_udp_rx: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(transport_udp_rx@payload)
	line	14
	
l2727:	
	movf	(transport_udp_rx@payload),w
	movwf	(??_transport_udp_rx+0)+0
	movf	(??_transport_udp_rx+0)+0,w
	movwf	(transport_udp_rx@packetHeader)
	line	15
	
l2729:	
	movf	(transport_udp_rx@size),w
	movwf	(??_transport_udp_rx+0)+0
	movf	(??_transport_udp_rx+0)+0,w
	movwf	(transport_udp_process@size)
	movf	(transport_udp_rx@packetHeader),w
	addlw	04h
	movwf	fsr0
	bsf	status, 7	;select IRP bank2
	swapf	indf,w
	andlw	(1<<4)-1
	movwf	(??_transport_udp_rx+1)+0
	movf	(??_transport_udp_rx+1)+0,w
	movwf	(transport_udp_process@port)
	movf	(transport_udp_rx@payload),w
	fcall	_transport_udp_process
	line	16
	
l596:	
	return
	callstack 0
GLOBAL	__end_of_transport_udp_rx
	__end_of_transport_udp_rx:
	signat	_transport_udp_rx,8313
	global	_transport_udp_process

;; *************** function _transport_udp_process *****************
;; Defined at:
;;		line 117 in file "F:/GitHub/Graduation-Project/Moduls/Switch/app/src/main.c"
;; Parameters:    Size  Location     Type
;;  payload         1    wreg     PTR unsigned char 
;;		 -> buffer_rx(32), 
;;  size            1   23[BANK0 ] unsigned char 
;;  port            1   24[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  payload         1   31[BANK0 ] PTR unsigned char 
;;		 -> buffer_rx(32), 
;;  packet          1    0        PTR const struct .
;;		 -> buffer_rx(32), 
;;  data            1   32[BANK0 ] PTR unsigned char 
;;		 -> buffer_rx(32), 
;;  value           1   30[BANK0 ] unsigned char 
;;  id              1   29[BANK0 ] unsigned char 
;;  load            1   28[BANK0 ] PTR const struct UDPPack
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
;;      Locals:         0       5       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0      10       0       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 8
;; This function calls:
;;		_memcpy
;;		_transport_udp_tx
;; This function is called by:
;;		_transport_udp_rx
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1,group=0
	file	"F:/GitHub/Graduation-Project/Moduls/Switch/app/src/main.c"
	line	117
global __ptext10
__ptext10:	;psect for function _transport_udp_process
psect	text10
	file	"F:/GitHub/Graduation-Project/Moduls/Switch/app/src/main.c"
	line	117
	
_transport_udp_process:	
;incstack = 0
;; hardware stack exceeded
	callstack 0
; Regs used in _transport_udp_process: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(transport_udp_process@payload)
	line	120
	
l2703:	
	movf	(transport_udp_process@payload),w
	movwf	(??_transport_udp_process+0)+0
	movf	(??_transport_udp_process+0)+0,w
	movwf	(transport_udp_process@load)
	line	121
	movlw	(low(_buffer_rx|((0x1)<<8)+05h))&0ffh
	movwf	(??_transport_udp_process+0)+0
	movf	(??_transport_udp_process+0)+0,w
	movwf	(transport_udp_process@data)
	line	123
	
l2705:	
	movf	(transport_udp_process@data),w
	movwf	fsr0
	bsf	status, 7	;select IRP bank2
	movf	indf,w
	movwf	(??_transport_udp_process+0)+0
	movf	(??_transport_udp_process+0)+0,w
	movwf	(transport_udp_process@id)
	line	124
	
l2707:	
	incf	(transport_udp_process@data),w
	movwf	fsr0
	movf	indf,w
	movwf	(??_transport_udp_process+0)+0
	movf	(??_transport_udp_process+0)+0,w
	movwf	(transport_udp_process@value)
	line	126
	
l2709:	
		movlw	6
	xorwf	((transport_udp_process@port)),w
	btfss	status,2
	goto	u1431
	goto	u1430
u1431:
	goto	l2717
u1430:
	
l2711:	
	movf	(transport_udp_process@value),w
	movwf	(??_transport_udp_process+0)+0
	movf	(transport_udp_process@id),w
	addlw	low(_prop|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	(??_transport_udp_process+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l2713:	
	goto	l78
	line	131
	
l2717:	
		movlw	6
	xorwf	((transport_udp_process@port)),w
	btfss	status,2
	goto	u1441
	goto	u1440
u1441:
	goto	l78
u1440:
	
l2719:	
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
	
l2721:	
	movlw	low(020h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_transport_udp_process+0)+0
	movf	(??_transport_udp_process+0)+0,w
	movwf	(transport_udp_tx@size)
	clrf	(transport_udp_tx@destination)
	incf	(transport_udp_tx@destination),f
	movlw	low(07h)
	movwf	(??_transport_udp_process+1)+0
	movf	(??_transport_udp_process+1)+0,w
	movwf	(transport_udp_tx@sourcePort)
	movf	(transport_udp_process@load),w
	addlw	04h
	movwf	fsr0
	bsf	status, 7	;select IRP bank2
	movf	indf,w
	andlw	(1<<4)-1
	movwf	(??_transport_udp_process+2)+0
	movf	(??_transport_udp_process+2)+0,w
	movwf	(transport_udp_tx@destinationPort)
	movlw	(low(_buffer_tx|((0x0)<<8)))&0ffh
	fcall	_transport_udp_tx
	line	135
	
l78:	
	return
	callstack 0
GLOBAL	__end_of_transport_udp_process
	__end_of_transport_udp_process:
	signat	_transport_udp_process,12409
	global	_transport_udp_tx

;; *************** function _transport_udp_tx *****************
;; Defined at:
;;		line 3 in file "F:/GitHub/Graduation-Project/Moduls/Switch/libs/transport.c"
;; Parameters:    Size  Location     Type
;;  payload         1    wreg     PTR unsigned char 
;;		 -> buffer_tx(32), 
;;  size            1   16[BANK0 ] unsigned char 
;;  destination     1   17[BANK0 ] unsigned char 
;;  sourcePort      1   18[BANK0 ] unsigned char 
;;  destinationP    1   19[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  payload         1   22[BANK0 ] PTR unsigned char 
;;		 -> buffer_tx(32), 
;;  packetHeader    1   21[BANK0 ] PTR struct UDPPacket
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
;; Hardware stack levels required when called: 7
;; This function calls:
;;		_internet_tx
;; This function is called by:
;;		_main
;;		_transport_udp_process
;; This function uses a non-reentrant model
;;
psect	text11,local,class=CODE,delta=2,merge=1,group=1
	file	"F:/GitHub/Graduation-Project/Moduls/Switch/libs/transport.c"
	line	3
global __ptext11
__ptext11:	;psect for function _transport_udp_tx
psect	text11
	file	"F:/GitHub/Graduation-Project/Moduls/Switch/libs/transport.c"
	line	3
	
_transport_udp_tx:	
;incstack = 0
	callstack 0
; Regs used in _transport_udp_tx: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(transport_udp_tx@payload)
	line	5
	
l2683:	
	movf	(transport_udp_tx@payload),w
	movwf	(??_transport_udp_tx+0)+0
	movf	(??_transport_udp_tx+0)+0,w
	movwf	(transport_udp_tx@packetHeader)
	line	6
	
l2685:	
	incf	(transport_udp_tx@packetHeader),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	incf	indf,f
	line	7
	
l2687:	
	movf	(transport_udp_tx@destination),w
	movwf	(??_transport_udp_tx+0)+0
	movf	(transport_udp_tx@packetHeader),w
	addlw	03h
	movwf	fsr0
	movf	(??_transport_udp_tx+0)+0,w
	movwf	indf
	line	8
	
l2689:	
	movf	(transport_udp_tx@packetHeader),w
	addlw	04h
	movwf	fsr0
	movf	indf,w
	xorwf	(transport_udp_tx@sourcePort),w
	andlw	not ((1<<4)-1)
	xorwf	(transport_udp_tx@sourcePort),w
	movwf	indf
	line	9
	
l2691:	
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
	
l2693:	
	movf	(transport_udp_tx@size),w
	movwf	(??_transport_udp_tx+0)+0
	movf	(??_transport_udp_tx+0)+0,w
	movwf	(internet_tx@size)
	movf	(transport_udp_tx@payload),w
	fcall	_internet_tx
	line	11
	
l593:	
	return
	callstack 0
GLOBAL	__end_of_transport_udp_tx
	__end_of_transport_udp_tx:
	signat	_transport_udp_tx,20601
	global	_internet_tx

;; *************** function _internet_tx *****************
;; Defined at:
;;		line 29 in file "F:/GitHub/Graduation-Project/Moduls/Switch/libs/internet.c"
;; Parameters:    Size  Location     Type
;;  payload         1    wreg     PTR unsigned char 
;;		 -> buffer_tx(32), 
;;  size            1   12[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  payload         1   15[BANK0 ] PTR unsigned char 
;;		 -> buffer_tx(32), 
;;  packetHeader    1   14[BANK0 ] PTR struct Packet
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
;; Hardware stack levels required when called: 6
;; This function calls:
;;		_internet_relay
;; This function is called by:
;;		_transport_udp_tx
;; This function uses a non-reentrant model
;;
psect	text12,local,class=CODE,delta=2,merge=1,group=1
	file	"F:/GitHub/Graduation-Project/Moduls/Switch/libs/internet.c"
	line	29
global __ptext12
__ptext12:	;psect for function _internet_tx
psect	text12
	file	"F:/GitHub/Graduation-Project/Moduls/Switch/libs/internet.c"
	line	29
	
_internet_tx:	
;incstack = 0
	callstack 0
; Regs used in _internet_tx: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(internet_tx@payload)
	line	32
	
l2675:	
	movf	(internet_tx@payload),w
	movwf	(??_internet_tx+0)+0
	movf	(??_internet_tx+0)+0,w
	movwf	(internet_tx@packetHeader)
	line	33
	
l2677:	
	movlw	low(020h)
	movwf	(??_internet_tx+0)+0
	movf	(internet_tx@packetHeader),w
	movwf	fsr0
	movf	(??_internet_tx+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	34
	
l2679:	
	movf	(_node),w
	movwf	(??_internet_tx+0)+0
	movf	(internet_tx@packetHeader),w
	addlw	02h
	movwf	fsr0
	movf	(??_internet_tx+0)+0,w
	movwf	indf
	line	35
	
l2681:	
	movf	(internet_tx@payload),w
	movwf	(internet_relay@payload)
	movlw	(0x0)
	movwf	(internet_relay@payload+1)
	movf	(internet_tx@size),w
	movwf	(??_internet_tx+0)+0
	movf	(??_internet_tx+0)+0,w
	movwf	(internet_relay@size)
	fcall	_internet_relay
	line	36
	
l251:	
	return
	callstack 0
GLOBAL	__end_of_internet_tx
	__end_of_internet_tx:
	signat	_internet_tx,8313
	global	_internet_relay

;; *************** function _internet_relay *****************
;; Defined at:
;;		line 61 in file "F:/GitHub/Graduation-Project/Moduls/Switch/libs/internet.c"
;; Parameters:    Size  Location     Type
;;  payload         2    3[BANK0 ] PTR unsigned char 
;;		 -> buffer_rx(32), buffer_tx(32), 
;;  size            1    5[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  packetHeader    2   10[BANK0 ] PTR struct Packet
;;		 -> buffer_rx(32), buffer_tx(32), 
;;  dstMask         1    9[BANK0 ] unsigned char 
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
;;      Params:         0       3       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0       9       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 5
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
psect	text13,local,class=CODE,delta=2,merge=1,group=1
	line	61
global __ptext13
__ptext13:	;psect for function _internet_relay
psect	text13
	file	"F:/GitHub/Graduation-Project/Moduls/Switch/libs/internet.c"
	line	61
	
_internet_relay:	
;incstack = 0
	callstack 0
; Regs used in _internet_relay: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	64
	
l2619:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
		movf	(internet_relay@payload),w
	movwf	(internet_relay@packetHeader)
movf	(internet_relay@payload+1),w
movwf	(internet_relay@packetHeader+1)

	line	65
	movf	((_node)),w
	btfss	status,2
	goto	u1381
	goto	u1380
u1381:
	goto	l2623
u1380:
	goto	l265
	line	72
	
l2623:	
	movf	(internet_relay@packetHeader),w
	addlw	low(03h)
	movwf	(??_internet_relay+0)+0
	movf	(internet_relay@packetHeader+1),w
	skipnc
	addlw	1
	addlw	high(03h)
	movwf	1+(??_internet_relay+0)+0
	movf	0+(??_internet_relay+0)+0,w
	movwf	fsr0
	bsf	status,7
	btfss	1+(??_internet_relay+0)+0,0
	bcf	status,7
	movf	indf,w
	fcall	_internet_calculateMask
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_internet_relay+2)+0
	movf	(??_internet_relay+2)+0,w
	movwf	(internet_relay@dstMask)
	line	74
	
l2625:	
	movf	(internet_relay@dstMask),w
	subwf	0+(_node)+01h,w
	skipnc
	goto	u1391
	goto	u1390
u1391:
	goto	l2655
u1390:
	
l2627:	
	movf	(internet_relay@packetHeader),w
	addlw	low(03h)
	movwf	(??_internet_relay+0)+0
	movf	(internet_relay@packetHeader+1),w
	skipnc
	addlw	1
	addlw	high(03h)
	movwf	1+(??_internet_relay+0)+0
	movf	0+(??_internet_relay+0)+0,w
	movwf	fsr0
	bsf	status,7
	btfss	1+(??_internet_relay+0)+0,0
	bcf	status,7
	movf	indf,w
	fcall	_internet_hasChild
	xorlw	0
	skipnz
	goto	u1401
	goto	u1400
u1401:
	goto	l2655
u1400:
	line	76
	
l2629:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(internet_relay@packetHeader),w
	addlw	low(03h)
	movwf	(??_internet_relay+0)+0
	movf	(internet_relay@packetHeader+1),w
	skipnc
	addlw	1
	addlw	high(03h)
	movwf	1+(??_internet_relay+0)+0
	movf	0+(??_internet_relay+0)+0,w
	movwf	fsr0
	bsf	status,7
	btfss	1+(??_internet_relay+0)+0,0
	bcf	status,7
	movf	indf,w
	andwf	0+(_node)+02h,w
	btfsc	status,2
	goto	u1411
	goto	u1410
u1411:
	goto	l2643
u1410:
	line	79
	
l2631:	
	movf	0+(_node)+04h,w
	movwf	(??_internet_relay+0)+0
	movf	(??_internet_relay+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_networkInfo)^080h
	line	80
	
l2633:	
	movlw	(low(_networkInfo|((0x0)<<8))&0ffh)
	movwf	(RF24_openReadingPipe@address)
	movlw	(0x0)
	movwf	(RF24_openReadingPipe@address+1)
	movlw	low(0)
	fcall	_RF24_openReadingPipe
	line	81
	
l2635:	
	movlw	(low(_networkInfo|((0x0)<<8)))&0ffh
	fcall	_RF24_openWritingPipe
	line	82
	
l2637:	
	fcall	_RF24_stopListening
	line	83
	
l2639:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
		movf	(internet_relay@payload),w
	movwf	(RF24_write@buf)
movf	(internet_relay@payload+1),w
movwf	(RF24_write@buf+1)

	movf	(internet_relay@size),w
	movwf	(??_internet_relay+0)+0
	movf	(??_internet_relay+0)+0,w
	movwf	(RF24_write@len)
	fcall	_RF24_write
	line	84
	
l2641:	
	movlw	(low((((_BASE_PIPE)-__stringbase)|8000h)))&0ffh
	movwf	(RF24_openReadingPipe@address)
	movlw	80h
	movwf	(RF24_openReadingPipe@address+1)
	movlw	low(0)
	fcall	_RF24_openReadingPipe
	line	85
	goto	l2673
	line	89
	
l2643:	
	movf	0+(_node)+03h,w
	movwf	(??_internet_relay+0)+0
	movf	(??_internet_relay+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_networkInfo)^080h
	line	90
	
l2645:	
	movlw	(low(_networkInfo|((0x0)<<8))&0ffh)
	movwf	(RF24_openReadingPipe@address)
	movlw	(0x0)
	movwf	(RF24_openReadingPipe@address+1)
	movlw	low(0)
	fcall	_RF24_openReadingPipe
	line	91
	
l2647:	
	movlw	(low(_networkInfo|((0x0)<<8)))&0ffh
	fcall	_RF24_openWritingPipe
	line	92
	
l2649:	
	fcall	_RF24_stopListening
	line	93
	
l2651:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
		movf	(internet_relay@payload),w
	movwf	(RF24_write@buf)
movf	(internet_relay@payload+1),w
movwf	(RF24_write@buf+1)

	movf	(internet_relay@size),w
	movwf	(??_internet_relay+0)+0
	movf	(??_internet_relay+0)+0,w
	movwf	(RF24_write@len)
	fcall	_RF24_write
	line	94
	
l2653:	
	movlw	(low((((_BASE_PIPE)-__stringbase)|8000h)))&0ffh
	movwf	(RF24_openReadingPipe@address)
	movlw	80h
	movwf	(RF24_openReadingPipe@address+1)
	movlw	low(0)
	fcall	_RF24_openReadingPipe
	goto	l2673
	line	100
	
l2655:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_node),w
	movwf	(??_internet_relay+0)+0
	movf	(??_internet_relay+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_networkInfo)^080h
	line	101
	
l2657:	
	movlw	(low(_networkInfo|((0x0)<<8))&0ffh)
	movwf	(RF24_openReadingPipe@address)
	movlw	(0x0)
	movwf	(RF24_openReadingPipe@address+1)
	movlw	low(0)
	fcall	_RF24_openReadingPipe
	line	102
	
l2659:	
	movlw	(low(_networkInfo|((0x0)<<8)))&0ffh
	fcall	_RF24_openWritingPipe
	line	103
	
l2661:	
	fcall	_RF24_stopListening
	line	104
	
l2663:	
	movlw	(low((((STR_2)-__stringbase)|8000h)))&0ffh
	movwf	(__$_logline_str@string)
	movlw	80h
	movwf	(__$_logline_str@string+1)
	fcall	__$_logline_str
	line	105
	
l2665:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
		movf	(internet_relay@payload),w
	movwf	(__$_logline_str@string)
movf	(internet_relay@payload+1),w
movwf	(__$_logline_str@string+1)

	fcall	__$_logline_str
	
l2667:	
	movlw	low(0Ah)
	fcall	_Serial_write
	line	106
	
l2669:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
		movf	(internet_relay@payload),w
	movwf	(RF24_write@buf)
movf	(internet_relay@payload+1),w
movwf	(RF24_write@buf+1)

	movf	(internet_relay@size),w
	movwf	(??_internet_relay+0)+0
	movf	(??_internet_relay+0)+0,w
	movwf	(RF24_write@len)
	fcall	_RF24_write
	line	108
	
l2671:	
	movlw	(low((((_BASE_PIPE)-__stringbase)|8000h)))&0ffh
	movwf	(RF24_openReadingPipe@address)
	movlw	80h
	movwf	(RF24_openReadingPipe@address+1)
	movlw	low(0)
	fcall	_RF24_openReadingPipe
	line	110
	
l2673:	
	fcall	_RF24_startListening
	line	111
	
l265:	
	return
	callstack 0
GLOBAL	__end_of_internet_relay
	__end_of_internet_relay:
	signat	_internet_relay,8313
	global	_internet_hasChild

;; *************** function _internet_hasChild *****************
;; Defined at:
;;		line 133 in file "F:/GitHub/Graduation-Project/Moduls/Switch/libs/internet.c"
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
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_internet_relay
;; This function uses a non-reentrant model
;;
psect	text14,local,class=CODE,delta=2,merge=1,group=1
	line	133
global __ptext14
__ptext14:	;psect for function _internet_hasChild
psect	text14
	file	"F:/GitHub/Graduation-Project/Moduls/Switch/libs/internet.c"
	line	133
	
_internet_hasChild:	
;incstack = 0
	callstack 3
; Regs used in _internet_hasChild: [wreg+status,2+status,0]
	movwf	(internet_hasChild@address)
	line	135
	
l2583:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_node),w
	andwf	0+(_node)+01h,w
	movwf	(??_internet_hasChild+0)+0
	movf	0+(_node)+01h,w
	andwf	(internet_hasChild@address),w
	xorwf	0+(??_internet_hasChild+0)+0,w
	skipnz
	goto	u1331
	goto	u1330
u1331:
	movlw	1
	goto	u1340
u1330:
	movlw	0
u1340:
	line	136
	
l281:	
	return
	callstack 0
GLOBAL	__end_of_internet_hasChild
	__end_of_internet_hasChild:
	signat	_internet_hasChild,4217
	global	_internet_calculateMask

;; *************** function _internet_calculateMask *****************
;; Defined at:
;;		line 112 in file "F:/GitHub/Graduation-Project/Moduls/Switch/libs/internet.c"
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
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_internet_relay
;;		_internet_setAddress
;; This function uses a non-reentrant model
;;
psect	text15,local,class=CODE,delta=2,merge=1,group=1
	line	112
global __ptext15
__ptext15:	;psect for function _internet_calculateMask
psect	text15
	file	"F:/GitHub/Graduation-Project/Moduls/Switch/libs/internet.c"
	line	112
	
_internet_calculateMask:	
;incstack = 0
	callstack 3
; Regs used in _internet_calculateMask: [wreg+status,2+status,0]
	movwf	(internet_calculateMask@address)
	line	114
	
l2571:	
	clrf	(internet_calculateMask@mask)
	line	115
	goto	l2577
	line	117
	
l2573:	
	setc
	rlf	(internet_calculateMask@mask),f
	line	118
	
l2575:	
	clrc
	rrf	(internet_calculateMask@address),f

	line	115
	
l2577:	
	movlw	low(02h)
	subwf	(internet_calculateMask@address),w
	skipnc
	goto	u1321
	goto	u1320
u1321:
	goto	l2573
u1320:
	line	120
	
l2579:	
	movf	(internet_calculateMask@mask),w
	line	121
	
l275:	
	return
	callstack 0
GLOBAL	__end_of_internet_calculateMask
	__end_of_internet_calculateMask:
	signat	_internet_calculateMask,4217
	global	__$_logline_str

;; *************** function __$_logline_str *****************
;; Defined at:
;;		line 5 in file "F:/GitHub/Graduation-Project/Moduls/Switch/libs/logline.c"
;; Parameters:    Size  Location     Type
;;  string          2    3[COMMON] PTR unsigned char 
;;		 -> STR_20(23), STR_19(3), STR_18(6), STR_17(6), 
;;		 -> STR_16(6), STR_15(6), STR_14(6), STR_13(6), 
;;		 -> STR_12(11), STR_11(7), STR_10(9), STR_9(6), 
;;		 -> STR_8(11), STR_7(9), STR_6(10), STR_5(6), 
;;		 -> STR_4(7), STR_3(23), STR_2(10), buffer_rx(32), 
;;		 -> buffer_tx(32), STR_1(7), 
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
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_Serial_write
;; This function is called by:
;;		_main
;;		_internet_relay
;; This function uses a non-reentrant model
;;
psect	text16,local,class=CODE,delta=2,merge=1,group=1
	file	"F:/GitHub/Graduation-Project/Moduls/Switch/libs/logline.c"
	line	5
global __ptext16
__ptext16:	;psect for function __$_logline_str
psect	text16
	file	"F:/GitHub/Graduation-Project/Moduls/Switch/libs/logline.c"
	line	5
	
__$_logline_str:	
;incstack = 0
	callstack 2
; Regs used in __$_logline_str: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	7
	
l2553:	
	movlw	low(064h)
	movwf	(??__$_logline_str+0)+0
	movf	(??__$_logline_str+0)+0,w
	movwf	(__$_logline_str@limit)
	line	8
	goto	l2559
	line	10
	
l2555:	
	movf	(__$_logline_str@string+1),w
	movwf	btemp+1
	movf	(__$_logline_str@string),w
	movwf	fsr0
	fcall	stringtab
	fcall	_Serial_write
	line	11
	
l2557:	
	movlw	01h
	addwf	(__$_logline_str@string),f
	skipnc
	incf	(__$_logline_str@string+1),f
	movlw	0
	addwf	(__$_logline_str@string+1),f
	line	8
	
l2559:	
	movf	(__$_logline_str@string+1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	btemp+1
	movf	(__$_logline_str@string),w
	movwf	fsr0
	fcall	stringtab
	xorlw	0
	skipnz
	goto	u1281
	goto	u1280
u1281:
	goto	l675
u1280:
	
l2561:	
	movlw	01h
	subwf	(__$_logline_str@limit),f
		incf	(((__$_logline_str@limit))),w
	btfss	status,2
	goto	u1291
	goto	u1290
u1291:
	goto	l2555
u1290:
	line	13
	
l675:	
	return
	callstack 0
GLOBAL	__end_of__$_logline_str
	__end_of__$_logline_str:
	signat	__$_logline_str,4217
	global	_Serial_write

;; *************** function _Serial_write *****************
;; Defined at:
;;		line 36 in file "F:/GitHub/Graduation-Project/Moduls/Switch/libs/Serial.c"
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
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_internet_relay
;;		__$_logline_str
;; This function uses a non-reentrant model
;;
psect	text17,local,class=CODE,delta=2,merge=1,group=1
	file	"F:/GitHub/Graduation-Project/Moduls/Switch/libs/Serial.c"
	line	36
global __ptext17
__ptext17:	;psect for function _Serial_write
psect	text17
	file	"F:/GitHub/Graduation-Project/Moduls/Switch/libs/Serial.c"
	line	36
	
_Serial_write:	
;incstack = 0
	callstack 2
; Regs used in _Serial_write: [wreg]
	movwf	(Serial_write@data)
	line	38
	
l2515:	
	line	39
	
l656:	
	line	38
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(1217/8)^080h,(1217)&7	;volatile
	goto	u1261
	goto	u1260
u1261:
	goto	l656
u1260:
	line	40
	
l2517:	
	movf	(Serial_write@data),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(25)	;volatile
	line	41
	
l659:	
	return
	callstack 0
GLOBAL	__end_of_Serial_write
	__end_of_Serial_write:
	signat	_Serial_write,4217
	global	_RF24_write

;; *************** function _RF24_write *****************
;; Defined at:
;;		line 198 in file "F:/GitHub/Graduation-Project/Moduls/Switch/libs/rf24.c"
;; Parameters:    Size  Location     Type
;;  buf             2    0[BANK0 ] PTR void 
;;		 -> buffer_rx(32), buffer_tx(32), 
;;  len             1    2[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1       3       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		_RF24_flush_tx
;;		_RF24_get_status
;;		_RF24_write_register
;;		_SPI_exchangeByte
;; This function is called by:
;;		_internet_relay
;; This function uses a non-reentrant model
;;
psect	text18,local,class=CODE,delta=2,merge=1,group=1
	file	"F:/GitHub/Graduation-Project/Moduls/Switch/libs/rf24.c"
	line	198
global __ptext18
__ptext18:	;psect for function _RF24_write
psect	text18
	file	"F:/GitHub/Graduation-Project/Moduls/Switch/libs/rf24.c"
	line	198
	
_RF24_write:	
;incstack = 0
	callstack 0
; Regs used in _RF24_write: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	202
	
l2595:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7	;volatile
	line	203
	
l2597:	
	movlw	low(0A0h)
	fcall	_SPI_exchangeByte
	movwf	(??_RF24_write+0)+0
	movf	(??_RF24_write+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_RF24_attr_status)
	line	204
	goto	l2603
	line	206
	
l2599:	
	movf	(RF24_write@buf),w
	movwf	fsr0
	bsf	status,7
	btfss	(RF24_write@buf+1),0
	bcf	status,7
	movf	indf,w
	fcall	_SPI_exchangeByte
	
l2601:	
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(RF24_write@buf),f
	skipnc
	incf	(RF24_write@buf+1),f
	movlw	0
	addwf	(RF24_write@buf+1),f
	line	204
	
l2603:	
	movlw	01h
	subwf	(RF24_write@len),f
		incf	(((RF24_write@len))),w
	btfss	status,2
	goto	u1351
	goto	u1350
u1351:
	goto	l2599
u1350:
	
l403:	
	line	208
	bsf	(67/8),(67)&7	;volatile
	line	210
	bsf	(66/8),(66)&7	;volatile
	line	211
	
l2605:	
	fcall	_RF24_get_status
	andlw	030h
	btfsc	status,2
	goto	u1361
	goto	u1360
u1361:
	goto	l2605
u1360:
	
l406:	
	line	216
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(66/8),(66)&7	;volatile
	line	217
	
l2607:	
	movlw	low(070h)
	movwf	(??_RF24_write+0)+0
	movf	(??_RF24_write+0)+0,w
	movwf	(RF24_write_register@value)
	movlw	low(07h)
	fcall	_RF24_write_register
	line	220
	
l2609:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(_RF24_attr_status),(4)&7
	goto	u1371
	goto	u1370
u1371:
	goto	l408
u1370:
	line	222
	
l2611:	
	fcall	_RF24_flush_tx
	line	226
	
l408:	
	return
	callstack 0
GLOBAL	__end_of_RF24_write
	__end_of_RF24_write:
	signat	_RF24_write,8313
	global	_RF24_stopListening

;; *************** function _RF24_stopListening *****************
;; Defined at:
;;		line 156 in file "F:/GitHub/Graduation-Project/Moduls/Switch/libs/rf24.c"
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
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_RF24_read_register
;;		_RF24_write_register
;; This function is called by:
;;		_internet_relay
;; This function uses a non-reentrant model
;;
psect	text19,local,class=CODE,delta=2,merge=1,group=1
	line	156
global __ptext19
__ptext19:	;psect for function _RF24_stopListening
psect	text19
	file	"F:/GitHub/Graduation-Project/Moduls/Switch/libs/rf24.c"
	line	156
	
_RF24_stopListening:	
;incstack = 0
	callstack 1
; Regs used in _RF24_stopListening: [wreg+status,2+status,0+pclath+cstack]
	line	158
	
l2589:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(66/8),(66)&7	;volatile
	line	165
	
l2591:	
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
	
l2593:	
	asmopt push
asmopt off
	movlw	173
movwf	((??_RF24_stopListening+0)+0)
	u1647:
decfsz	(??_RF24_stopListening+0)+0,f
	goto	u1647
asmopt pop

	line	168
	
l386:	
	return
	callstack 0
GLOBAL	__end_of_RF24_stopListening
	__end_of_RF24_stopListening:
	signat	_RF24_stopListening,89
	global	_RF24_openWritingPipe

;; *************** function _RF24_openWritingPipe *****************
;; Defined at:
;;		line 457 in file "F:/GitHub/Graduation-Project/Moduls/Switch/libs/rf24.c"
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
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_RF24_write_n_register
;; This function is called by:
;;		_internet_relay
;; This function uses a non-reentrant model
;;
psect	text20,local,class=CODE,delta=2,merge=1,group=1
	line	457
global __ptext20
__ptext20:	;psect for function _RF24_openWritingPipe
psect	text20
	file	"F:/GitHub/Graduation-Project/Moduls/Switch/libs/rf24.c"
	line	457
	
_RF24_openWritingPipe:	
;incstack = 0
	callstack 1
; Regs used in _RF24_openWritingPipe: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	movwf	(RF24_openWritingPipe@address)
	line	459
	
l2587:	
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
	
l497:	
	return
	callstack 0
GLOBAL	__end_of_RF24_openWritingPipe
	__end_of_RF24_openWritingPipe:
	signat	_RF24_openWritingPipe,4217
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
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_transport_udp_process
;;		_internet_setNetworkPipe
;; This function uses a non-reentrant model
;;
psect	text21,local,class=CODE,delta=2,merge=1,group=3
	file	"C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\memcpy.c"
	line	27
global __ptext21
__ptext21:	;psect for function _memcpy
psect	text21
	file	"C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\memcpy.c"
	line	27
	
_memcpy:	
;incstack = 0
	callstack 5
; Regs used in _memcpy: [wreg-fsr0h+status,2+status,0]
	movwf	(memcpy@d1)
	line	34
	
l2695:	
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
	goto	l1166
	line	37
	
l2697:	
	movf	(memcpy@s),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_memcpy+0)+0
	movf	(??_memcpy+0)+0,w
	movwf	(memcpy@tmp)
	
l2699:	
	movlw	low(01h)
	movwf	(??_memcpy+0)+0
	movf	(??_memcpy+0)+0,w
	addwf	(memcpy@s),f
	line	38
	
l2701:	
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
	
l1166:	
	line	36
	movlw	01h
	subwf	(memcpy@n),f
	movlw	0
	skipc
	decf	(memcpy@n+1),f
	subwf	(memcpy@n+1),f
		incf	(((memcpy@n))),w
	skipz
	goto	u1421
	incf	(((memcpy@n+1))),w
	btfss	status,2
	goto	u1421
	goto	u1420
u1421:
	goto	l2697
u1420:
	line	41
	
l1169:	
	return
	callstack 0
GLOBAL	__end_of_memcpy
	__end_of_memcpy:
	signat	_memcpy,12409
	global	_RF24_read

;; *************** function _RF24_read *****************
;; Defined at:
;;		line 291 in file "F:/GitHub/Graduation-Project/Moduls/Switch/libs/rf24.c"
;; Parameters:    Size  Location     Type
;;  buf             1    wreg     PTR void 
;;		 -> buffer_rx(32), 
;;  len             1    9[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  buf             1    0[BANK0 ] PTR void 
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
;;      Locals:         0       1       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       1       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_RF24_read_n_register
;;		_RF24_write_register
;; This function is called by:
;;		_internet_process
;; This function uses a non-reentrant model
;;
psect	text22,local,class=CODE,delta=2,merge=1,group=1
	file	"F:/GitHub/Graduation-Project/Moduls/Switch/libs/rf24.c"
	line	291
global __ptext22
__ptext22:	;psect for function _RF24_read
psect	text22
	file	"F:/GitHub/Graduation-Project/Moduls/Switch/libs/rf24.c"
	line	291
	
_RF24_read:	
;incstack = 0
	callstack 3
; Regs used in _RF24_read: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(RF24_read@buf)
	line	295
	
l2801:	
	movf	(RF24_read@buf),w
	movwf	(RF24_read_n_register@buf)
	movlw	(0x1)
	movwf	(RF24_read_n_register@buf+1)
	movf	(RF24_read@len),w
	movwf	(??_RF24_read+0)+0
	movf	(??_RF24_read+0)+0,w
	movwf	(RF24_read_n_register@len)
	movlw	low(061h)
	fcall	_RF24_read_n_register
	line	297
	
l2803:	
	movlw	low(040h)
	movwf	(??_RF24_read+0)+0
	movf	(??_RF24_read+0)+0,w
	movwf	(RF24_write_register@value)
	movlw	low(07h)
	fcall	_RF24_write_register
	line	298
	
l432:	
	return
	callstack 0
GLOBAL	__end_of_RF24_read
	__end_of_RF24_read:
	signat	_RF24_read,8313
	global	_RF24_read_n_register

;; *************** function _RF24_read_n_register *****************
;; Defined at:
;;		line 7 in file "F:/GitHub/Graduation-Project/Moduls/Switch/libs/rf24.c"
;; Parameters:    Size  Location     Type
;;  mnemonic_add    1    wreg     unsigned char 
;;  buf             2    3[COMMON] PTR unsigned char 
;;		 -> RF24_printDetails@buffer(5), buffer_rx(32), 
;;  len             1    5[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  mnemonic_add    1    7[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
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
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_SPI_exchangeByte
;; This function is called by:
;;		_RF24_read
;; This function uses a non-reentrant model
;;
psect	text23,local,class=CODE,delta=2,merge=1,group=1
	line	7
global __ptext23
__ptext23:	;psect for function _RF24_read_n_register
psect	text23
	file	"F:/GitHub/Graduation-Project/Moduls/Switch/libs/rf24.c"
	line	7
	
_RF24_read_n_register:	
;incstack = 0
	callstack 3
; Regs used in _RF24_read_n_register: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	movwf	(RF24_read_n_register@mnemonic_addr)
	line	9
	
l2749:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7	;volatile
	line	10
	
l2751:	
	movf	(RF24_read_n_register@mnemonic_addr),w
	fcall	_SPI_exchangeByte
	movwf	(??_RF24_read_n_register+0)+0
	movf	(??_RF24_read_n_register+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_RF24_attr_status)
	line	11
	goto	l2757
	line	13
	
l2753:	
	movlw	low(0FFh)
	fcall	_SPI_exchangeByte
	movwf	(??_RF24_read_n_register+0)+0
	movf	(RF24_read_n_register@buf),w
	movwf	fsr0
	bsf	status,7
	btfss	(RF24_read_n_register@buf+1),0
	bcf	status,7
	movf	(??_RF24_read_n_register+0)+0,w
	movwf	indf
	
l2755:	
	movlw	01h
	addwf	(RF24_read_n_register@buf),f
	skipnc
	incf	(RF24_read_n_register@buf+1),f
	movlw	0
	addwf	(RF24_read_n_register@buf+1),f
	line	11
	
l2757:	
	movlw	01h
	subwf	(RF24_read_n_register@len),f
		incf	(((RF24_read_n_register@len))),w
	btfss	status,2
	goto	u1471
	goto	u1470
u1471:
	goto	l2753
u1470:
	
l350:	
	line	15
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(67/8),(67)&7	;volatile
	line	16
	
l351:	
	return
	callstack 0
GLOBAL	__end_of_RF24_read_n_register
	__end_of_RF24_read_n_register:
	signat	_RF24_read_n_register,12409
	global	_RF24_getDynamicPayloadSize

;; *************** function _RF24_getDynamicPayloadSize *****************
;; Defined at:
;;		line 264 in file "F:/GitHub/Graduation-Project/Moduls/Switch/libs/rf24.c"
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
;; Hardware stack levels required when called: 4
;; This function calls:
;;		_RF24_flush_rx
;;		_RF24_read_register
;; This function is called by:
;;		_internet_process
;; This function uses a non-reentrant model
;;
psect	text24,local,class=CODE,delta=2,merge=1,group=1
	line	264
global __ptext24
__ptext24:	;psect for function _RF24_getDynamicPayloadSize
psect	text24
	file	"F:/GitHub/Graduation-Project/Moduls/Switch/libs/rf24.c"
	line	264
	
_RF24_getDynamicPayloadSize:	
;incstack = 0
	callstack 2
; Regs used in _RF24_getDynamicPayloadSize: [wreg+status,2+status,0+pclath+cstack]
	line	266
	
l2785:	
	movlw	low(060h)
	fcall	_RF24_read_register
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_RF24_getDynamicPayloadSize+0)+0
	movf	(??_RF24_getDynamicPayloadSize+0)+0,w
	movwf	(RF24_getDynamicPayloadSize@result)
	line	268
	
l2787:	
	movlw	low(021h)
	subwf	(RF24_getDynamicPayloadSize@result),w
	skipc
	goto	u1501
	goto	u1500
u1501:
	goto	l2797
u1500:
	line	270
	
l2789:	
	fcall	_RF24_flush_rx
	line	271
	
l2791:	
	asmopt push
asmopt off
movlw	11
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_RF24_getDynamicPayloadSize+0)+0+1)
	movlw	97
movwf	((??_RF24_getDynamicPayloadSize+0)+0)
	u1657:
decfsz	((??_RF24_getDynamicPayloadSize+0)+0),f
	goto	u1657
	decfsz	((??_RF24_getDynamicPayloadSize+0)+0+1),f
	goto	u1657
	nop2
asmopt pop

	line	272
	
l2793:	
	movlw	low(0)
	goto	l425
	line	274
	
l2797:	
	movf	(RF24_getDynamicPayloadSize@result),w
	line	275
	
l425:	
	return
	callstack 0
GLOBAL	__end_of_RF24_getDynamicPayloadSize
	__end_of_RF24_getDynamicPayloadSize:
	signat	_RF24_getDynamicPayloadSize,89
	global	_RF24_available

;; *************** function _RF24_available *****************
;; Defined at:
;;		line 277 in file "F:/GitHub/Graduation-Project/Moduls/Switch/libs/rf24.c"
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
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_RF24_get_status
;; This function is called by:
;;		_internet_process
;; This function uses a non-reentrant model
;;
psect	text25,local,class=CODE,delta=2,merge=1,group=1
	line	277
global __ptext25
__ptext25:	;psect for function _RF24_available
psect	text25
	file	"F:/GitHub/Graduation-Project/Moduls/Switch/libs/rf24.c"
	line	277
	
_RF24_available:	
;incstack = 0
	callstack 3
; Regs used in _RF24_available: [wreg+status,2+status,0+pclath+cstack]
	line	280
	
l2825:	
	fcall	_RF24_get_status
	movwf	(??_RF24_available+0)+0
	clrc
	rrf	(??_RF24_available+0)+0,w
	andlw	07h
	movwf	(??_RF24_available+1)+0
	movf	(??_RF24_available+1)+0,w
	movwf	(RF24_available@pipe)
	line	281
	
l2827:	
	movlw	low(06h)
	subwf	(RF24_available@pipe),w
	skipc
	goto	u1521
	goto	u1520
u1521:
	goto	l2833
u1520:
	line	282
	
l2829:	
	movlw	low(0)
	goto	l429
	line	288
	
l2833:	
	movlw	low(01h)
	line	289
	
l429:	
	return
	callstack 0
GLOBAL	__end_of_RF24_available
	__end_of_RF24_available:
	signat	_RF24_available,89
	global	_RF24_get_status

;; *************** function _RF24_get_status *****************
;; Defined at:
;;		line 51 in file "F:/GitHub/Graduation-Project/Moduls/Switch/libs/rf24.c"
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
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_SPI_exchangeByte
;; This function is called by:
;;		_RF24_write
;;		_RF24_available
;; This function uses a non-reentrant model
;;
psect	text26,local,class=CODE,delta=2,merge=1,group=1
	line	51
global __ptext26
__ptext26:	;psect for function _RF24_get_status
psect	text26
	file	"F:/GitHub/Graduation-Project/Moduls/Switch/libs/rf24.c"
	line	51
	
_RF24_get_status:	
;incstack = 0
	callstack 1
; Regs used in _RF24_get_status: [wreg+pclath+cstack]
	line	53
	
l2541:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7	;volatile
	line	54
	
l2543:	
	movlw	low(0FFh)
	fcall	_SPI_exchangeByte
	movwf	(??_RF24_get_status+0)+0
	movf	(??_RF24_get_status+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_RF24_attr_status)
	line	55
	
l2545:	
	bsf	(67/8),(67)&7	;volatile
	line	56
	
l2547:	
	movf	(_RF24_attr_status),w
	line	57
	
l366:	
	return
	callstack 0
GLOBAL	__end_of_RF24_get_status
	__end_of_RF24_get_status:
	signat	_RF24_get_status,89
	global	_Serial_begin

;; *************** function _Serial_begin *****************
;; Defined at:
;;		line 2 in file "F:/GitHub/Graduation-Project/Moduls/Switch/libs/Serial.c"
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
;; Hardware stack levels required when called: 2
;; This function calls:
;;		___aldiv
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text27,local,class=CODE,delta=2,merge=1,group=1
	file	"F:/GitHub/Graduation-Project/Moduls/Switch/libs/Serial.c"
	line	2
global __ptext27
__ptext27:	;psect for function _Serial_begin
psect	text27
	file	"F:/GitHub/Graduation-Project/Moduls/Switch/libs/Serial.c"
	line	2
	
_Serial_begin:	
;incstack = 0
	callstack 5
; Regs used in _Serial_begin: [wreg+status,2+status,0+pclath+cstack]
	line	5
	
l2321:	
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
u1115:
	clrc
	rlf	(??_Serial_begin+0)+0,f
	rlf	(??_Serial_begin+0)+1,f
	rlf	(??_Serial_begin+0)+2,f
	rlf	(??_Serial_begin+0)+3,f
u1110:
	addlw	-1
	skipz
	goto	u1115
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
u1125:
	clrc
	rlf	(??_Serial_begin+4)+0,f
	rlf	(??_Serial_begin+4)+1,f
	rlf	(??_Serial_begin+4)+2,f
	rlf	(??_Serial_begin+4)+3,f
u1120:
	addlw	-1
	skipz
	goto	u1125
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
	goto	u1131
	goto	u1132
u1131:
	subwf	(??_Serial_begin+8)+1,f
u1132:
	movf	2+(??_Serial_begin+4)+0,w
	skipc
	incfsz	2+(??_Serial_begin+4)+0,w
	goto	u1133
	goto	u1134
u1133:
	subwf	(??_Serial_begin+8)+2,f
u1134:
	movf	3+(??_Serial_begin+4)+0,w
	skipc
	incfsz	3+(??_Serial_begin+4)+0,w
	goto	u1135
	goto	u1136
u1135:
	subwf	(??_Serial_begin+8)+3,f
u1136:

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
	
l2323:	
	movlw	01h
	subwf	(Serial_begin@x+1),w
	movlw	0
	skipnz
	subwf	(Serial_begin@x),w
	skipc
	goto	u1141
	goto	u1140
u1141:
	goto	l2329
u1140:
	line	8
	
l2325:	
	movf	(Serial_begin@baudrate),w
	movwf	(??_Serial_begin+0)+0
	movf	(Serial_begin@baudrate+1),w
	movwf	((??_Serial_begin+0)+0+1)
	movf	(Serial_begin@baudrate+2),w
	movwf	((??_Serial_begin+0)+0+2)
	movf	(Serial_begin@baudrate+3),w
	movwf	((??_Serial_begin+0)+0+3)
	movlw	04h
u1155:
	clrc
	rlf	(??_Serial_begin+0)+0,f
	rlf	(??_Serial_begin+0)+1,f
	rlf	(??_Serial_begin+0)+2,f
	rlf	(??_Serial_begin+0)+3,f
u1150:
	addlw	-1
	skipz
	goto	u1155
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
u1165:
	clrc
	rlf	(??_Serial_begin+4)+0,f
	rlf	(??_Serial_begin+4)+1,f
	rlf	(??_Serial_begin+4)+2,f
	rlf	(??_Serial_begin+4)+3,f
u1160:
	addlw	-1
	skipz
	goto	u1165
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
	goto	u1171
	goto	u1172
u1171:
	subwf	(??_Serial_begin+8)+1,f
u1172:
	movf	2+(??_Serial_begin+4)+0,w
	skipc
	incfsz	2+(??_Serial_begin+4)+0,w
	goto	u1173
	goto	u1174
u1173:
	subwf	(??_Serial_begin+8)+2,f
u1174:
	movf	3+(??_Serial_begin+4)+0,w
	skipc
	incfsz	3+(??_Serial_begin+4)+0,w
	goto	u1175
	goto	u1176
u1175:
	subwf	(??_Serial_begin+8)+3,f
u1176:

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
	
l2327:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1218/8)^080h,(1218)&7	;volatile
	line	11
	
l2329:	
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	subwf	(Serial_begin@x+1),w
	movlw	0
	skipnz
	subwf	(Serial_begin@x),w
	skipnc
	goto	u1181
	goto	u1180
u1181:
	goto	l644
u1180:
	line	13
	
l2331:	
	movf	(Serial_begin@x),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	line	14
	
l2333:	
	bcf	(1220/8)^080h,(1220)&7	;volatile
	line	15
	
l2335:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(199/8),(199)&7	;volatile
	line	16
	
l2337:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1087/8)^080h,(1087)&7	;volatile
	line	17
	
l2339:	
	bsf	(1086/8)^080h,(1086)&7	;volatile
	line	18
	
l2341:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(196/8),(196)&7	;volatile
	line	19
	
l2343:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1221/8)^080h,(1221)&7	;volatile
	line	23
	
l644:	
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
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Serial_begin
;; This function uses a non-reentrant model
;;
psect	text28,local,class=CODE,delta=2,merge=1,group=2
	file	"C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\aldiv.c"
	line	5
global __ptext28
__ptext28:	;psect for function ___aldiv
psect	text28
	file	"C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\aldiv.c"
	line	5
	
___aldiv:	
;incstack = 0
	callstack 5
; Regs used in ___aldiv: [wreg+status,2+status,0]
	line	13
	
l2279:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___aldiv@sign)
	line	14
	
l2281:	
	btfss	(___aldiv@divisor+3),7
	goto	u1011
	goto	u1010
u1011:
	goto	l780
u1010:
	line	15
	
l2283:	
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
	
l780:	
	line	18
	btfss	(___aldiv@dividend+3),7
	goto	u1021
	goto	u1020
u1021:
	goto	l2289
u1020:
	line	19
	
l2285:	
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
	
l2287:	
	movlw	low(01h)
	movwf	(??___aldiv+0)+0
	movf	(??___aldiv+0)+0,w
	xorwf	(___aldiv@sign),f
	line	22
	
l2289:	
	movlw	high highword(0)
	movwf	(___aldiv@quotient+3)
	movlw	low highword(0)
	movwf	(___aldiv@quotient+2)
	movlw	high(0)
	movwf	(___aldiv@quotient+1)
	movlw	low(0)
	movwf	(___aldiv@quotient)

	line	23
	
l2291:	
	movf	(___aldiv@divisor+3),w
	iorwf	(___aldiv@divisor+2),w
	iorwf	(___aldiv@divisor+1),w
	iorwf	(___aldiv@divisor),w
	skipnz
	goto	u1031
	goto	u1030
u1031:
	goto	l2311
u1030:
	line	24
	
l2293:	
	clrf	(___aldiv@counter)
	incf	(___aldiv@counter),f
	line	25
	goto	l2297
	line	26
	
l2295:	
	movlw	01h
	movwf	(??___aldiv+0)+0
u1045:
	clrc
	rlf	(___aldiv@divisor),f
	rlf	(___aldiv@divisor+1),f
	rlf	(___aldiv@divisor+2),f
	rlf	(___aldiv@divisor+3),f
	decfsz	(??___aldiv+0)+0
	goto	u1045
	line	27
	movlw	low(01h)
	movwf	(??___aldiv+0)+0
	movf	(??___aldiv+0)+0,w
	addwf	(___aldiv@counter),f
	line	25
	
l2297:	
	btfss	(___aldiv@divisor+3),(31)&7
	goto	u1051
	goto	u1050
u1051:
	goto	l2295
u1050:
	line	30
	
l2299:	
	movlw	01h
	movwf	(??___aldiv+0)+0
u1065:
	clrc
	rlf	(___aldiv@quotient),f
	rlf	(___aldiv@quotient+1),f
	rlf	(___aldiv@quotient+2),f
	rlf	(___aldiv@quotient+3),f
	decfsz	(??___aldiv+0)+0
	goto	u1065
	line	31
	
l2301:	
	movf	(___aldiv@divisor+3),w
	subwf	(___aldiv@dividend+3),w
	skipz
	goto	u1075
	movf	(___aldiv@divisor+2),w
	subwf	(___aldiv@dividend+2),w
	skipz
	goto	u1075
	movf	(___aldiv@divisor+1),w
	subwf	(___aldiv@dividend+1),w
	skipz
	goto	u1075
	movf	(___aldiv@divisor),w
	subwf	(___aldiv@dividend),w
u1075:
	skipc
	goto	u1071
	goto	u1070
u1071:
	goto	l2307
u1070:
	line	32
	
l2303:	
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
	
l2305:	
	bsf	(___aldiv@quotient)+(0/8),(0)&7
	line	35
	
l2307:	
	movlw	01h
u1085:
	clrc
	rrf	(___aldiv@divisor+3),f
	rrf	(___aldiv@divisor+2),f
	rrf	(___aldiv@divisor+1),f
	rrf	(___aldiv@divisor),f
	addlw	-1
	skipz
	goto	u1085

	line	36
	
l2309:	
	movlw	01h
	subwf	(___aldiv@counter),f
	btfss	status,2
	goto	u1091
	goto	u1090
u1091:
	goto	l2299
u1090:
	line	38
	
l2311:	
	movf	((___aldiv@sign)),w
	btfsc	status,2
	goto	u1101
	goto	u1100
u1101:
	goto	l2315
u1100:
	line	39
	
l2313:	
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
	
l2315:	
	movf	(___aldiv@quotient+3),w
	movwf	(?___aldiv+3)
	movf	(___aldiv@quotient+2),w
	movwf	(?___aldiv+2)
	movf	(___aldiv@quotient+1),w
	movwf	(?___aldiv+1)
	movf	(___aldiv@quotient),w
	movwf	(?___aldiv)

	line	41
	
l790:	
	return
	callstack 0
GLOBAL	__end_of___aldiv
	__end_of___aldiv:
	signat	___aldiv,8316
	global	_SPI_initialize

;; *************** function _SPI_initialize *****************
;; Defined at:
;;		line 3 in file "F:/GitHub/Graduation-Project/Moduls/Switch/libs/spi_master.c"
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
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text29,local,class=CODE,delta=2,merge=1,group=1
	file	"F:/GitHub/Graduation-Project/Moduls/Switch/libs/spi_master.c"
	line	3
global __ptext29
__ptext29:	;psect for function _SPI_initialize
psect	text29
	file	"F:/GitHub/Graduation-Project/Moduls/Switch/libs/spi_master.c"
	line	3
	
_SPI_initialize:	
;incstack = 0
	callstack 6
; Regs used in _SPI_initialize: [wreg+status,2]
	line	5
	
l2347:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(165/8),(165)&7	;volatile
	line	6
	
l2349:	
	movlw	low(040h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(148)^080h	;volatile
	line	7
	
l2351:	
	bcf	(1085/8)^080h,(1085)&7	;volatile
	line	8
	
l2353:	
	bsf	(1084/8)^080h,(1084)&7	;volatile
	line	9
	
l2355:	
	bcf	(1083/8)^080h,(1083)&7	;volatile
	line	10
	
l2357:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(20),w	;volatile
	andlw	0F0h
	iorlw	02h
	movwf	(20)	;volatile
	line	11
	
l535:	
	return
	callstack 0
GLOBAL	__end_of_SPI_initialize
	__end_of_SPI_initialize:
	signat	_SPI_initialize,89
	global	_RF24_isChipConnected

;; *************** function _RF24_isChipConnected *****************
;; Defined at:
;;		line 129 in file "F:/GitHub/Graduation-Project/Moduls/Switch/libs/rf24.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  width           1    7[COMMON] unsigned char 
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
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_RF24_read_register
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text30,local,class=CODE,delta=2,merge=1,group=1
	file	"F:/GitHub/Graduation-Project/Moduls/Switch/libs/rf24.c"
	line	129
global __ptext30
__ptext30:	;psect for function _RF24_isChipConnected
psect	text30
	file	"F:/GitHub/Graduation-Project/Moduls/Switch/libs/rf24.c"
	line	129
	
_RF24_isChipConnected:	
;incstack = 0
	callstack 4
; Regs used in _RF24_isChipConnected: [wreg+status,2+status,0+pclath+cstack]
	line	131
	
l2925:	
	movlw	low(03h)
	fcall	_RF24_read_register
	andlw	03h
	movwf	(??_RF24_isChipConnected+0)+0
	movf	(??_RF24_isChipConnected+0)+0,w
	movwf	(RF24_isChipConnected@width)
	line	132
	
l2927:	
	movf	((RF24_isChipConnected@width)),w
	btfsc	status,2
	goto	u1581
	goto	u1580
u1581:
	goto	l2935
u1580:
	
l2929:	
	movlw	low(04h)
	subwf	(RF24_isChipConnected@width),w
	skipnc
	goto	u1591
	goto	u1590
u1591:
	goto	l2935
u1590:
	line	134
	
l2931:	
	movlw	low(01h)
	goto	l380
	line	136
	
l2935:	
	movlw	low(0)
	line	137
	
l380:	
	return
	callstack 0
GLOBAL	__end_of_RF24_isChipConnected
	__end_of_RF24_isChipConnected:
	signat	_RF24_isChipConnected,89
	global	_Network_begin

;; *************** function _Network_begin *****************
;; Defined at:
;;		line 138 in file "F:/GitHub/Graduation-Project/Moduls/Switch/libs/internet.c"
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
;; Hardware stack levels required when called: 5
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
psect	text31,local,class=CODE,delta=2,merge=1,group=1
	file	"F:/GitHub/Graduation-Project/Moduls/Switch/libs/internet.c"
	line	138
global __ptext31
__ptext31:	;psect for function _Network_begin
psect	text31
	file	"F:/GitHub/Graduation-Project/Moduls/Switch/libs/internet.c"
	line	138
	
_Network_begin:	
;incstack = 0
	callstack 2
; Regs used in _Network_begin: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	141
	
l2899:	
	fcall	_RF24_begin
	line	142
	movlw	low(05h)
	fcall	_RF24_setAddressWidth
	line	143
	fcall	_RF24_enableDynamicPayloads
	line	144
	movlw	low(0)
	fcall	_RF24_setDataRate
	line	145
	movlw	low(01h)
	fcall	_RF24_setCRCLength
	line	146
	
l2901:	
	movlw	(low((((_BASE_PIPE)-__stringbase)|8000h)))&0ffh
	movwf	(RF24_openReadingPipe@address)
	movlw	80h
	movwf	(RF24_openReadingPipe@address+1)
	movlw	low(0)
	fcall	_RF24_openReadingPipe
	line	147
	
l2903:	
	movlw	low(01h)
	fcall	_RF24_setAutoAck
	line	148
	
l2905:	
	movlw	low(03h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_Network_begin+0)+0
	movf	(??_Network_begin+0)+0,w
	movwf	(?_RF24_getPALevel)
	fcall	_RF24_getPALevel
	line	149
	
l2907:	
	movlw	low(020h)
	fcall	_RF24_setPayloadSize
	line	150
	
l2909:	
	fcall	_RF24_startListening
	line	151
	
l284:	
	return
	callstack 0
GLOBAL	__end_of_Network_begin
	__end_of_Network_begin:
	signat	_Network_begin,89
	global	_RF24_startListening

;; *************** function _RF24_startListening *****************
;; Defined at:
;;		line 139 in file "F:/GitHub/Graduation-Project/Moduls/Switch/libs/rf24.c"
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
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_RF24_read_register
;;		_RF24_write_register
;; This function is called by:
;;		_internet_relay
;;		_Network_begin
;; This function uses a non-reentrant model
;;
psect	text32,local,class=CODE,delta=2,merge=1,group=1
	file	"F:/GitHub/Graduation-Project/Moduls/Switch/libs/rf24.c"
	line	139
global __ptext32
__ptext32:	;psect for function _RF24_startListening
psect	text32
	file	"F:/GitHub/Graduation-Project/Moduls/Switch/libs/rf24.c"
	line	139
	
_RF24_startListening:	
;incstack = 0
	callstack 1
; Regs used in _RF24_startListening: [wreg+status,2+status,0+pclath+cstack]
	line	141
	
l2615:	
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
	
l2617:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(66/8),(66)&7	;volatile
	line	154
	
l383:	
	return
	callstack 0
GLOBAL	__end_of_RF24_startListening
	__end_of_RF24_startListening:
	signat	_RF24_startListening,89
	global	_RF24_setCRCLength

;; *************** function _RF24_setCRCLength *****************
;; Defined at:
;;		line 411 in file "F:/GitHub/Graduation-Project/Moduls/Switch/libs/rf24.c"
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
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_RF24_write_register
;; This function is called by:
;;		_Network_begin
;; This function uses a non-reentrant model
;;
psect	text33,local,class=CODE,delta=2,merge=1,group=1
	line	411
global __ptext33
__ptext33:	;psect for function _RF24_setCRCLength
psect	text33
	file	"F:/GitHub/Graduation-Project/Moduls/Switch/libs/rf24.c"
	line	411
	
_RF24_setCRCLength:	
;incstack = 0
	callstack 3
; Regs used in _RF24_setCRCLength: [wreg+status,2+status,0+pclath+cstack]
	movwf	(RF24_setCRCLength@length)
	line	413
	
l2877:	
	movf	(_RF24_attr_config),w
	andlw	0F3h
	movwf	(??_RF24_setCRCLength+0)+0
	movf	(??_RF24_setCRCLength+0)+0,w
	movwf	(_RF24_attr_config)
	line	416
	
l2879:	
	movf	((RF24_setCRCLength@length)),w
	btfss	status,2
	goto	u1531
	goto	u1530
u1531:
	goto	l2883
u1530:
	goto	l2887
	line	420
	
l2883:	
		decf	((RF24_setCRCLength@length)),w
	btfss	status,2
	goto	u1541
	goto	u1540
u1541:
	goto	l474
u1540:
	line	422
	
l2885:	
	bsf	(_RF24_attr_config)+(3/8),(3)&7
	line	423
	goto	l2887
	line	424
	
l474:	
	line	426
	bsf	(_RF24_attr_config)+(3/8),(3)&7
	line	427
	bsf	(_RF24_attr_config)+(2/8),(2)&7
	line	429
	
l2887:	
	movf	(_RF24_attr_config),w
	movwf	(??_RF24_setCRCLength+0)+0
	movf	(??_RF24_setCRCLength+0)+0,w
	movwf	(RF24_write_register@value)
	movlw	low(0)
	fcall	_RF24_write_register
	line	430
	
l476:	
	return
	callstack 0
GLOBAL	__end_of_RF24_setCRCLength
	__end_of_RF24_setCRCLength:
	signat	_RF24_setCRCLength,4217
	global	_RF24_setAutoAck

;; *************** function _RF24_setAutoAck *****************
;; Defined at:
;;		line 342 in file "F:/GitHub/Graduation-Project/Moduls/Switch/libs/rf24.c"
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
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_RF24_write_register
;; This function is called by:
;;		_Network_begin
;; This function uses a non-reentrant model
;;
psect	text34,local,class=CODE,delta=2,merge=1,group=1
	line	342
global __ptext34
__ptext34:	;psect for function _RF24_setAutoAck
psect	text34
	file	"F:/GitHub/Graduation-Project/Moduls/Switch/libs/rf24.c"
	line	342
	
_RF24_setAutoAck:	
;incstack = 0
	callstack 3
; Regs used in _RF24_setAutoAck: [wreg+status,2+status,0+pclath+cstack]
	movwf	(RF24_setAutoAck@enable)
	line	344
	
l2889:	
	movf	((RF24_setAutoAck@enable)),w
	btfsc	status,2
	goto	u1551
	goto	u1550
u1551:
	goto	l2893
u1550:
	line	346
	
l2891:	
	movlw	low(03Fh)
	movwf	(??_RF24_setAutoAck+0)+0
	movf	(??_RF24_setAutoAck+0)+0,w
	movwf	(RF24_write_register@value)
	movlw	low(01h)
	fcall	_RF24_write_register
	line	347
	goto	l451
	line	350
	
l2893:	
	clrf	(RF24_write_register@value)
	movlw	low(01h)
	fcall	_RF24_write_register
	line	352
	
l451:	
	return
	callstack 0
GLOBAL	__end_of_RF24_setAutoAck
	__end_of_RF24_setAutoAck:
	signat	_RF24_setAutoAck,4217
	global	_RF24_openReadingPipe

;; *************** function _RF24_openReadingPipe *****************
;; Defined at:
;;		line 312 in file "F:/GitHub/Graduation-Project/Moduls/Switch/libs/rf24.c"
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
;; Hardware stack levels required when called: 3
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
psect	text35,local,class=CODE,delta=2,merge=1,group=1
	line	312
global __ptext35
__ptext35:	;psect for function _RF24_openReadingPipe
psect	text35
	file	"F:/GitHub/Graduation-Project/Moduls/Switch/libs/rf24.c"
	line	312
	
_RF24_openReadingPipe:	
;incstack = 0
	callstack 1
; Regs used in _RF24_openReadingPipe: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(RF24_openReadingPipe@child)
	line	314
	
l2563:	
	movlw	low(02h)
	subwf	(RF24_openReadingPipe@child),w
	skipnc
	goto	u1301
	goto	u1300
u1301:
	goto	l2567
u1300:
	line	316
	
l2565:	
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
	goto	l2569
	line	320
	
l2567:	
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
	
l2569:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_RF24_openReadingPipe+0)+0
	incf	(RF24_openReadingPipe@child),w
	goto	u1314
u1315:
	clrc
	rlf	(??_RF24_openReadingPipe+0)+0,f
u1314:
	addlw	-1
	skipz
	goto	u1315
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
	
l437:	
	return
	callstack 0
GLOBAL	__end_of_RF24_openReadingPipe
	__end_of_RF24_openReadingPipe:
	signat	_RF24_openReadingPipe,8313
	global	_RF24_write_n_register

;; *************** function _RF24_write_n_register *****************
;; Defined at:
;;		line 29 in file "F:/GitHub/Graduation-Project/Moduls/Switch/libs/rf24.c"
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
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_SPI_exchangeByte
;; This function is called by:
;;		_RF24_openReadingPipe
;;		_RF24_openWritingPipe
;; This function uses a non-reentrant model
;;
psect	text36,local,class=CODE,delta=2,merge=1,group=1
	line	29
global __ptext36
__ptext36:	;psect for function _RF24_write_n_register
psect	text36
	file	"F:/GitHub/Graduation-Project/Moduls/Switch/libs/rf24.c"
	line	29
	
_RF24_write_n_register:	
;incstack = 0
	callstack 1
; Regs used in _RF24_write_n_register: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	movwf	(RF24_write_n_register@mnemonic_addr)
	line	31
	
l2529:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7	;volatile
	line	32
	
l2531:	
	movf	(RF24_write_n_register@mnemonic_addr),w
	iorlw	020h
	fcall	_SPI_exchangeByte
	movwf	(??_RF24_write_n_register+0)+0
	movf	(??_RF24_write_n_register+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_RF24_attr_status)
	line	33
	goto	l2539
	line	35
	
l2533:	
	movf	(RF24_write_n_register@buffer+1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	btemp+1
	movf	(RF24_write_n_register@buffer),w
	movwf	fsr0
	fcall	stringtab
	fcall	_SPI_exchangeByte
	
l2535:	
	movlw	01h
	addwf	(RF24_write_n_register@buffer),f
	skipnc
	incf	(RF24_write_n_register@buffer+1),f
	movlw	0
	addwf	(RF24_write_n_register@buffer+1),f
	line	36
	
l2537:	
	movlw	01h
	subwf	(RF24_write_n_register@length),f
	line	33
	
l2539:	
	movf	((RF24_write_n_register@length)),w
	btfss	status,2
	goto	u1271
	goto	u1270
u1271:
	goto	l2533
u1270:
	
l359:	
	line	38
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(67/8),(67)&7	;volatile
	line	39
	
l360:	
	return
	callstack 0
GLOBAL	__end_of_RF24_write_n_register
	__end_of_RF24_write_n_register:
	signat	_RF24_write_n_register,12409
	global	_RF24_getPALevel

;; *************** function _RF24_getPALevel *****************
;; Defined at:
;;		line 465 in file "F:/GitHub/Graduation-Project/Moduls/Switch/libs/rf24.c"
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
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_RF24_read_register
;; This function is called by:
;;		_Network_begin
;; This function uses a non-reentrant model
;;
psect	text37,local,class=CODE,delta=2,merge=1,group=1
	line	465
global __ptext37
__ptext37:	;psect for function _RF24_getPALevel
psect	text37
	file	"F:/GitHub/Graduation-Project/Moduls/Switch/libs/rf24.c"
	line	465
	
_RF24_getPALevel:	
;incstack = 0
	callstack 3
; Regs used in _RF24_getPALevel: [wreg+status,2+status,0+pclath+cstack]
	line	467
	
l2895:	
;	Return value of _RF24_getPALevel is never used
	movlw	low(06h)
	fcall	_RF24_read_register
	line	468
	
l503:	
	return
	callstack 0
GLOBAL	__end_of_RF24_getPALevel
	__end_of_RF24_getPALevel:
	signat	_RF24_getPALevel,89
	global	_RF24_enableDynamicPayloads

;; *************** function _RF24_enableDynamicPayloads *****************
;; Defined at:
;;		line 330 in file "F:/GitHub/Graduation-Project/Moduls/Switch/libs/rf24.c"
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
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_RF24_read_register
;;		_RF24_write_register
;; This function is called by:
;;		_Network_begin
;; This function uses a non-reentrant model
;;
psect	text38,local,class=CODE,delta=2,merge=1,group=1
	line	330
global __ptext38
__ptext38:	;psect for function _RF24_enableDynamicPayloads
psect	text38
	file	"F:/GitHub/Graduation-Project/Moduls/Switch/libs/rf24.c"
	line	330
	
_RF24_enableDynamicPayloads:	
;incstack = 0
	callstack 3
; Regs used in _RF24_enableDynamicPayloads: [wreg+status,2+status,0+pclath+cstack]
	line	332
	
l2875:	
	movlw	low(01Dh)
	fcall	_RF24_read_register
	iorlw	04h
	movwf	(??_RF24_enableDynamicPayloads+0)+0
	movf	(??_RF24_enableDynamicPayloads+0)+0,w
	movwf	(RF24_write_register@value)
	movlw	low(01Dh)
	fcall	_RF24_write_register
	line	333
	movlw	low(01Ch)
	fcall	_RF24_read_register
	iorlw	03Fh
	movwf	(??_RF24_enableDynamicPayloads+0)+0
	movf	(??_RF24_enableDynamicPayloads+0)+0,w
	movwf	(RF24_write_register@value)
	movlw	low(01Ch)
	fcall	_RF24_write_register
	line	334
	
l443:	
	return
	callstack 0
GLOBAL	__end_of_RF24_enableDynamicPayloads
	__end_of_RF24_enableDynamicPayloads:
	signat	_RF24_enableDynamicPayloads,89
	global	_RF24_begin

;; *************** function _RF24_begin *****************
;; Defined at:
;;		line 59 in file "F:/GitHub/Graduation-Project/Moduls/Switch/libs/rf24.c"
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
;; Hardware stack levels required when called: 4
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
psect	text39,local,class=CODE,delta=2,merge=1,group=1
	line	59
global __ptext39
__ptext39:	;psect for function _RF24_begin
psect	text39
	file	"F:/GitHub/Graduation-Project/Moduls/Switch/libs/rf24.c"
	line	59
	
_RF24_begin:	
;incstack = 0
	callstack 2
; Regs used in _RF24_begin: [wreg+status,2+status,0+pclath+cstack]
	line	62
	
l2837:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1090/8)^080h,(1090)&7	;volatile
	line	63
	bcf	(1091/8)^080h,(1091)&7	;volatile
	line	64
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(66/8),(66)&7	;volatile
	line	65
	bsf	(67/8),(67)&7	;volatile
	line	66
	
l2839:	
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
	u1667:
decfsz	((??_RF24_begin+0)+0),f
	goto	u1667
	decfsz	((??_RF24_begin+0)+0+1),f
	goto	u1667
	decfsz	((??_RF24_begin+0)+0+2),f
	goto	u1667
	nop
asmopt pop

	line	76
	asmopt push
asmopt off
movlw	26
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_RF24_begin+0)+0+1)
	movlw	247
movwf	((??_RF24_begin+0)+0)
	u1677:
decfsz	((??_RF24_begin+0)+0),f
	goto	u1677
	decfsz	((??_RF24_begin+0)+0+1),f
	goto	u1677
	nop2
asmopt pop

	line	80
	
l2841:	
	movlw	low(0Fh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_RF24_begin+0)+0
	movf	(??_RF24_begin+0)+0,w
	movwf	(RF24_setRetries@count)
	movlw	low(05h)
	fcall	_RF24_setRetries
	line	85
	
l2843:	
	movlw	low(03h)
	fcall	_RF24_setPALevel
	line	86
	
l2845:	
	movlw	low(0)
	fcall	_RF24_setDataRate
	line	89
	
l2847:	
	clrf	(RF24_write_register@value)
	movlw	low(01Dh)
	fcall	_RF24_write_register
	line	90
	
l2849:	
	clrf	(RF24_write_register@value)
	movlw	low(01Ch)
	fcall	_RF24_write_register
	line	91
	
l2851:	
	movlw	low(03Fh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_RF24_begin+0)+0
	movf	(??_RF24_begin+0)+0,w
	movwf	(RF24_write_register@value)
	movlw	low(01h)
	fcall	_RF24_write_register
	line	92
	
l2853:	
	movlw	low(03h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_RF24_begin+0)+0
	movf	(??_RF24_begin+0)+0,w
	movwf	(RF24_write_register@value)
	movlw	low(02h)
	fcall	_RF24_write_register
	line	93
	
l2855:	
	movlw	low(020h)
	fcall	_RF24_setPayloadSize
	line	94
	
l2857:	
	movlw	low(05h)
	fcall	_RF24_setAddressWidth
	line	99
	
l2859:	
	movlw	low(04Ch)
	fcall	_RF24_setChannel
	line	103
	
l2861:	
	movlw	low(070h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_RF24_begin+0)+0
	movf	(??_RF24_begin+0)+0,w
	movwf	(RF24_write_register@value)
	movlw	low(07h)
	fcall	_RF24_write_register
	line	106
	
l2863:	
	fcall	_RF24_flush_rx
	line	107
	
l2865:	
	fcall	_RF24_flush_tx
	line	116
	
l2867:	
	movlw	low(0Ch)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_RF24_begin+0)+0
	movf	(??_RF24_begin+0)+0,w
	movwf	(RF24_write_register@value)
	movlw	low(0)
	fcall	_RF24_write_register
	line	117
	
l2869:	
	fcall	_RF24_powerUp
	line	118
	
l2871:	
	movlw	low(0)
	fcall	_RF24_read_register
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_RF24_begin+0)+0
	movf	(??_RF24_begin+0)+0,w
	movwf	(_RF24_attr_config)
	line	120
	
l369:	
	return
	callstack 0
GLOBAL	__end_of_RF24_begin
	__end_of_RF24_begin:
	signat	_RF24_begin,89
	global	_RF24_setRetries

;; *************** function _RF24_setRetries *****************
;; Defined at:
;;		line 469 in file "F:/GitHub/Graduation-Project/Moduls/Switch/libs/rf24.c"
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
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_RF24_write_register
;; This function is called by:
;;		_RF24_begin
;; This function uses a non-reentrant model
;;
psect	text40,local,class=CODE,delta=2,merge=1,group=1
	line	469
global __ptext40
__ptext40:	;psect for function _RF24_setRetries
psect	text40
	file	"F:/GitHub/Graduation-Project/Moduls/Switch/libs/rf24.c"
	line	469
	
_RF24_setRetries:	
;incstack = 0
	callstack 2
; Regs used in _RF24_setRetries: [wreg+status,2+status,0+pclath+cstack]
	movwf	(RF24_setRetries@delay)
	line	471
	
l2759:	
	movlw	low(0Fh)
	andwf	(RF24_setRetries@count),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_RF24_setRetries+0)+0
	movf	(RF24_setRetries@delay),w
	andlw	0Fh
	movwf	(??_RF24_setRetries+1)+0
	movlw	(04h)-1
u1485:
	clrc
	rlf	(??_RF24_setRetries+1)+0,f
	addlw	-1
	skipz
	goto	u1485
	clrc
	rlf	(??_RF24_setRetries+1)+0,w
	iorwf	0+(??_RF24_setRetries+0)+0,w
	movwf	(??_RF24_setRetries+2)+0
	movf	(??_RF24_setRetries+2)+0,w
	movwf	(RF24_write_register@value)
	movlw	low(04h)
	fcall	_RF24_write_register
	line	472
	
l506:	
	return
	callstack 0
GLOBAL	__end_of_RF24_setRetries
	__end_of_RF24_setRetries:
	signat	_RF24_setRetries,8313
	global	_RF24_setPayloadSize

;; *************** function _RF24_setPayloadSize *****************
;; Defined at:
;;		line 183 in file "F:/GitHub/Graduation-Project/Moduls/Switch/libs/rf24.c"
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
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_RF24_write_register
;; This function is called by:
;;		_Network_begin
;;		_RF24_begin
;; This function uses a non-reentrant model
;;
psect	text41,local,class=CODE,delta=2,merge=1,group=1
	line	183
global __ptext41
__ptext41:	;psect for function _RF24_setPayloadSize
psect	text41
	file	"F:/GitHub/Graduation-Project/Moduls/Switch/libs/rf24.c"
	line	183
	
_RF24_setPayloadSize:	
;incstack = 0
	callstack 3
; Regs used in _RF24_setPayloadSize: [wreg+status,2+status,0+pclath+cstack]
	movwf	(RF24_setPayloadSize@size)
	line	185
	
l2747:	
	movf	(RF24_setPayloadSize@size),w
	movwf	(??_RF24_setPayloadSize+0)+0
	movf	(??_RF24_setPayloadSize+0)+0,w
	movwf	(RF24_write_register@value)
	movlw	low(011h)
	fcall	_RF24_write_register
	line	186
	movf	(RF24_setPayloadSize@size),w
	movwf	(??_RF24_setPayloadSize+0)+0
	movf	(??_RF24_setPayloadSize+0)+0,w
	movwf	(RF24_write_register@value)
	movlw	low(012h)
	fcall	_RF24_write_register
	line	187
	movf	(RF24_setPayloadSize@size),w
	movwf	(??_RF24_setPayloadSize+0)+0
	movf	(??_RF24_setPayloadSize+0)+0,w
	movwf	(RF24_write_register@value)
	movlw	low(013h)
	fcall	_RF24_write_register
	line	188
	movf	(RF24_setPayloadSize@size),w
	movwf	(??_RF24_setPayloadSize+0)+0
	movf	(??_RF24_setPayloadSize+0)+0,w
	movwf	(RF24_write_register@value)
	movlw	low(014h)
	fcall	_RF24_write_register
	line	189
	movf	(RF24_setPayloadSize@size),w
	movwf	(??_RF24_setPayloadSize+0)+0
	movf	(??_RF24_setPayloadSize+0)+0,w
	movwf	(RF24_write_register@value)
	movlw	low(015h)
	fcall	_RF24_write_register
	line	190
	movf	(RF24_setPayloadSize@size),w
	movwf	(??_RF24_setPayloadSize+0)+0
	movf	(??_RF24_setPayloadSize+0)+0,w
	movwf	(RF24_write_register@value)
	movlw	low(016h)
	fcall	_RF24_write_register
	line	191
	
l395:	
	return
	callstack 0
GLOBAL	__end_of_RF24_setPayloadSize
	__end_of_RF24_setPayloadSize:
	signat	_RF24_setPayloadSize,4217
	global	_RF24_setPALevel

;; *************** function _RF24_setPALevel *****************
;; Defined at:
;;		line 122 in file "F:/GitHub/Graduation-Project/Moduls/Switch/libs/rf24.c"
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
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_RF24_read_register
;;		_RF24_write_register
;; This function is called by:
;;		_RF24_begin
;; This function uses a non-reentrant model
;;
psect	text42,local,class=CODE,delta=2,merge=1,group=1
	line	122
global __ptext42
__ptext42:	;psect for function _RF24_setPALevel
psect	text42
	file	"F:/GitHub/Graduation-Project/Moduls/Switch/libs/rf24.c"
	line	122
	
_RF24_setPALevel:	
;incstack = 0
	callstack 2
; Regs used in _RF24_setPALevel: [wreg+status,2+status,0+pclath+cstack]
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(RF24_setPALevel@level)
	line	124
	
l2761:	
	movlw	low(06h)
	fcall	_RF24_read_register
	andlw	0F8h
	movwf	(??_RF24_setPALevel+0)+0
	movf	(??_RF24_setPALevel+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(RF24_setPALevel@setup)
	line	125
	
l2763:	
	movlw	low(04h)
	subwf	(RF24_setPALevel@level),w
	skipnc
	goto	u1491
	goto	u1490
u1491:
	goto	l2767
u1490:
	
l2765:	
	movf	(RF24_setPALevel@level),w
	movwf	(??_RF24_setPALevel+0)+0
	movf	(??_RF24_setPALevel+0)+0,w
	movwf	(_RF24_setPALevel$650)
	goto	l2769
	
l2767:	
	movlw	low(03h)
	movwf	(??_RF24_setPALevel+0)+0
	movf	(??_RF24_setPALevel+0)+0,w
	movwf	(_RF24_setPALevel$650)
	
l2769:	
	movf	(_RF24_setPALevel$650),w
	movwf	(??_RF24_setPALevel+0)+0
	addwf	(??_RF24_setPALevel+0)+0,w
	movwf	(??_RF24_setPALevel+1)+0
	movf	(??_RF24_setPALevel+1)+0,w
	iorwf	(RF24_setPALevel@setup),f
	line	126
	
l2771:	
	movf	(RF24_setPALevel@setup),w
	movwf	(??_RF24_setPALevel+0)+0
	movf	(??_RF24_setPALevel+0)+0,w
	movwf	(RF24_write_register@value)
	movlw	low(06h)
	fcall	_RF24_write_register
	line	127
	
l376:	
	return
	callstack 0
GLOBAL	__end_of_RF24_setPALevel
	__end_of_RF24_setPALevel:
	signat	_RF24_setPALevel,4217
	global	_RF24_setDataRate

;; *************** function _RF24_setDataRate *****************
;; Defined at:
;;		line 370 in file "F:/GitHub/Graduation-Project/Moduls/Switch/libs/rf24.c"
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
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_RF24_read_register
;;		_RF24_write_register
;; This function is called by:
;;		_Network_begin
;;		_RF24_begin
;; This function uses a non-reentrant model
;;
psect	text43,local,class=CODE,delta=2,merge=1,group=1
	line	370
global __ptext43
__ptext43:	;psect for function _RF24_setDataRate
psect	text43
	file	"F:/GitHub/Graduation-Project/Moduls/Switch/libs/rf24.c"
	line	370
	
_RF24_setDataRate:	
;incstack = 0
	callstack 3
; Regs used in _RF24_setDataRate: [wreg+status,2+status,0+pclath+cstack]
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(RF24_setDataRate@speed)
	line	372
	
l2733:	
	movlw	low(06h)
	fcall	_RF24_read_register
	movwf	(??_RF24_setDataRate+0)+0
	movf	(??_RF24_setDataRate+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(RF24_setDataRate@setup)
	line	374
	
l2735:	
	movf	(RF24_setDataRate@setup),w
	andlw	0D7h
	movwf	(??_RF24_setDataRate+0)+0
	movf	(??_RF24_setDataRate+0)+0,w
	movwf	(RF24_setDataRate@setup)
	line	375
	
l2737:	
		movlw	2
	xorwf	((RF24_setDataRate@speed)),w
	btfss	status,2
	goto	u1451
	goto	u1450
u1451:
	goto	l2741
u1450:
	line	377
	
l2739:	
	bsf	(RF24_setDataRate@setup)+(5/8),(5)&7
	line	378
	goto	l2745
	line	379
	
l2741:	
		decf	((RF24_setDataRate@speed)),w
	btfss	status,2
	goto	u1461
	goto	u1460
u1461:
	goto	l2745
u1460:
	line	381
	
l2743:	
	bsf	(RF24_setDataRate@setup)+(3/8),(3)&7
	line	383
	
l2745:	
	movf	(RF24_setDataRate@setup),w
	movwf	(??_RF24_setDataRate+0)+0
	movf	(??_RF24_setDataRate+0)+0,w
	movwf	(RF24_write_register@value)
	movlw	low(06h)
	fcall	_RF24_write_register
	line	384
	
l462:	
	return
	callstack 0
GLOBAL	__end_of_RF24_setDataRate
	__end_of_RF24_setDataRate:
	signat	_RF24_setDataRate,4217
	global	_RF24_setChannel

;; *************** function _RF24_setChannel *****************
;; Defined at:
;;		line 449 in file "F:/GitHub/Graduation-Project/Moduls/Switch/libs/rf24.c"
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
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_RF24_write_register
;; This function is called by:
;;		_internet_setChannel
;;		_RF24_begin
;; This function uses a non-reentrant model
;;
psect	text44,local,class=CODE,delta=2,merge=1,group=1
	line	449
global __ptext44
__ptext44:	;psect for function _RF24_setChannel
psect	text44
	file	"F:/GitHub/Graduation-Project/Moduls/Switch/libs/rf24.c"
	line	449
	
_RF24_setChannel:	
;incstack = 0
	callstack 3
; Regs used in _RF24_setChannel: [wreg+status,2+status,0+pclath+cstack]
	movwf	(RF24_setChannel@channel)
	line	451
	
l2725:	
	movf	(RF24_setChannel@channel),w
	movwf	(??_RF24_setChannel+0)+0
	movf	(??_RF24_setChannel+0)+0,w
	movwf	(RF24_write_register@value)
	movlw	low(05h)
	fcall	_RF24_write_register
	line	452
	
l491:	
	return
	callstack 0
GLOBAL	__end_of_RF24_setChannel
	__end_of_RF24_setChannel:
	signat	_RF24_setChannel,4217
	global	_RF24_setAddressWidth

;; *************** function _RF24_setAddressWidth *****************
;; Defined at:
;;		line 473 in file "F:/GitHub/Graduation-Project/Moduls/Switch/libs/rf24.c"
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
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_RF24_write_register
;; This function is called by:
;;		_Network_begin
;;		_RF24_begin
;; This function uses a non-reentrant model
;;
psect	text45,local,class=CODE,delta=2,merge=1,group=1
	line	473
global __ptext45
__ptext45:	;psect for function _RF24_setAddressWidth
psect	text45
	file	"F:/GitHub/Graduation-Project/Moduls/Switch/libs/rf24.c"
	line	473
	
_RF24_setAddressWidth:	
;incstack = 0
	callstack 3
; Regs used in _RF24_setAddressWidth: [wreg+status,2+status,0+pclath+cstack]
	movwf	(RF24_setAddressWidth@w)
	line	475
	
l2731:	
	movf	(RF24_setAddressWidth@w),w
	addlw	0FEh
	andlw	03h
	movwf	(??_RF24_setAddressWidth+0)+0
	movf	(??_RF24_setAddressWidth+0)+0,w
	movwf	(RF24_write_register@value)
	movlw	low(03h)
	fcall	_RF24_write_register
	line	476
	
l509:	
	return
	callstack 0
GLOBAL	__end_of_RF24_setAddressWidth
	__end_of_RF24_setAddressWidth:
	signat	_RF24_setAddressWidth,4217
	global	_RF24_powerUp

;; *************** function _RF24_powerUp *****************
;; Defined at:
;;		line 177 in file "F:/GitHub/Graduation-Project/Moduls/Switch/libs/rf24.c"
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
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_RF24_read_register
;;		_RF24_write_register
;; This function is called by:
;;		_RF24_begin
;; This function uses a non-reentrant model
;;
psect	text46,local,class=CODE,delta=2,merge=1,group=1
	line	177
global __ptext46
__ptext46:	;psect for function _RF24_powerUp
psect	text46
	file	"F:/GitHub/Graduation-Project/Moduls/Switch/libs/rf24.c"
	line	177
	
_RF24_powerUp:	
;incstack = 0
	callstack 2
; Regs used in _RF24_powerUp: [wreg+status,2+status,0+pclath+cstack]
	line	179
	
l2775:	
	movlw	low(0)
	fcall	_RF24_read_register
	iorlw	02h
	movwf	(??_RF24_powerUp+0)+0
	movf	(??_RF24_powerUp+0)+0,w
	movwf	(RF24_write_register@value)
	movlw	low(0)
	fcall	_RF24_write_register
	line	180
	
l2777:	
	asmopt push
asmopt off
movlw	26
movwf	((??_RF24_powerUp+0)+0+1)
	movlw	248
movwf	((??_RF24_powerUp+0)+0)
	u1687:
decfsz	((??_RF24_powerUp+0)+0),f
	goto	u1687
	decfsz	((??_RF24_powerUp+0)+0+1),f
	goto	u1687
	nop
asmopt pop

	line	181
	
l392:	
	return
	callstack 0
GLOBAL	__end_of_RF24_powerUp
	__end_of_RF24_powerUp:
	signat	_RF24_powerUp,89
	global	_RF24_read_register

;; *************** function _RF24_read_register *****************
;; Defined at:
;;		line 18 in file "F:/GitHub/Graduation-Project/Moduls/Switch/libs/rf24.c"
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
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_SPI_exchangeByte
;; This function is called by:
;;		_RF24_begin
;;		_RF24_setPALevel
;;		_RF24_isChipConnected
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
psect	text47,local,class=CODE,delta=2,merge=1,group=1
	line	18
global __ptext47
__ptext47:	;psect for function _RF24_read_register
psect	text47
	file	"F:/GitHub/Graduation-Project/Moduls/Switch/libs/rf24.c"
	line	18
	
_RF24_read_register:	
;incstack = 0
	callstack 1
; Regs used in _RF24_read_register: [wreg+pclath+cstack]
	movwf	(RF24_read_register@mnemonic_addr)
	line	20
	
l2519:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7	;volatile
	line	22
	
l2521:	
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
	
l2523:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(67/8),(67)&7	;volatile
	line	26
	
l2525:	
	movf	(RF24_read_register@result),w
	line	27
	
l354:	
	return
	callstack 0
GLOBAL	__end_of_RF24_read_register
	__end_of_RF24_read_register:
	signat	_RF24_read_register,4217
	global	_RF24_flush_tx

;; *************** function _RF24_flush_tx *****************
;; Defined at:
;;		line 437 in file "F:/GitHub/Graduation-Project/Moduls/Switch/libs/rf24.c"
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
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_RF24_write_register
;; This function is called by:
;;		_RF24_begin
;;		_RF24_write
;; This function uses a non-reentrant model
;;
psect	text48,local,class=CODE,delta=2,merge=1,group=1
	line	437
global __ptext48
__ptext48:	;psect for function _RF24_flush_tx
psect	text48
	file	"F:/GitHub/Graduation-Project/Moduls/Switch/libs/rf24.c"
	line	437
	
_RF24_flush_tx:	
;incstack = 0
	callstack 0
; Regs used in _RF24_flush_tx: [wreg+status,2+status,0+pclath+cstack]
	line	439
	
l2551:	
	movlw	low(0FFh)
	movwf	(??_RF24_flush_tx+0)+0
	movf	(??_RF24_flush_tx+0)+0,w
	movwf	(RF24_write_register@value)
	movlw	low(0E1h)
	fcall	_RF24_write_register
	line	440
	
l482:	
	return
	callstack 0
GLOBAL	__end_of_RF24_flush_tx
	__end_of_RF24_flush_tx:
	signat	_RF24_flush_tx,89
	global	_RF24_flush_rx

;; *************** function _RF24_flush_rx *****************
;; Defined at:
;;		line 441 in file "F:/GitHub/Graduation-Project/Moduls/Switch/libs/rf24.c"
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
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_RF24_write_register
;; This function is called by:
;;		_RF24_begin
;;		_RF24_getDynamicPayloadSize
;; This function uses a non-reentrant model
;;
psect	text49,local,class=CODE,delta=2,merge=1,group=1
	line	441
global __ptext49
__ptext49:	;psect for function _RF24_flush_rx
psect	text49
	file	"F:/GitHub/Graduation-Project/Moduls/Switch/libs/rf24.c"
	line	441
	
_RF24_flush_rx:	
;incstack = 0
	callstack 2
; Regs used in _RF24_flush_rx: [wreg+status,2+status,0+pclath+cstack]
	line	443
	
l2773:	
	movlw	low(0FFh)
	movwf	(??_RF24_flush_rx+0)+0
	movf	(??_RF24_flush_rx+0)+0,w
	movwf	(RF24_write_register@value)
	movlw	low(0E2h)
	fcall	_RF24_write_register
	line	444
	
l485:	
	return
	callstack 0
GLOBAL	__end_of_RF24_flush_rx
	__end_of_RF24_flush_rx:
	signat	_RF24_flush_rx,89
	global	_RF24_write_register

;; *************** function _RF24_write_register *****************
;; Defined at:
;;		line 42 in file "F:/GitHub/Graduation-Project/Moduls/Switch/libs/rf24.c"
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
;; Hardware stack levels required when called: 2
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
psect	text50,local,class=CODE,delta=2,merge=1,group=1
	line	42
global __ptext50
__ptext50:	;psect for function _RF24_write_register
psect	text50
	file	"F:/GitHub/Graduation-Project/Moduls/Switch/libs/rf24.c"
	line	42
	
_RF24_write_register:	
;incstack = 0
	callstack 1
; Regs used in _RF24_write_register: [wreg+status,2+status,0+pclath+cstack]
	movwf	(RF24_write_register@mnemonic_addr)
	line	45
	
l2507:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7	;volatile
	line	46
	
l2509:	
	movf	(RF24_write_register@mnemonic_addr),w
	iorlw	020h
	fcall	_SPI_exchangeByte
	movwf	(??_RF24_write_register+0)+0
	movf	(??_RF24_write_register+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_RF24_attr_status)
	line	47
	
l2511:	
	movf	(RF24_write_register@value),w
	fcall	_SPI_exchangeByte
	line	48
	
l2513:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(67/8),(67)&7	;volatile
	line	49
	
l363:	
	return
	callstack 0
GLOBAL	__end_of_RF24_write_register
	__end_of_RF24_write_register:
	signat	_RF24_write_register,8313
	global	_SPI_exchangeByte

;; *************** function _SPI_exchangeByte *****************
;; Defined at:
;;		line 13 in file "F:/GitHub/Graduation-Project/Moduls/Switch/libs/spi_master.c"
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
;; Hardware stack levels required when called: 1
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
psect	text51,local,class=CODE,delta=2,merge=1,group=1
	file	"F:/GitHub/Graduation-Project/Moduls/Switch/libs/spi_master.c"
	line	13
global __ptext51
__ptext51:	;psect for function _SPI_exchangeByte
psect	text51
	file	"F:/GitHub/Graduation-Project/Moduls/Switch/libs/spi_master.c"
	line	13
	
_SPI_exchangeByte:	
;incstack = 0
	callstack 2
; Regs used in _SPI_exchangeByte: [wreg]
	movwf	(SPI_exchangeByte@byte)
	line	16
	
l2501:	
	movf	(SPI_exchangeByte@byte),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(19)	;volatile
	line	19
	
l538:	
	line	18
	btfss	(99/8),(99)&7	;volatile
	goto	u1251
	goto	u1250
u1251:
	goto	l538
u1250:
	
l540:	
	line	20
	bcf	(99/8),(99)&7	;volatile
	line	21
	
l2503:	
	movf	(19),w	;volatile
	line	22
	
l541:	
	return
	callstack 0
GLOBAL	__end_of_SPI_exchangeByte
	__end_of_SPI_exchangeByte:
	signat	_SPI_exchangeByte,4217
	global	_ISR

;; *************** function _ISR *****************
;; Defined at:
;;		line 137 in file "F:/GitHub/Graduation-Project/Moduls/Switch/app/src/main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
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
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text52,local,class=CODE,delta=2,merge=1,group=0
	file	"F:/GitHub/Graduation-Project/Moduls/Switch/app/src/main.c"
	line	137
global __ptext52
__ptext52:	;psect for function _ISR
psect	text52
	file	"F:/GitHub/Graduation-Project/Moduls/Switch/app/src/main.c"
	line	137
	
_ISR:	
;incstack = 0
;; hardware stack exceeded
	callstack 0
; Regs used in _ISR: []
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
psect	text52
	line	140
	
i1l84:	
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
global	___latbits
___latbits	equ	2
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp+0
	end

subtitle "Microchip MPLAB XC8 C Compiler v2.35 (Free license) build 20211206165544 Og1 "

pagewidth 120

	opt flic

	processor	16F1828
include "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\16f1828.cgen.inc"
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
pushw	macro
	movwi fsr1++
	endm
popw	macro
	moviw --fsr1
	endm
# 55 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
INDF0 equ 00h ;# 
# 75 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
INDF1 equ 01h ;# 
# 95 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PCL equ 02h ;# 
# 115 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
STATUS equ 03h ;# 
# 178 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
FSR0L equ 04h ;# 
# 198 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
FSR0H equ 05h ;# 
# 222 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
FSR1L equ 06h ;# 
# 242 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
FSR1H equ 07h ;# 
# 262 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
BSR equ 08h ;# 
# 314 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
WREG equ 09h ;# 
# 334 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PCLATH equ 0Ah ;# 
# 354 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
INTCON equ 0Bh ;# 
# 432 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PORTA equ 0Ch ;# 
# 482 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PORTB equ 0Dh ;# 
# 521 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PORTC equ 0Eh ;# 
# 583 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PIR1 equ 011h ;# 
# 645 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PIR2 equ 012h ;# 
# 696 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PIR3 equ 013h ;# 
# 736 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
TMR0 equ 015h ;# 
# 756 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
TMR1 equ 016h ;# 
# 763 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
TMR1L equ 016h ;# 
# 783 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
TMR1H equ 017h ;# 
# 803 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
T1CON equ 018h ;# 
# 875 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
T1GCON equ 019h ;# 
# 952 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
TMR2 equ 01Ah ;# 
# 972 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PR2 equ 01Bh ;# 
# 992 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
T2CON equ 01Ch ;# 
# 1063 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CPSCON0 equ 01Eh ;# 
# 1123 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CPSCON1 equ 01Fh ;# 
# 1169 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
TRISA equ 08Ch ;# 
# 1219 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
TRISB equ 08Dh ;# 
# 1258 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
TRISC equ 08Eh ;# 
# 1320 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PIE1 equ 091h ;# 
# 1382 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PIE2 equ 092h ;# 
# 1433 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PIE3 equ 093h ;# 
# 1473 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
OPTION_REG equ 095h ;# 
# 1556 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PCON equ 096h ;# 
# 1607 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
WDTCON equ 097h ;# 
# 1666 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
OSCTUNE equ 098h ;# 
# 1724 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
OSCCON equ 099h ;# 
# 1796 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
OSCSTAT equ 09Ah ;# 
# 1858 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
ADRES equ 09Bh ;# 
# 1865 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
ADRESL equ 09Bh ;# 
# 1885 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
ADRESH equ 09Ch ;# 
# 1905 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
ADCON0 equ 09Dh ;# 
# 1985 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
ADCON1 equ 09Eh ;# 
# 2057 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
LATA equ 010Ch ;# 
# 2102 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
LATB equ 010Dh ;# 
# 2141 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
LATC equ 010Eh ;# 
# 2203 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CM1CON0 equ 0111h ;# 
# 2260 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CM1CON1 equ 0112h ;# 
# 2326 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CM2CON0 equ 0113h ;# 
# 2383 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CM2CON1 equ 0114h ;# 
# 2449 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CMOUT equ 0115h ;# 
# 2475 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
BORCON equ 0116h ;# 
# 2502 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
FVRCON equ 0117h ;# 
# 2578 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
DACCON0 equ 0118h ;# 
# 2639 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
DACCON1 equ 0119h ;# 
# 2691 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SRCON0 equ 011Ah ;# 
# 2762 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SRCON1 equ 011Bh ;# 
# 2824 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
APFCON0 equ 011Dh ;# 
# 2858 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
APFCON1 equ 011Eh ;# 
# 2896 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
ANSELA equ 018Ch ;# 
# 2943 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
ANSELB equ 018Dh ;# 
# 2979 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
ANSELC equ 018Eh ;# 
# 3038 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
EEADR equ 0191h ;# 
# 3045 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
EEADRL equ 0191h ;# 
# 3065 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
EEADRH equ 0192h ;# 
# 3085 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
EEDAT equ 0193h ;# 
# 3092 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
EEDATL equ 0193h ;# 
# 3097 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
EEDATA equ 0193h ;# 
# 3130 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
EEDATH equ 0194h ;# 
# 3150 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
EECON1 equ 0195h ;# 
# 3212 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
EECON2 equ 0196h ;# 
# 3232 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
RCREG equ 0199h ;# 
# 3252 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
TXREG equ 019Ah ;# 
# 3272 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SP1BRG equ 019Bh ;# 
# 3279 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SP1BRGL equ 019Bh ;# 
# 3284 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SPBRG equ 019Bh ;# 
# 3288 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SPBRGL equ 019Bh ;# 
# 3333 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SP1BRGH equ 019Ch ;# 
# 3338 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SPBRGH equ 019Ch ;# 
# 3371 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
RCSTA equ 019Dh ;# 
# 3433 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
TXSTA equ 019Eh ;# 
# 3495 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
BAUDCON equ 019Fh ;# 
# 3547 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
WPUA equ 020Ch ;# 
# 3605 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
WPUB equ 020Dh ;# 
# 3653 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
WPUC equ 020Eh ;# 
# 3723 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SSP1BUF equ 0211h ;# 
# 3728 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SSPBUF equ 0211h ;# 
# 3761 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SSP1ADD equ 0212h ;# 
# 3766 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SSPADD equ 0212h ;# 
# 3799 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SSP1MSK equ 0213h ;# 
# 3804 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SSPMSK equ 0213h ;# 
# 3837 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SSP1STAT equ 0214h ;# 
# 3842 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SSPSTAT equ 0214h ;# 
# 3959 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SSP1CON equ 0215h ;# 
# 3964 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SSP1CON1 equ 0215h ;# 
# 3968 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SSPCON1 equ 0215h ;# 
# 3972 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SSPCON equ 0215h ;# 
# 4229 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SSP1CON2 equ 0216h ;# 
# 4234 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SSPCON2 equ 0216h ;# 
# 4351 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SSP1CON3 equ 0217h ;# 
# 4356 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SSPCON3 equ 0217h ;# 
# 4473 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCPR1 equ 0291h ;# 
# 4480 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCPR1L equ 0291h ;# 
# 4500 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCPR1H equ 0292h ;# 
# 4520 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCP1CON equ 0293h ;# 
# 4602 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PWM1CON equ 0294h ;# 
# 4672 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCP1AS equ 0295h ;# 
# 4677 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
ECCP1AS equ 0295h ;# 
# 4834 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PSTR1CON equ 0296h ;# 
# 4878 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCPR2 equ 0298h ;# 
# 4885 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCPR2L equ 0298h ;# 
# 4905 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCPR2H equ 0299h ;# 
# 4925 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCP2CON equ 029Ah ;# 
# 5007 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PWM2CON equ 029Bh ;# 
# 5077 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCP2AS equ 029Ch ;# 
# 5159 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PSTR2CON equ 029Dh ;# 
# 5203 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCPTMRS0 equ 029Eh ;# 
# 5208 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCPTMRS equ 029Eh ;# 
# 5377 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCPR3 equ 0311h ;# 
# 5384 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCPR3L equ 0311h ;# 
# 5404 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCPR3H equ 0312h ;# 
# 5424 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCP3CON equ 0313h ;# 
# 5488 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCPR4 equ 0318h ;# 
# 5495 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCPR4L equ 0318h ;# 
# 5515 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCPR4H equ 0319h ;# 
# 5535 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCP4CON equ 031Ah ;# 
# 5599 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
INLVLA equ 038Ch ;# 
# 5657 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
INLVLB equ 038Dh ;# 
# 5705 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
INLVLC equ 038Eh ;# 
# 5775 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
IOCAP equ 0391h ;# 
# 5833 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
IOCAN equ 0392h ;# 
# 5891 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
IOCAF equ 0393h ;# 
# 5949 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
IOCBP equ 0394h ;# 
# 5997 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
IOCBN equ 0395h ;# 
# 6045 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
IOCBF equ 0396h ;# 
# 6093 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CLKRCON equ 039Ah ;# 
# 6169 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
MDCON equ 039Ch ;# 
# 6220 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
MDSRC equ 039Dh ;# 
# 6273 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
MDCARL equ 039Eh ;# 
# 6338 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
MDCARH equ 039Fh ;# 
# 6403 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
TMR4 equ 0415h ;# 
# 6423 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PR4 equ 0416h ;# 
# 6443 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
T4CON equ 0417h ;# 
# 6514 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
TMR6 equ 041Ch ;# 
# 6534 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PR6 equ 041Dh ;# 
# 6554 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
T6CON equ 041Eh ;# 
# 6625 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
STATUS_SHAD equ 0FE4h ;# 
# 6657 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
WREG_SHAD equ 0FE5h ;# 
# 6677 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
BSR_SHAD equ 0FE6h ;# 
# 6697 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PCLATH_SHAD equ 0FE7h ;# 
# 6717 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
FSR0L_SHAD equ 0FE8h ;# 
# 6737 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
FSR0H_SHAD equ 0FE9h ;# 
# 6757 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
FSR1L_SHAD equ 0FEAh ;# 
# 6777 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
FSR1H_SHAD equ 0FEBh ;# 
# 6797 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
STKPTR equ 0FEDh ;# 
# 6817 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
TOSL equ 0FEEh ;# 
# 6837 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
TOSH equ 0FEFh ;# 
# 55 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
INDF0 equ 00h ;# 
# 75 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
INDF1 equ 01h ;# 
# 95 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PCL equ 02h ;# 
# 115 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
STATUS equ 03h ;# 
# 178 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
FSR0L equ 04h ;# 
# 198 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
FSR0H equ 05h ;# 
# 222 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
FSR1L equ 06h ;# 
# 242 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
FSR1H equ 07h ;# 
# 262 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
BSR equ 08h ;# 
# 314 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
WREG equ 09h ;# 
# 334 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PCLATH equ 0Ah ;# 
# 354 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
INTCON equ 0Bh ;# 
# 432 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PORTA equ 0Ch ;# 
# 482 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PORTB equ 0Dh ;# 
# 521 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PORTC equ 0Eh ;# 
# 583 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PIR1 equ 011h ;# 
# 645 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PIR2 equ 012h ;# 
# 696 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PIR3 equ 013h ;# 
# 736 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
TMR0 equ 015h ;# 
# 756 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
TMR1 equ 016h ;# 
# 763 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
TMR1L equ 016h ;# 
# 783 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
TMR1H equ 017h ;# 
# 803 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
T1CON equ 018h ;# 
# 875 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
T1GCON equ 019h ;# 
# 952 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
TMR2 equ 01Ah ;# 
# 972 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PR2 equ 01Bh ;# 
# 992 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
T2CON equ 01Ch ;# 
# 1063 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CPSCON0 equ 01Eh ;# 
# 1123 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CPSCON1 equ 01Fh ;# 
# 1169 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
TRISA equ 08Ch ;# 
# 1219 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
TRISB equ 08Dh ;# 
# 1258 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
TRISC equ 08Eh ;# 
# 1320 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PIE1 equ 091h ;# 
# 1382 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PIE2 equ 092h ;# 
# 1433 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PIE3 equ 093h ;# 
# 1473 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
OPTION_REG equ 095h ;# 
# 1556 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PCON equ 096h ;# 
# 1607 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
WDTCON equ 097h ;# 
# 1666 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
OSCTUNE equ 098h ;# 
# 1724 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
OSCCON equ 099h ;# 
# 1796 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
OSCSTAT equ 09Ah ;# 
# 1858 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
ADRES equ 09Bh ;# 
# 1865 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
ADRESL equ 09Bh ;# 
# 1885 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
ADRESH equ 09Ch ;# 
# 1905 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
ADCON0 equ 09Dh ;# 
# 1985 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
ADCON1 equ 09Eh ;# 
# 2057 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
LATA equ 010Ch ;# 
# 2102 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
LATB equ 010Dh ;# 
# 2141 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
LATC equ 010Eh ;# 
# 2203 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CM1CON0 equ 0111h ;# 
# 2260 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CM1CON1 equ 0112h ;# 
# 2326 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CM2CON0 equ 0113h ;# 
# 2383 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CM2CON1 equ 0114h ;# 
# 2449 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CMOUT equ 0115h ;# 
# 2475 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
BORCON equ 0116h ;# 
# 2502 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
FVRCON equ 0117h ;# 
# 2578 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
DACCON0 equ 0118h ;# 
# 2639 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
DACCON1 equ 0119h ;# 
# 2691 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SRCON0 equ 011Ah ;# 
# 2762 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SRCON1 equ 011Bh ;# 
# 2824 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
APFCON0 equ 011Dh ;# 
# 2858 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
APFCON1 equ 011Eh ;# 
# 2896 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
ANSELA equ 018Ch ;# 
# 2943 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
ANSELB equ 018Dh ;# 
# 2979 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
ANSELC equ 018Eh ;# 
# 3038 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
EEADR equ 0191h ;# 
# 3045 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
EEADRL equ 0191h ;# 
# 3065 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
EEADRH equ 0192h ;# 
# 3085 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
EEDAT equ 0193h ;# 
# 3092 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
EEDATL equ 0193h ;# 
# 3097 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
EEDATA equ 0193h ;# 
# 3130 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
EEDATH equ 0194h ;# 
# 3150 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
EECON1 equ 0195h ;# 
# 3212 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
EECON2 equ 0196h ;# 
# 3232 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
RCREG equ 0199h ;# 
# 3252 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
TXREG equ 019Ah ;# 
# 3272 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SP1BRG equ 019Bh ;# 
# 3279 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SP1BRGL equ 019Bh ;# 
# 3284 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SPBRG equ 019Bh ;# 
# 3288 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SPBRGL equ 019Bh ;# 
# 3333 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SP1BRGH equ 019Ch ;# 
# 3338 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SPBRGH equ 019Ch ;# 
# 3371 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
RCSTA equ 019Dh ;# 
# 3433 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
TXSTA equ 019Eh ;# 
# 3495 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
BAUDCON equ 019Fh ;# 
# 3547 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
WPUA equ 020Ch ;# 
# 3605 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
WPUB equ 020Dh ;# 
# 3653 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
WPUC equ 020Eh ;# 
# 3723 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SSP1BUF equ 0211h ;# 
# 3728 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SSPBUF equ 0211h ;# 
# 3761 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SSP1ADD equ 0212h ;# 
# 3766 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SSPADD equ 0212h ;# 
# 3799 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SSP1MSK equ 0213h ;# 
# 3804 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SSPMSK equ 0213h ;# 
# 3837 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SSP1STAT equ 0214h ;# 
# 3842 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SSPSTAT equ 0214h ;# 
# 3959 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SSP1CON equ 0215h ;# 
# 3964 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SSP1CON1 equ 0215h ;# 
# 3968 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SSPCON1 equ 0215h ;# 
# 3972 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SSPCON equ 0215h ;# 
# 4229 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SSP1CON2 equ 0216h ;# 
# 4234 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SSPCON2 equ 0216h ;# 
# 4351 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SSP1CON3 equ 0217h ;# 
# 4356 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SSPCON3 equ 0217h ;# 
# 4473 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCPR1 equ 0291h ;# 
# 4480 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCPR1L equ 0291h ;# 
# 4500 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCPR1H equ 0292h ;# 
# 4520 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCP1CON equ 0293h ;# 
# 4602 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PWM1CON equ 0294h ;# 
# 4672 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCP1AS equ 0295h ;# 
# 4677 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
ECCP1AS equ 0295h ;# 
# 4834 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PSTR1CON equ 0296h ;# 
# 4878 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCPR2 equ 0298h ;# 
# 4885 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCPR2L equ 0298h ;# 
# 4905 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCPR2H equ 0299h ;# 
# 4925 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCP2CON equ 029Ah ;# 
# 5007 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PWM2CON equ 029Bh ;# 
# 5077 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCP2AS equ 029Ch ;# 
# 5159 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PSTR2CON equ 029Dh ;# 
# 5203 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCPTMRS0 equ 029Eh ;# 
# 5208 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCPTMRS equ 029Eh ;# 
# 5377 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCPR3 equ 0311h ;# 
# 5384 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCPR3L equ 0311h ;# 
# 5404 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCPR3H equ 0312h ;# 
# 5424 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCP3CON equ 0313h ;# 
# 5488 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCPR4 equ 0318h ;# 
# 5495 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCPR4L equ 0318h ;# 
# 5515 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCPR4H equ 0319h ;# 
# 5535 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCP4CON equ 031Ah ;# 
# 5599 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
INLVLA equ 038Ch ;# 
# 5657 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
INLVLB equ 038Dh ;# 
# 5705 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
INLVLC equ 038Eh ;# 
# 5775 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
IOCAP equ 0391h ;# 
# 5833 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
IOCAN equ 0392h ;# 
# 5891 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
IOCAF equ 0393h ;# 
# 5949 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
IOCBP equ 0394h ;# 
# 5997 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
IOCBN equ 0395h ;# 
# 6045 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
IOCBF equ 0396h ;# 
# 6093 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CLKRCON equ 039Ah ;# 
# 6169 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
MDCON equ 039Ch ;# 
# 6220 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
MDSRC equ 039Dh ;# 
# 6273 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
MDCARL equ 039Eh ;# 
# 6338 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
MDCARH equ 039Fh ;# 
# 6403 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
TMR4 equ 0415h ;# 
# 6423 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PR4 equ 0416h ;# 
# 6443 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
T4CON equ 0417h ;# 
# 6514 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
TMR6 equ 041Ch ;# 
# 6534 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PR6 equ 041Dh ;# 
# 6554 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
T6CON equ 041Eh ;# 
# 6625 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
STATUS_SHAD equ 0FE4h ;# 
# 6657 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
WREG_SHAD equ 0FE5h ;# 
# 6677 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
BSR_SHAD equ 0FE6h ;# 
# 6697 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PCLATH_SHAD equ 0FE7h ;# 
# 6717 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
FSR0L_SHAD equ 0FE8h ;# 
# 6737 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
FSR0H_SHAD equ 0FE9h ;# 
# 6757 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
FSR1L_SHAD equ 0FEAh ;# 
# 6777 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
FSR1H_SHAD equ 0FEBh ;# 
# 6797 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
STKPTR equ 0FEDh ;# 
# 6817 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
TOSL equ 0FEEh ;# 
# 6837 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
TOSH equ 0FEFh ;# 
# 55 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
INDF0 equ 00h ;# 
# 75 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
INDF1 equ 01h ;# 
# 95 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PCL equ 02h ;# 
# 115 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
STATUS equ 03h ;# 
# 178 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
FSR0L equ 04h ;# 
# 198 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
FSR0H equ 05h ;# 
# 222 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
FSR1L equ 06h ;# 
# 242 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
FSR1H equ 07h ;# 
# 262 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
BSR equ 08h ;# 
# 314 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
WREG equ 09h ;# 
# 334 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PCLATH equ 0Ah ;# 
# 354 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
INTCON equ 0Bh ;# 
# 432 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PORTA equ 0Ch ;# 
# 482 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PORTB equ 0Dh ;# 
# 521 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PORTC equ 0Eh ;# 
# 583 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PIR1 equ 011h ;# 
# 645 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PIR2 equ 012h ;# 
# 696 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PIR3 equ 013h ;# 
# 736 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
TMR0 equ 015h ;# 
# 756 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
TMR1 equ 016h ;# 
# 763 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
TMR1L equ 016h ;# 
# 783 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
TMR1H equ 017h ;# 
# 803 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
T1CON equ 018h ;# 
# 875 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
T1GCON equ 019h ;# 
# 952 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
TMR2 equ 01Ah ;# 
# 972 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PR2 equ 01Bh ;# 
# 992 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
T2CON equ 01Ch ;# 
# 1063 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CPSCON0 equ 01Eh ;# 
# 1123 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CPSCON1 equ 01Fh ;# 
# 1169 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
TRISA equ 08Ch ;# 
# 1219 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
TRISB equ 08Dh ;# 
# 1258 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
TRISC equ 08Eh ;# 
# 1320 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PIE1 equ 091h ;# 
# 1382 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PIE2 equ 092h ;# 
# 1433 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PIE3 equ 093h ;# 
# 1473 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
OPTION_REG equ 095h ;# 
# 1556 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PCON equ 096h ;# 
# 1607 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
WDTCON equ 097h ;# 
# 1666 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
OSCTUNE equ 098h ;# 
# 1724 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
OSCCON equ 099h ;# 
# 1796 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
OSCSTAT equ 09Ah ;# 
# 1858 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
ADRES equ 09Bh ;# 
# 1865 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
ADRESL equ 09Bh ;# 
# 1885 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
ADRESH equ 09Ch ;# 
# 1905 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
ADCON0 equ 09Dh ;# 
# 1985 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
ADCON1 equ 09Eh ;# 
# 2057 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
LATA equ 010Ch ;# 
# 2102 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
LATB equ 010Dh ;# 
# 2141 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
LATC equ 010Eh ;# 
# 2203 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CM1CON0 equ 0111h ;# 
# 2260 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CM1CON1 equ 0112h ;# 
# 2326 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CM2CON0 equ 0113h ;# 
# 2383 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CM2CON1 equ 0114h ;# 
# 2449 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CMOUT equ 0115h ;# 
# 2475 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
BORCON equ 0116h ;# 
# 2502 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
FVRCON equ 0117h ;# 
# 2578 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
DACCON0 equ 0118h ;# 
# 2639 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
DACCON1 equ 0119h ;# 
# 2691 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SRCON0 equ 011Ah ;# 
# 2762 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SRCON1 equ 011Bh ;# 
# 2824 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
APFCON0 equ 011Dh ;# 
# 2858 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
APFCON1 equ 011Eh ;# 
# 2896 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
ANSELA equ 018Ch ;# 
# 2943 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
ANSELB equ 018Dh ;# 
# 2979 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
ANSELC equ 018Eh ;# 
# 3038 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
EEADR equ 0191h ;# 
# 3045 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
EEADRL equ 0191h ;# 
# 3065 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
EEADRH equ 0192h ;# 
# 3085 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
EEDAT equ 0193h ;# 
# 3092 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
EEDATL equ 0193h ;# 
# 3097 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
EEDATA equ 0193h ;# 
# 3130 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
EEDATH equ 0194h ;# 
# 3150 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
EECON1 equ 0195h ;# 
# 3212 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
EECON2 equ 0196h ;# 
# 3232 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
RCREG equ 0199h ;# 
# 3252 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
TXREG equ 019Ah ;# 
# 3272 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SP1BRG equ 019Bh ;# 
# 3279 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SP1BRGL equ 019Bh ;# 
# 3284 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SPBRG equ 019Bh ;# 
# 3288 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SPBRGL equ 019Bh ;# 
# 3333 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SP1BRGH equ 019Ch ;# 
# 3338 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SPBRGH equ 019Ch ;# 
# 3371 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
RCSTA equ 019Dh ;# 
# 3433 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
TXSTA equ 019Eh ;# 
# 3495 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
BAUDCON equ 019Fh ;# 
# 3547 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
WPUA equ 020Ch ;# 
# 3605 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
WPUB equ 020Dh ;# 
# 3653 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
WPUC equ 020Eh ;# 
# 3723 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SSP1BUF equ 0211h ;# 
# 3728 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SSPBUF equ 0211h ;# 
# 3761 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SSP1ADD equ 0212h ;# 
# 3766 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SSPADD equ 0212h ;# 
# 3799 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SSP1MSK equ 0213h ;# 
# 3804 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SSPMSK equ 0213h ;# 
# 3837 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SSP1STAT equ 0214h ;# 
# 3842 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SSPSTAT equ 0214h ;# 
# 3959 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SSP1CON equ 0215h ;# 
# 3964 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SSP1CON1 equ 0215h ;# 
# 3968 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SSPCON1 equ 0215h ;# 
# 3972 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SSPCON equ 0215h ;# 
# 4229 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SSP1CON2 equ 0216h ;# 
# 4234 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SSPCON2 equ 0216h ;# 
# 4351 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SSP1CON3 equ 0217h ;# 
# 4356 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SSPCON3 equ 0217h ;# 
# 4473 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCPR1 equ 0291h ;# 
# 4480 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCPR1L equ 0291h ;# 
# 4500 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCPR1H equ 0292h ;# 
# 4520 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCP1CON equ 0293h ;# 
# 4602 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PWM1CON equ 0294h ;# 
# 4672 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCP1AS equ 0295h ;# 
# 4677 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
ECCP1AS equ 0295h ;# 
# 4834 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PSTR1CON equ 0296h ;# 
# 4878 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCPR2 equ 0298h ;# 
# 4885 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCPR2L equ 0298h ;# 
# 4905 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCPR2H equ 0299h ;# 
# 4925 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCP2CON equ 029Ah ;# 
# 5007 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PWM2CON equ 029Bh ;# 
# 5077 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCP2AS equ 029Ch ;# 
# 5159 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PSTR2CON equ 029Dh ;# 
# 5203 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCPTMRS0 equ 029Eh ;# 
# 5208 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCPTMRS equ 029Eh ;# 
# 5377 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCPR3 equ 0311h ;# 
# 5384 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCPR3L equ 0311h ;# 
# 5404 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCPR3H equ 0312h ;# 
# 5424 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCP3CON equ 0313h ;# 
# 5488 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCPR4 equ 0318h ;# 
# 5495 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCPR4L equ 0318h ;# 
# 5515 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCPR4H equ 0319h ;# 
# 5535 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCP4CON equ 031Ah ;# 
# 5599 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
INLVLA equ 038Ch ;# 
# 5657 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
INLVLB equ 038Dh ;# 
# 5705 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
INLVLC equ 038Eh ;# 
# 5775 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
IOCAP equ 0391h ;# 
# 5833 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
IOCAN equ 0392h ;# 
# 5891 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
IOCAF equ 0393h ;# 
# 5949 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
IOCBP equ 0394h ;# 
# 5997 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
IOCBN equ 0395h ;# 
# 6045 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
IOCBF equ 0396h ;# 
# 6093 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CLKRCON equ 039Ah ;# 
# 6169 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
MDCON equ 039Ch ;# 
# 6220 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
MDSRC equ 039Dh ;# 
# 6273 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
MDCARL equ 039Eh ;# 
# 6338 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
MDCARH equ 039Fh ;# 
# 6403 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
TMR4 equ 0415h ;# 
# 6423 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PR4 equ 0416h ;# 
# 6443 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
T4CON equ 0417h ;# 
# 6514 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
TMR6 equ 041Ch ;# 
# 6534 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PR6 equ 041Dh ;# 
# 6554 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
T6CON equ 041Eh ;# 
# 6625 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
STATUS_SHAD equ 0FE4h ;# 
# 6657 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
WREG_SHAD equ 0FE5h ;# 
# 6677 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
BSR_SHAD equ 0FE6h ;# 
# 6697 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PCLATH_SHAD equ 0FE7h ;# 
# 6717 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
FSR0L_SHAD equ 0FE8h ;# 
# 6737 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
FSR0H_SHAD equ 0FE9h ;# 
# 6757 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
FSR1L_SHAD equ 0FEAh ;# 
# 6777 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
FSR1H_SHAD equ 0FEBh ;# 
# 6797 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
STKPTR equ 0FEDh ;# 
# 6817 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
TOSL equ 0FEEh ;# 
# 6837 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
TOSH equ 0FEFh ;# 
# 55 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
INDF0 equ 00h ;# 
# 75 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
INDF1 equ 01h ;# 
# 95 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PCL equ 02h ;# 
# 115 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
STATUS equ 03h ;# 
# 178 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
FSR0L equ 04h ;# 
# 198 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
FSR0H equ 05h ;# 
# 222 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
FSR1L equ 06h ;# 
# 242 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
FSR1H equ 07h ;# 
# 262 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
BSR equ 08h ;# 
# 314 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
WREG equ 09h ;# 
# 334 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PCLATH equ 0Ah ;# 
# 354 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
INTCON equ 0Bh ;# 
# 432 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PORTA equ 0Ch ;# 
# 482 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PORTB equ 0Dh ;# 
# 521 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PORTC equ 0Eh ;# 
# 583 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PIR1 equ 011h ;# 
# 645 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PIR2 equ 012h ;# 
# 696 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PIR3 equ 013h ;# 
# 736 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
TMR0 equ 015h ;# 
# 756 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
TMR1 equ 016h ;# 
# 763 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
TMR1L equ 016h ;# 
# 783 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
TMR1H equ 017h ;# 
# 803 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
T1CON equ 018h ;# 
# 875 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
T1GCON equ 019h ;# 
# 952 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
TMR2 equ 01Ah ;# 
# 972 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PR2 equ 01Bh ;# 
# 992 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
T2CON equ 01Ch ;# 
# 1063 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CPSCON0 equ 01Eh ;# 
# 1123 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CPSCON1 equ 01Fh ;# 
# 1169 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
TRISA equ 08Ch ;# 
# 1219 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
TRISB equ 08Dh ;# 
# 1258 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
TRISC equ 08Eh ;# 
# 1320 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PIE1 equ 091h ;# 
# 1382 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PIE2 equ 092h ;# 
# 1433 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PIE3 equ 093h ;# 
# 1473 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
OPTION_REG equ 095h ;# 
# 1556 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PCON equ 096h ;# 
# 1607 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
WDTCON equ 097h ;# 
# 1666 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
OSCTUNE equ 098h ;# 
# 1724 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
OSCCON equ 099h ;# 
# 1796 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
OSCSTAT equ 09Ah ;# 
# 1858 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
ADRES equ 09Bh ;# 
# 1865 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
ADRESL equ 09Bh ;# 
# 1885 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
ADRESH equ 09Ch ;# 
# 1905 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
ADCON0 equ 09Dh ;# 
# 1985 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
ADCON1 equ 09Eh ;# 
# 2057 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
LATA equ 010Ch ;# 
# 2102 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
LATB equ 010Dh ;# 
# 2141 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
LATC equ 010Eh ;# 
# 2203 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CM1CON0 equ 0111h ;# 
# 2260 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CM1CON1 equ 0112h ;# 
# 2326 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CM2CON0 equ 0113h ;# 
# 2383 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CM2CON1 equ 0114h ;# 
# 2449 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CMOUT equ 0115h ;# 
# 2475 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
BORCON equ 0116h ;# 
# 2502 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
FVRCON equ 0117h ;# 
# 2578 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
DACCON0 equ 0118h ;# 
# 2639 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
DACCON1 equ 0119h ;# 
# 2691 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SRCON0 equ 011Ah ;# 
# 2762 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SRCON1 equ 011Bh ;# 
# 2824 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
APFCON0 equ 011Dh ;# 
# 2858 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
APFCON1 equ 011Eh ;# 
# 2896 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
ANSELA equ 018Ch ;# 
# 2943 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
ANSELB equ 018Dh ;# 
# 2979 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
ANSELC equ 018Eh ;# 
# 3038 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
EEADR equ 0191h ;# 
# 3045 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
EEADRL equ 0191h ;# 
# 3065 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
EEADRH equ 0192h ;# 
# 3085 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
EEDAT equ 0193h ;# 
# 3092 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
EEDATL equ 0193h ;# 
# 3097 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
EEDATA equ 0193h ;# 
# 3130 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
EEDATH equ 0194h ;# 
# 3150 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
EECON1 equ 0195h ;# 
# 3212 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
EECON2 equ 0196h ;# 
# 3232 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
RCREG equ 0199h ;# 
# 3252 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
TXREG equ 019Ah ;# 
# 3272 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SP1BRG equ 019Bh ;# 
# 3279 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SP1BRGL equ 019Bh ;# 
# 3284 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SPBRG equ 019Bh ;# 
# 3288 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SPBRGL equ 019Bh ;# 
# 3333 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SP1BRGH equ 019Ch ;# 
# 3338 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SPBRGH equ 019Ch ;# 
# 3371 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
RCSTA equ 019Dh ;# 
# 3433 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
TXSTA equ 019Eh ;# 
# 3495 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
BAUDCON equ 019Fh ;# 
# 3547 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
WPUA equ 020Ch ;# 
# 3605 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
WPUB equ 020Dh ;# 
# 3653 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
WPUC equ 020Eh ;# 
# 3723 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SSP1BUF equ 0211h ;# 
# 3728 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SSPBUF equ 0211h ;# 
# 3761 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SSP1ADD equ 0212h ;# 
# 3766 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SSPADD equ 0212h ;# 
# 3799 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SSP1MSK equ 0213h ;# 
# 3804 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SSPMSK equ 0213h ;# 
# 3837 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SSP1STAT equ 0214h ;# 
# 3842 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SSPSTAT equ 0214h ;# 
# 3959 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SSP1CON equ 0215h ;# 
# 3964 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SSP1CON1 equ 0215h ;# 
# 3968 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SSPCON1 equ 0215h ;# 
# 3972 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SSPCON equ 0215h ;# 
# 4229 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SSP1CON2 equ 0216h ;# 
# 4234 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SSPCON2 equ 0216h ;# 
# 4351 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SSP1CON3 equ 0217h ;# 
# 4356 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SSPCON3 equ 0217h ;# 
# 4473 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCPR1 equ 0291h ;# 
# 4480 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCPR1L equ 0291h ;# 
# 4500 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCPR1H equ 0292h ;# 
# 4520 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCP1CON equ 0293h ;# 
# 4602 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PWM1CON equ 0294h ;# 
# 4672 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCP1AS equ 0295h ;# 
# 4677 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
ECCP1AS equ 0295h ;# 
# 4834 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PSTR1CON equ 0296h ;# 
# 4878 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCPR2 equ 0298h ;# 
# 4885 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCPR2L equ 0298h ;# 
# 4905 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCPR2H equ 0299h ;# 
# 4925 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCP2CON equ 029Ah ;# 
# 5007 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PWM2CON equ 029Bh ;# 
# 5077 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCP2AS equ 029Ch ;# 
# 5159 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PSTR2CON equ 029Dh ;# 
# 5203 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCPTMRS0 equ 029Eh ;# 
# 5208 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCPTMRS equ 029Eh ;# 
# 5377 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCPR3 equ 0311h ;# 
# 5384 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCPR3L equ 0311h ;# 
# 5404 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCPR3H equ 0312h ;# 
# 5424 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCP3CON equ 0313h ;# 
# 5488 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCPR4 equ 0318h ;# 
# 5495 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCPR4L equ 0318h ;# 
# 5515 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCPR4H equ 0319h ;# 
# 5535 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCP4CON equ 031Ah ;# 
# 5599 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
INLVLA equ 038Ch ;# 
# 5657 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
INLVLB equ 038Dh ;# 
# 5705 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
INLVLC equ 038Eh ;# 
# 5775 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
IOCAP equ 0391h ;# 
# 5833 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
IOCAN equ 0392h ;# 
# 5891 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
IOCAF equ 0393h ;# 
# 5949 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
IOCBP equ 0394h ;# 
# 5997 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
IOCBN equ 0395h ;# 
# 6045 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
IOCBF equ 0396h ;# 
# 6093 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CLKRCON equ 039Ah ;# 
# 6169 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
MDCON equ 039Ch ;# 
# 6220 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
MDSRC equ 039Dh ;# 
# 6273 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
MDCARL equ 039Eh ;# 
# 6338 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
MDCARH equ 039Fh ;# 
# 6403 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
TMR4 equ 0415h ;# 
# 6423 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PR4 equ 0416h ;# 
# 6443 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
T4CON equ 0417h ;# 
# 6514 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
TMR6 equ 041Ch ;# 
# 6534 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PR6 equ 041Dh ;# 
# 6554 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
T6CON equ 041Eh ;# 
# 6625 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
STATUS_SHAD equ 0FE4h ;# 
# 6657 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
WREG_SHAD equ 0FE5h ;# 
# 6677 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
BSR_SHAD equ 0FE6h ;# 
# 6697 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PCLATH_SHAD equ 0FE7h ;# 
# 6717 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
FSR0L_SHAD equ 0FE8h ;# 
# 6737 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
FSR0H_SHAD equ 0FE9h ;# 
# 6757 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
FSR1L_SHAD equ 0FEAh ;# 
# 6777 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
FSR1H_SHAD equ 0FEBh ;# 
# 6797 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
STKPTR equ 0FEDh ;# 
# 6817 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
TOSL equ 0FEEh ;# 
# 6837 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
TOSH equ 0FEFh ;# 
# 55 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
INDF0 equ 00h ;# 
# 75 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
INDF1 equ 01h ;# 
# 95 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PCL equ 02h ;# 
# 115 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
STATUS equ 03h ;# 
# 178 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
FSR0L equ 04h ;# 
# 198 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
FSR0H equ 05h ;# 
# 222 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
FSR1L equ 06h ;# 
# 242 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
FSR1H equ 07h ;# 
# 262 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
BSR equ 08h ;# 
# 314 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
WREG equ 09h ;# 
# 334 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PCLATH equ 0Ah ;# 
# 354 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
INTCON equ 0Bh ;# 
# 432 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PORTA equ 0Ch ;# 
# 482 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PORTB equ 0Dh ;# 
# 521 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PORTC equ 0Eh ;# 
# 583 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PIR1 equ 011h ;# 
# 645 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PIR2 equ 012h ;# 
# 696 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PIR3 equ 013h ;# 
# 736 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
TMR0 equ 015h ;# 
# 756 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
TMR1 equ 016h ;# 
# 763 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
TMR1L equ 016h ;# 
# 783 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
TMR1H equ 017h ;# 
# 803 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
T1CON equ 018h ;# 
# 875 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
T1GCON equ 019h ;# 
# 952 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
TMR2 equ 01Ah ;# 
# 972 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PR2 equ 01Bh ;# 
# 992 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
T2CON equ 01Ch ;# 
# 1063 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CPSCON0 equ 01Eh ;# 
# 1123 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CPSCON1 equ 01Fh ;# 
# 1169 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
TRISA equ 08Ch ;# 
# 1219 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
TRISB equ 08Dh ;# 
# 1258 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
TRISC equ 08Eh ;# 
# 1320 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PIE1 equ 091h ;# 
# 1382 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PIE2 equ 092h ;# 
# 1433 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PIE3 equ 093h ;# 
# 1473 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
OPTION_REG equ 095h ;# 
# 1556 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PCON equ 096h ;# 
# 1607 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
WDTCON equ 097h ;# 
# 1666 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
OSCTUNE equ 098h ;# 
# 1724 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
OSCCON equ 099h ;# 
# 1796 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
OSCSTAT equ 09Ah ;# 
# 1858 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
ADRES equ 09Bh ;# 
# 1865 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
ADRESL equ 09Bh ;# 
# 1885 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
ADRESH equ 09Ch ;# 
# 1905 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
ADCON0 equ 09Dh ;# 
# 1985 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
ADCON1 equ 09Eh ;# 
# 2057 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
LATA equ 010Ch ;# 
# 2102 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
LATB equ 010Dh ;# 
# 2141 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
LATC equ 010Eh ;# 
# 2203 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CM1CON0 equ 0111h ;# 
# 2260 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CM1CON1 equ 0112h ;# 
# 2326 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CM2CON0 equ 0113h ;# 
# 2383 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CM2CON1 equ 0114h ;# 
# 2449 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CMOUT equ 0115h ;# 
# 2475 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
BORCON equ 0116h ;# 
# 2502 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
FVRCON equ 0117h ;# 
# 2578 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
DACCON0 equ 0118h ;# 
# 2639 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
DACCON1 equ 0119h ;# 
# 2691 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SRCON0 equ 011Ah ;# 
# 2762 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SRCON1 equ 011Bh ;# 
# 2824 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
APFCON0 equ 011Dh ;# 
# 2858 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
APFCON1 equ 011Eh ;# 
# 2896 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
ANSELA equ 018Ch ;# 
# 2943 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
ANSELB equ 018Dh ;# 
# 2979 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
ANSELC equ 018Eh ;# 
# 3038 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
EEADR equ 0191h ;# 
# 3045 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
EEADRL equ 0191h ;# 
# 3065 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
EEADRH equ 0192h ;# 
# 3085 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
EEDAT equ 0193h ;# 
# 3092 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
EEDATL equ 0193h ;# 
# 3097 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
EEDATA equ 0193h ;# 
# 3130 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
EEDATH equ 0194h ;# 
# 3150 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
EECON1 equ 0195h ;# 
# 3212 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
EECON2 equ 0196h ;# 
# 3232 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
RCREG equ 0199h ;# 
# 3252 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
TXREG equ 019Ah ;# 
# 3272 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SP1BRG equ 019Bh ;# 
# 3279 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SP1BRGL equ 019Bh ;# 
# 3284 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SPBRG equ 019Bh ;# 
# 3288 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SPBRGL equ 019Bh ;# 
# 3333 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SP1BRGH equ 019Ch ;# 
# 3338 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SPBRGH equ 019Ch ;# 
# 3371 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
RCSTA equ 019Dh ;# 
# 3433 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
TXSTA equ 019Eh ;# 
# 3495 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
BAUDCON equ 019Fh ;# 
# 3547 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
WPUA equ 020Ch ;# 
# 3605 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
WPUB equ 020Dh ;# 
# 3653 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
WPUC equ 020Eh ;# 
# 3723 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SSP1BUF equ 0211h ;# 
# 3728 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SSPBUF equ 0211h ;# 
# 3761 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SSP1ADD equ 0212h ;# 
# 3766 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SSPADD equ 0212h ;# 
# 3799 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SSP1MSK equ 0213h ;# 
# 3804 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SSPMSK equ 0213h ;# 
# 3837 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SSP1STAT equ 0214h ;# 
# 3842 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SSPSTAT equ 0214h ;# 
# 3959 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SSP1CON equ 0215h ;# 
# 3964 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SSP1CON1 equ 0215h ;# 
# 3968 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SSPCON1 equ 0215h ;# 
# 3972 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SSPCON equ 0215h ;# 
# 4229 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SSP1CON2 equ 0216h ;# 
# 4234 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SSPCON2 equ 0216h ;# 
# 4351 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SSP1CON3 equ 0217h ;# 
# 4356 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SSPCON3 equ 0217h ;# 
# 4473 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCPR1 equ 0291h ;# 
# 4480 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCPR1L equ 0291h ;# 
# 4500 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCPR1H equ 0292h ;# 
# 4520 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCP1CON equ 0293h ;# 
# 4602 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PWM1CON equ 0294h ;# 
# 4672 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCP1AS equ 0295h ;# 
# 4677 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
ECCP1AS equ 0295h ;# 
# 4834 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PSTR1CON equ 0296h ;# 
# 4878 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCPR2 equ 0298h ;# 
# 4885 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCPR2L equ 0298h ;# 
# 4905 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCPR2H equ 0299h ;# 
# 4925 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCP2CON equ 029Ah ;# 
# 5007 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PWM2CON equ 029Bh ;# 
# 5077 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCP2AS equ 029Ch ;# 
# 5159 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PSTR2CON equ 029Dh ;# 
# 5203 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCPTMRS0 equ 029Eh ;# 
# 5208 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCPTMRS equ 029Eh ;# 
# 5377 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCPR3 equ 0311h ;# 
# 5384 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCPR3L equ 0311h ;# 
# 5404 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCPR3H equ 0312h ;# 
# 5424 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCP3CON equ 0313h ;# 
# 5488 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCPR4 equ 0318h ;# 
# 5495 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCPR4L equ 0318h ;# 
# 5515 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCPR4H equ 0319h ;# 
# 5535 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCP4CON equ 031Ah ;# 
# 5599 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
INLVLA equ 038Ch ;# 
# 5657 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
INLVLB equ 038Dh ;# 
# 5705 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
INLVLC equ 038Eh ;# 
# 5775 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
IOCAP equ 0391h ;# 
# 5833 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
IOCAN equ 0392h ;# 
# 5891 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
IOCAF equ 0393h ;# 
# 5949 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
IOCBP equ 0394h ;# 
# 5997 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
IOCBN equ 0395h ;# 
# 6045 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
IOCBF equ 0396h ;# 
# 6093 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CLKRCON equ 039Ah ;# 
# 6169 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
MDCON equ 039Ch ;# 
# 6220 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
MDSRC equ 039Dh ;# 
# 6273 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
MDCARL equ 039Eh ;# 
# 6338 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
MDCARH equ 039Fh ;# 
# 6403 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
TMR4 equ 0415h ;# 
# 6423 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PR4 equ 0416h ;# 
# 6443 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
T4CON equ 0417h ;# 
# 6514 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
TMR6 equ 041Ch ;# 
# 6534 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PR6 equ 041Dh ;# 
# 6554 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
T6CON equ 041Eh ;# 
# 6625 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
STATUS_SHAD equ 0FE4h ;# 
# 6657 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
WREG_SHAD equ 0FE5h ;# 
# 6677 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
BSR_SHAD equ 0FE6h ;# 
# 6697 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PCLATH_SHAD equ 0FE7h ;# 
# 6717 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
FSR0L_SHAD equ 0FE8h ;# 
# 6737 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
FSR0H_SHAD equ 0FE9h ;# 
# 6757 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
FSR1L_SHAD equ 0FEAh ;# 
# 6777 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
FSR1H_SHAD equ 0FEBh ;# 
# 6797 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
STKPTR equ 0FEDh ;# 
# 6817 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
TOSL equ 0FEEh ;# 
# 6837 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
TOSH equ 0FEFh ;# 
# 55 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
INDF0 equ 00h ;# 
# 75 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
INDF1 equ 01h ;# 
# 95 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PCL equ 02h ;# 
# 115 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
STATUS equ 03h ;# 
# 178 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
FSR0L equ 04h ;# 
# 198 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
FSR0H equ 05h ;# 
# 222 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
FSR1L equ 06h ;# 
# 242 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
FSR1H equ 07h ;# 
# 262 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
BSR equ 08h ;# 
# 314 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
WREG equ 09h ;# 
# 334 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PCLATH equ 0Ah ;# 
# 354 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
INTCON equ 0Bh ;# 
# 432 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PORTA equ 0Ch ;# 
# 482 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PORTB equ 0Dh ;# 
# 521 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PORTC equ 0Eh ;# 
# 583 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PIR1 equ 011h ;# 
# 645 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PIR2 equ 012h ;# 
# 696 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PIR3 equ 013h ;# 
# 736 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
TMR0 equ 015h ;# 
# 756 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
TMR1 equ 016h ;# 
# 763 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
TMR1L equ 016h ;# 
# 783 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
TMR1H equ 017h ;# 
# 803 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
T1CON equ 018h ;# 
# 875 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
T1GCON equ 019h ;# 
# 952 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
TMR2 equ 01Ah ;# 
# 972 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PR2 equ 01Bh ;# 
# 992 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
T2CON equ 01Ch ;# 
# 1063 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CPSCON0 equ 01Eh ;# 
# 1123 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CPSCON1 equ 01Fh ;# 
# 1169 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
TRISA equ 08Ch ;# 
# 1219 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
TRISB equ 08Dh ;# 
# 1258 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
TRISC equ 08Eh ;# 
# 1320 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PIE1 equ 091h ;# 
# 1382 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PIE2 equ 092h ;# 
# 1433 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PIE3 equ 093h ;# 
# 1473 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
OPTION_REG equ 095h ;# 
# 1556 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PCON equ 096h ;# 
# 1607 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
WDTCON equ 097h ;# 
# 1666 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
OSCTUNE equ 098h ;# 
# 1724 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
OSCCON equ 099h ;# 
# 1796 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
OSCSTAT equ 09Ah ;# 
# 1858 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
ADRES equ 09Bh ;# 
# 1865 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
ADRESL equ 09Bh ;# 
# 1885 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
ADRESH equ 09Ch ;# 
# 1905 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
ADCON0 equ 09Dh ;# 
# 1985 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
ADCON1 equ 09Eh ;# 
# 2057 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
LATA equ 010Ch ;# 
# 2102 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
LATB equ 010Dh ;# 
# 2141 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
LATC equ 010Eh ;# 
# 2203 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CM1CON0 equ 0111h ;# 
# 2260 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CM1CON1 equ 0112h ;# 
# 2326 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CM2CON0 equ 0113h ;# 
# 2383 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CM2CON1 equ 0114h ;# 
# 2449 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CMOUT equ 0115h ;# 
# 2475 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
BORCON equ 0116h ;# 
# 2502 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
FVRCON equ 0117h ;# 
# 2578 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
DACCON0 equ 0118h ;# 
# 2639 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
DACCON1 equ 0119h ;# 
# 2691 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SRCON0 equ 011Ah ;# 
# 2762 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SRCON1 equ 011Bh ;# 
# 2824 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
APFCON0 equ 011Dh ;# 
# 2858 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
APFCON1 equ 011Eh ;# 
# 2896 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
ANSELA equ 018Ch ;# 
# 2943 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
ANSELB equ 018Dh ;# 
# 2979 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
ANSELC equ 018Eh ;# 
# 3038 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
EEADR equ 0191h ;# 
# 3045 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
EEADRL equ 0191h ;# 
# 3065 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
EEADRH equ 0192h ;# 
# 3085 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
EEDAT equ 0193h ;# 
# 3092 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
EEDATL equ 0193h ;# 
# 3097 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
EEDATA equ 0193h ;# 
# 3130 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
EEDATH equ 0194h ;# 
# 3150 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
EECON1 equ 0195h ;# 
# 3212 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
EECON2 equ 0196h ;# 
# 3232 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
RCREG equ 0199h ;# 
# 3252 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
TXREG equ 019Ah ;# 
# 3272 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SP1BRG equ 019Bh ;# 
# 3279 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SP1BRGL equ 019Bh ;# 
# 3284 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SPBRG equ 019Bh ;# 
# 3288 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SPBRGL equ 019Bh ;# 
# 3333 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SP1BRGH equ 019Ch ;# 
# 3338 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SPBRGH equ 019Ch ;# 
# 3371 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
RCSTA equ 019Dh ;# 
# 3433 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
TXSTA equ 019Eh ;# 
# 3495 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
BAUDCON equ 019Fh ;# 
# 3547 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
WPUA equ 020Ch ;# 
# 3605 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
WPUB equ 020Dh ;# 
# 3653 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
WPUC equ 020Eh ;# 
# 3723 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SSP1BUF equ 0211h ;# 
# 3728 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SSPBUF equ 0211h ;# 
# 3761 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SSP1ADD equ 0212h ;# 
# 3766 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SSPADD equ 0212h ;# 
# 3799 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SSP1MSK equ 0213h ;# 
# 3804 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SSPMSK equ 0213h ;# 
# 3837 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SSP1STAT equ 0214h ;# 
# 3842 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SSPSTAT equ 0214h ;# 
# 3959 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SSP1CON equ 0215h ;# 
# 3964 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SSP1CON1 equ 0215h ;# 
# 3968 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SSPCON1 equ 0215h ;# 
# 3972 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SSPCON equ 0215h ;# 
# 4229 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SSP1CON2 equ 0216h ;# 
# 4234 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SSPCON2 equ 0216h ;# 
# 4351 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SSP1CON3 equ 0217h ;# 
# 4356 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SSPCON3 equ 0217h ;# 
# 4473 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCPR1 equ 0291h ;# 
# 4480 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCPR1L equ 0291h ;# 
# 4500 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCPR1H equ 0292h ;# 
# 4520 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCP1CON equ 0293h ;# 
# 4602 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PWM1CON equ 0294h ;# 
# 4672 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCP1AS equ 0295h ;# 
# 4677 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
ECCP1AS equ 0295h ;# 
# 4834 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PSTR1CON equ 0296h ;# 
# 4878 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCPR2 equ 0298h ;# 
# 4885 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCPR2L equ 0298h ;# 
# 4905 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCPR2H equ 0299h ;# 
# 4925 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCP2CON equ 029Ah ;# 
# 5007 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PWM2CON equ 029Bh ;# 
# 5077 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCP2AS equ 029Ch ;# 
# 5159 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PSTR2CON equ 029Dh ;# 
# 5203 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCPTMRS0 equ 029Eh ;# 
# 5208 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCPTMRS equ 029Eh ;# 
# 5377 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCPR3 equ 0311h ;# 
# 5384 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCPR3L equ 0311h ;# 
# 5404 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCPR3H equ 0312h ;# 
# 5424 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCP3CON equ 0313h ;# 
# 5488 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCPR4 equ 0318h ;# 
# 5495 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCPR4L equ 0318h ;# 
# 5515 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCPR4H equ 0319h ;# 
# 5535 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCP4CON equ 031Ah ;# 
# 5599 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
INLVLA equ 038Ch ;# 
# 5657 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
INLVLB equ 038Dh ;# 
# 5705 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
INLVLC equ 038Eh ;# 
# 5775 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
IOCAP equ 0391h ;# 
# 5833 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
IOCAN equ 0392h ;# 
# 5891 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
IOCAF equ 0393h ;# 
# 5949 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
IOCBP equ 0394h ;# 
# 5997 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
IOCBN equ 0395h ;# 
# 6045 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
IOCBF equ 0396h ;# 
# 6093 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CLKRCON equ 039Ah ;# 
# 6169 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
MDCON equ 039Ch ;# 
# 6220 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
MDSRC equ 039Dh ;# 
# 6273 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
MDCARL equ 039Eh ;# 
# 6338 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
MDCARH equ 039Fh ;# 
# 6403 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
TMR4 equ 0415h ;# 
# 6423 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PR4 equ 0416h ;# 
# 6443 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
T4CON equ 0417h ;# 
# 6514 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
TMR6 equ 041Ch ;# 
# 6534 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PR6 equ 041Dh ;# 
# 6554 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
T6CON equ 041Eh ;# 
# 6625 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
STATUS_SHAD equ 0FE4h ;# 
# 6657 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
WREG_SHAD equ 0FE5h ;# 
# 6677 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
BSR_SHAD equ 0FE6h ;# 
# 6697 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PCLATH_SHAD equ 0FE7h ;# 
# 6717 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
FSR0L_SHAD equ 0FE8h ;# 
# 6737 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
FSR0H_SHAD equ 0FE9h ;# 
# 6757 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
FSR1L_SHAD equ 0FEAh ;# 
# 6777 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
FSR1H_SHAD equ 0FEBh ;# 
# 6797 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
STKPTR equ 0FEDh ;# 
# 6817 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
TOSL equ 0FEEh ;# 
# 6837 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
TOSH equ 0FEFh ;# 
# 55 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
INDF0 equ 00h ;# 
# 75 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
INDF1 equ 01h ;# 
# 95 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PCL equ 02h ;# 
# 115 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
STATUS equ 03h ;# 
# 178 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
FSR0L equ 04h ;# 
# 198 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
FSR0H equ 05h ;# 
# 222 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
FSR1L equ 06h ;# 
# 242 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
FSR1H equ 07h ;# 
# 262 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
BSR equ 08h ;# 
# 314 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
WREG equ 09h ;# 
# 334 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PCLATH equ 0Ah ;# 
# 354 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
INTCON equ 0Bh ;# 
# 432 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PORTA equ 0Ch ;# 
# 482 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PORTB equ 0Dh ;# 
# 521 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PORTC equ 0Eh ;# 
# 583 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PIR1 equ 011h ;# 
# 645 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PIR2 equ 012h ;# 
# 696 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PIR3 equ 013h ;# 
# 736 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
TMR0 equ 015h ;# 
# 756 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
TMR1 equ 016h ;# 
# 763 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
TMR1L equ 016h ;# 
# 783 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
TMR1H equ 017h ;# 
# 803 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
T1CON equ 018h ;# 
# 875 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
T1GCON equ 019h ;# 
# 952 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
TMR2 equ 01Ah ;# 
# 972 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PR2 equ 01Bh ;# 
# 992 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
T2CON equ 01Ch ;# 
# 1063 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CPSCON0 equ 01Eh ;# 
# 1123 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CPSCON1 equ 01Fh ;# 
# 1169 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
TRISA equ 08Ch ;# 
# 1219 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
TRISB equ 08Dh ;# 
# 1258 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
TRISC equ 08Eh ;# 
# 1320 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PIE1 equ 091h ;# 
# 1382 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PIE2 equ 092h ;# 
# 1433 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PIE3 equ 093h ;# 
# 1473 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
OPTION_REG equ 095h ;# 
# 1556 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PCON equ 096h ;# 
# 1607 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
WDTCON equ 097h ;# 
# 1666 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
OSCTUNE equ 098h ;# 
# 1724 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
OSCCON equ 099h ;# 
# 1796 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
OSCSTAT equ 09Ah ;# 
# 1858 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
ADRES equ 09Bh ;# 
# 1865 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
ADRESL equ 09Bh ;# 
# 1885 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
ADRESH equ 09Ch ;# 
# 1905 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
ADCON0 equ 09Dh ;# 
# 1985 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
ADCON1 equ 09Eh ;# 
# 2057 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
LATA equ 010Ch ;# 
# 2102 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
LATB equ 010Dh ;# 
# 2141 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
LATC equ 010Eh ;# 
# 2203 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CM1CON0 equ 0111h ;# 
# 2260 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CM1CON1 equ 0112h ;# 
# 2326 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CM2CON0 equ 0113h ;# 
# 2383 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CM2CON1 equ 0114h ;# 
# 2449 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CMOUT equ 0115h ;# 
# 2475 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
BORCON equ 0116h ;# 
# 2502 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
FVRCON equ 0117h ;# 
# 2578 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
DACCON0 equ 0118h ;# 
# 2639 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
DACCON1 equ 0119h ;# 
# 2691 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SRCON0 equ 011Ah ;# 
# 2762 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SRCON1 equ 011Bh ;# 
# 2824 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
APFCON0 equ 011Dh ;# 
# 2858 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
APFCON1 equ 011Eh ;# 
# 2896 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
ANSELA equ 018Ch ;# 
# 2943 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
ANSELB equ 018Dh ;# 
# 2979 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
ANSELC equ 018Eh ;# 
# 3038 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
EEADR equ 0191h ;# 
# 3045 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
EEADRL equ 0191h ;# 
# 3065 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
EEADRH equ 0192h ;# 
# 3085 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
EEDAT equ 0193h ;# 
# 3092 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
EEDATL equ 0193h ;# 
# 3097 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
EEDATA equ 0193h ;# 
# 3130 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
EEDATH equ 0194h ;# 
# 3150 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
EECON1 equ 0195h ;# 
# 3212 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
EECON2 equ 0196h ;# 
# 3232 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
RCREG equ 0199h ;# 
# 3252 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
TXREG equ 019Ah ;# 
# 3272 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SP1BRG equ 019Bh ;# 
# 3279 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SP1BRGL equ 019Bh ;# 
# 3284 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SPBRG equ 019Bh ;# 
# 3288 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SPBRGL equ 019Bh ;# 
# 3333 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SP1BRGH equ 019Ch ;# 
# 3338 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SPBRGH equ 019Ch ;# 
# 3371 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
RCSTA equ 019Dh ;# 
# 3433 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
TXSTA equ 019Eh ;# 
# 3495 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
BAUDCON equ 019Fh ;# 
# 3547 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
WPUA equ 020Ch ;# 
# 3605 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
WPUB equ 020Dh ;# 
# 3653 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
WPUC equ 020Eh ;# 
# 3723 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SSP1BUF equ 0211h ;# 
# 3728 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SSPBUF equ 0211h ;# 
# 3761 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SSP1ADD equ 0212h ;# 
# 3766 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SSPADD equ 0212h ;# 
# 3799 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SSP1MSK equ 0213h ;# 
# 3804 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SSPMSK equ 0213h ;# 
# 3837 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SSP1STAT equ 0214h ;# 
# 3842 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SSPSTAT equ 0214h ;# 
# 3959 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SSP1CON equ 0215h ;# 
# 3964 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SSP1CON1 equ 0215h ;# 
# 3968 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SSPCON1 equ 0215h ;# 
# 3972 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SSPCON equ 0215h ;# 
# 4229 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SSP1CON2 equ 0216h ;# 
# 4234 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SSPCON2 equ 0216h ;# 
# 4351 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SSP1CON3 equ 0217h ;# 
# 4356 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SSPCON3 equ 0217h ;# 
# 4473 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCPR1 equ 0291h ;# 
# 4480 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCPR1L equ 0291h ;# 
# 4500 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCPR1H equ 0292h ;# 
# 4520 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCP1CON equ 0293h ;# 
# 4602 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PWM1CON equ 0294h ;# 
# 4672 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCP1AS equ 0295h ;# 
# 4677 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
ECCP1AS equ 0295h ;# 
# 4834 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PSTR1CON equ 0296h ;# 
# 4878 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCPR2 equ 0298h ;# 
# 4885 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCPR2L equ 0298h ;# 
# 4905 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCPR2H equ 0299h ;# 
# 4925 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCP2CON equ 029Ah ;# 
# 5007 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PWM2CON equ 029Bh ;# 
# 5077 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCP2AS equ 029Ch ;# 
# 5159 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PSTR2CON equ 029Dh ;# 
# 5203 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCPTMRS0 equ 029Eh ;# 
# 5208 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCPTMRS equ 029Eh ;# 
# 5377 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCPR3 equ 0311h ;# 
# 5384 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCPR3L equ 0311h ;# 
# 5404 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCPR3H equ 0312h ;# 
# 5424 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCP3CON equ 0313h ;# 
# 5488 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCPR4 equ 0318h ;# 
# 5495 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCPR4L equ 0318h ;# 
# 5515 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCPR4H equ 0319h ;# 
# 5535 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCP4CON equ 031Ah ;# 
# 5599 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
INLVLA equ 038Ch ;# 
# 5657 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
INLVLB equ 038Dh ;# 
# 5705 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
INLVLC equ 038Eh ;# 
# 5775 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
IOCAP equ 0391h ;# 
# 5833 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
IOCAN equ 0392h ;# 
# 5891 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
IOCAF equ 0393h ;# 
# 5949 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
IOCBP equ 0394h ;# 
# 5997 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
IOCBN equ 0395h ;# 
# 6045 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
IOCBF equ 0396h ;# 
# 6093 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CLKRCON equ 039Ah ;# 
# 6169 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
MDCON equ 039Ch ;# 
# 6220 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
MDSRC equ 039Dh ;# 
# 6273 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
MDCARL equ 039Eh ;# 
# 6338 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
MDCARH equ 039Fh ;# 
# 6403 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
TMR4 equ 0415h ;# 
# 6423 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PR4 equ 0416h ;# 
# 6443 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
T4CON equ 0417h ;# 
# 6514 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
TMR6 equ 041Ch ;# 
# 6534 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PR6 equ 041Dh ;# 
# 6554 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
T6CON equ 041Eh ;# 
# 6625 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
STATUS_SHAD equ 0FE4h ;# 
# 6657 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
WREG_SHAD equ 0FE5h ;# 
# 6677 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
BSR_SHAD equ 0FE6h ;# 
# 6697 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PCLATH_SHAD equ 0FE7h ;# 
# 6717 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
FSR0L_SHAD equ 0FE8h ;# 
# 6737 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
FSR0H_SHAD equ 0FE9h ;# 
# 6757 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
FSR1L_SHAD equ 0FEAh ;# 
# 6777 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
FSR1H_SHAD equ 0FEBh ;# 
# 6797 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
STKPTR equ 0FEDh ;# 
# 6817 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
TOSL equ 0FEEh ;# 
# 6837 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
TOSH equ 0FEFh ;# 
# 55 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
INDF0 equ 00h ;# 
# 75 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
INDF1 equ 01h ;# 
# 95 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PCL equ 02h ;# 
# 115 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
STATUS equ 03h ;# 
# 178 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
FSR0L equ 04h ;# 
# 198 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
FSR0H equ 05h ;# 
# 222 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
FSR1L equ 06h ;# 
# 242 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
FSR1H equ 07h ;# 
# 262 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
BSR equ 08h ;# 
# 314 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
WREG equ 09h ;# 
# 334 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PCLATH equ 0Ah ;# 
# 354 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
INTCON equ 0Bh ;# 
# 432 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PORTA equ 0Ch ;# 
# 482 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PORTB equ 0Dh ;# 
# 521 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PORTC equ 0Eh ;# 
# 583 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PIR1 equ 011h ;# 
# 645 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PIR2 equ 012h ;# 
# 696 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PIR3 equ 013h ;# 
# 736 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
TMR0 equ 015h ;# 
# 756 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
TMR1 equ 016h ;# 
# 763 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
TMR1L equ 016h ;# 
# 783 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
TMR1H equ 017h ;# 
# 803 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
T1CON equ 018h ;# 
# 875 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
T1GCON equ 019h ;# 
# 952 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
TMR2 equ 01Ah ;# 
# 972 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PR2 equ 01Bh ;# 
# 992 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
T2CON equ 01Ch ;# 
# 1063 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CPSCON0 equ 01Eh ;# 
# 1123 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CPSCON1 equ 01Fh ;# 
# 1169 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
TRISA equ 08Ch ;# 
# 1219 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
TRISB equ 08Dh ;# 
# 1258 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
TRISC equ 08Eh ;# 
# 1320 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PIE1 equ 091h ;# 
# 1382 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PIE2 equ 092h ;# 
# 1433 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PIE3 equ 093h ;# 
# 1473 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
OPTION_REG equ 095h ;# 
# 1556 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PCON equ 096h ;# 
# 1607 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
WDTCON equ 097h ;# 
# 1666 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
OSCTUNE equ 098h ;# 
# 1724 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
OSCCON equ 099h ;# 
# 1796 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
OSCSTAT equ 09Ah ;# 
# 1858 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
ADRES equ 09Bh ;# 
# 1865 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
ADRESL equ 09Bh ;# 
# 1885 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
ADRESH equ 09Ch ;# 
# 1905 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
ADCON0 equ 09Dh ;# 
# 1985 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
ADCON1 equ 09Eh ;# 
# 2057 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
LATA equ 010Ch ;# 
# 2102 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
LATB equ 010Dh ;# 
# 2141 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
LATC equ 010Eh ;# 
# 2203 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CM1CON0 equ 0111h ;# 
# 2260 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CM1CON1 equ 0112h ;# 
# 2326 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CM2CON0 equ 0113h ;# 
# 2383 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CM2CON1 equ 0114h ;# 
# 2449 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CMOUT equ 0115h ;# 
# 2475 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
BORCON equ 0116h ;# 
# 2502 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
FVRCON equ 0117h ;# 
# 2578 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
DACCON0 equ 0118h ;# 
# 2639 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
DACCON1 equ 0119h ;# 
# 2691 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SRCON0 equ 011Ah ;# 
# 2762 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SRCON1 equ 011Bh ;# 
# 2824 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
APFCON0 equ 011Dh ;# 
# 2858 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
APFCON1 equ 011Eh ;# 
# 2896 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
ANSELA equ 018Ch ;# 
# 2943 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
ANSELB equ 018Dh ;# 
# 2979 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
ANSELC equ 018Eh ;# 
# 3038 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
EEADR equ 0191h ;# 
# 3045 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
EEADRL equ 0191h ;# 
# 3065 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
EEADRH equ 0192h ;# 
# 3085 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
EEDAT equ 0193h ;# 
# 3092 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
EEDATL equ 0193h ;# 
# 3097 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
EEDATA equ 0193h ;# 
# 3130 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
EEDATH equ 0194h ;# 
# 3150 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
EECON1 equ 0195h ;# 
# 3212 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
EECON2 equ 0196h ;# 
# 3232 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
RCREG equ 0199h ;# 
# 3252 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
TXREG equ 019Ah ;# 
# 3272 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SP1BRG equ 019Bh ;# 
# 3279 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SP1BRGL equ 019Bh ;# 
# 3284 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SPBRG equ 019Bh ;# 
# 3288 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SPBRGL equ 019Bh ;# 
# 3333 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SP1BRGH equ 019Ch ;# 
# 3338 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SPBRGH equ 019Ch ;# 
# 3371 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
RCSTA equ 019Dh ;# 
# 3433 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
TXSTA equ 019Eh ;# 
# 3495 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
BAUDCON equ 019Fh ;# 
# 3547 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
WPUA equ 020Ch ;# 
# 3605 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
WPUB equ 020Dh ;# 
# 3653 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
WPUC equ 020Eh ;# 
# 3723 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SSP1BUF equ 0211h ;# 
# 3728 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SSPBUF equ 0211h ;# 
# 3761 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SSP1ADD equ 0212h ;# 
# 3766 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SSPADD equ 0212h ;# 
# 3799 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SSP1MSK equ 0213h ;# 
# 3804 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SSPMSK equ 0213h ;# 
# 3837 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SSP1STAT equ 0214h ;# 
# 3842 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SSPSTAT equ 0214h ;# 
# 3959 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SSP1CON equ 0215h ;# 
# 3964 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SSP1CON1 equ 0215h ;# 
# 3968 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SSPCON1 equ 0215h ;# 
# 3972 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SSPCON equ 0215h ;# 
# 4229 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SSP1CON2 equ 0216h ;# 
# 4234 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SSPCON2 equ 0216h ;# 
# 4351 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SSP1CON3 equ 0217h ;# 
# 4356 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
SSPCON3 equ 0217h ;# 
# 4473 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCPR1 equ 0291h ;# 
# 4480 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCPR1L equ 0291h ;# 
# 4500 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCPR1H equ 0292h ;# 
# 4520 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCP1CON equ 0293h ;# 
# 4602 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PWM1CON equ 0294h ;# 
# 4672 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCP1AS equ 0295h ;# 
# 4677 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
ECCP1AS equ 0295h ;# 
# 4834 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PSTR1CON equ 0296h ;# 
# 4878 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCPR2 equ 0298h ;# 
# 4885 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCPR2L equ 0298h ;# 
# 4905 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCPR2H equ 0299h ;# 
# 4925 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCP2CON equ 029Ah ;# 
# 5007 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PWM2CON equ 029Bh ;# 
# 5077 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCP2AS equ 029Ch ;# 
# 5159 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PSTR2CON equ 029Dh ;# 
# 5203 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCPTMRS0 equ 029Eh ;# 
# 5208 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCPTMRS equ 029Eh ;# 
# 5377 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCPR3 equ 0311h ;# 
# 5384 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCPR3L equ 0311h ;# 
# 5404 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCPR3H equ 0312h ;# 
# 5424 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCP3CON equ 0313h ;# 
# 5488 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCPR4 equ 0318h ;# 
# 5495 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCPR4L equ 0318h ;# 
# 5515 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCPR4H equ 0319h ;# 
# 5535 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CCP4CON equ 031Ah ;# 
# 5599 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
INLVLA equ 038Ch ;# 
# 5657 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
INLVLB equ 038Dh ;# 
# 5705 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
INLVLC equ 038Eh ;# 
# 5775 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
IOCAP equ 0391h ;# 
# 5833 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
IOCAN equ 0392h ;# 
# 5891 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
IOCAF equ 0393h ;# 
# 5949 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
IOCBP equ 0394h ;# 
# 5997 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
IOCBN equ 0395h ;# 
# 6045 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
IOCBF equ 0396h ;# 
# 6093 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
CLKRCON equ 039Ah ;# 
# 6169 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
MDCON equ 039Ch ;# 
# 6220 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
MDSRC equ 039Dh ;# 
# 6273 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
MDCARL equ 039Eh ;# 
# 6338 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
MDCARH equ 039Fh ;# 
# 6403 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
TMR4 equ 0415h ;# 
# 6423 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PR4 equ 0416h ;# 
# 6443 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
T4CON equ 0417h ;# 
# 6514 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
TMR6 equ 041Ch ;# 
# 6534 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PR6 equ 041Dh ;# 
# 6554 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
T6CON equ 041Eh ;# 
# 6625 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
STATUS_SHAD equ 0FE4h ;# 
# 6657 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
WREG_SHAD equ 0FE5h ;# 
# 6677 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
BSR_SHAD equ 0FE6h ;# 
# 6697 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
PCLATH_SHAD equ 0FE7h ;# 
# 6717 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
FSR0L_SHAD equ 0FE8h ;# 
# 6737 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
FSR0H_SHAD equ 0FE9h ;# 
# 6757 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
FSR1L_SHAD equ 0FEAh ;# 
# 6777 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
FSR1H_SHAD equ 0FEBh ;# 
# 6797 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
STKPTR equ 0FEDh ;# 
# 6817 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
TOSL equ 0FEEh ;# 
# 6837 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f1828.h"
TOSH equ 0FEFh ;# 
	debug_source C
	FNCALL	_main,_Network_begin
	FNCALL	_main,_RF24_isChipConnected
	FNCALL	_main,_RF24_write
	FNCALL	_main,_SPI_initialize
	FNCALL	_main,_internet_setAddress
	FNCALL	_main,_internet_setChannel
	FNCALL	_main,_internet_setNetworkPipe
	FNCALL	_internet_setChannel,_RF24_setChannel
	FNCALL	_internet_setAddress,_internet_calculateMask
	FNCALL	_internet_setAddress,_internet_setNetworkPipe
	FNCALL	_internet_setNetworkPipe,_RF24_openReadingPipe
	FNCALL	_internet_setNetworkPipe,_memcpy
	FNCALL	_RF24_write,_RF24_flush_tx
	FNCALL	_RF24_write,_RF24_get_status
	FNCALL	_RF24_write,_RF24_write_register
	FNCALL	_RF24_write,_SPI_exchangeByte
	FNCALL	_RF24_get_status,_SPI_exchangeByte
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
	global	_network_pipe
psect	idataBANK0,class=CODE,space=0,delta=2,noexec
global __pidataBANK0
__pidataBANK0:
	file	"F:/GitHub/Graduation-Project/Lib-test/nRF1828/app/src/main.c"
	line	27

;initializer for _network_pipe
	retlw	low(0)
	retlw	0FCh
	retlw	0B0h
	retlw	0E8h
	retlw	0F5h
psect	stringtext1,class=STRCODE,delta=2,noexec
global __pstringtext1
__pstringtext1:
	file	"F:/GitHub/Graduation-Project/Lib-test/nRF1828/libs/logline.c"
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
psect	stringtext2,class=STRCODE,delta=2,noexec
global __pstringtext2
__pstringtext2:
	file	"F:/GitHub/Graduation-Project/Lib-test/nRF1828/app/src/main.c"
	line	28
_address:
	retlw	030h
	retlw	030h
	retlw	030h
	retlw	030h
	retlw	031h
	retlw	low(0)
	global __end_of_address
__end_of_address:
psect	stringtext3,class=STRCODE,delta=2,noexec
global __pstringtext3
__pstringtext3:
	file	"F:/GitHub/Graduation-Project/Lib-test/nRF1828/libs/include\logline.h"
	line	17
_LOGLINE_FAIL:
	retlw	046h
	retlw	041h
	retlw	049h
	retlw	04Ch
	retlw	low(0)
	global __end_of_LOGLINE_FAIL
__end_of_LOGLINE_FAIL:
psect	stringtext4,class=STRCODE,delta=2,noexec
global __pstringtext4
__pstringtext4:
	file	"F:/GitHub/Graduation-Project/Lib-test/nRF1828/libs/include\internet.h"
	line	14
_BROADCAST_PIPE:
	retlw	0F9h
	retlw	036h
	retlw	0CDh
	retlw	0ACh
	retlw	0E7h
	global __end_of_BROADCAST_PIPE
__end_of_BROADCAST_PIPE:
psect	stringtext5,class=STRCODE,delta=2,noexec
global __pstringtext5
__pstringtext5:
	file	"F:/GitHub/Graduation-Project/Lib-test/nRF1828/libs/include\logline.h"
	line	16
_LOGLINE_OK:
	retlw	04Fh
	retlw	04Bh
	retlw	low(0)
	global __end_of_LOGLINE_OK
__end_of_LOGLINE_OK:
	global	main@text
psect	stringtext6,class=STRCODE,delta=2,noexec
global __pstringtext6
__pstringtext6:
	file	"F:/GitHub/Graduation-Project/Lib-test/nRF1828/app/src/main.c"
	line	56
main@text:
	retlw	048h
	retlw	065h
	retlw	06Ch
	retlw	06Ch
	retlw	06Fh
	retlw	020h
	retlw	057h
	retlw	06Fh
	retlw	072h
	retlw	06Ch
	retlw	064h
	retlw	low(0)
	global __end_ofmain@text
__end_ofmain@text:
	global	_BASE_PIPE
psect	stringtext7,class=STRCODE,delta=2,noexec
global __pstringtext7
__pstringtext7:
	file	"F:/GitHub/Graduation-Project/Lib-test/nRF1828/libs/include\internet.h"
	line	13
_BASE_PIPE:
	retlw	059h
	retlw	0ECh
	retlw	0ADh
	retlw	0FCh
	retlw	084h
	global __end_of_BASE_PIPE
__end_of_BASE_PIPE:
	global	main@text
	global	_BASE_PIPE
	global	_node
	global	_RF24_attr_config
	global	_RF24_attr_status
	global	_buffer_rx
	global	_networkInfo
	global	_SSP1IF
_SSP1IF	set	0x8B
	global	_RC6
_RC6	set	0x76
	global	_RC5
_RC5	set	0x75
	global	_RC3
_RC3	set	0x73
	global	_OSCCON
_OSCCON	set	0x99
	global	_TRISB6
_TRISB6	set	0x46E
	global	_TRISC7
_TRISC7	set	0x477
	global	_TRISB4
_TRISB4	set	0x46C
	global	_TRISC5
_TRISC5	set	0x475
	global	_TRISC6
_TRISC6	set	0x476
	global	_TRISC3
_TRISC3	set	0x473
	global	_ANSELB
_ANSELB	set	0x18D
	global	_SSP1BUF
_SSP1BUF	set	0x211
	global	_SSP1CON
_SSP1CON	set	0x215
	global	_SSP1STAT
_SSP1STAT	set	0x214
	global	_SSPEN
_SSPEN	set	0x10AD
	
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
psect	stringtext8,class=STRCODE,delta=2,noexec
global __pstringtext8
__pstringtext8:
	
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
psect	stringtext9,class=STRCODE,delta=2,noexec
global __pstringtext9
__pstringtext9:
	
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
psect	stringtext10,class=STRCODE,delta=2,noexec
global __pstringtext10
__pstringtext10:
	
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
psect	stringtext11,class=STRCODE,delta=2,noexec
global __pstringtext11
__pstringtext11:
	
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
psect	stringtext12,class=STRCODE,delta=2,noexec
global __pstringtext12
__pstringtext12:
	
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
psect	stringtext13,class=STRCODE,delta=2,noexec
global __pstringtext13
__pstringtext13:
	
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
psect	stringtext14,class=STRCODE,delta=2,noexec
global __pstringtext14
__pstringtext14:
	
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
psect	stringtext15,class=STRCODE,delta=2,noexec
global __pstringtext15
__pstringtext15:
	
STR_3:	
	retlw	67	;'C'
	retlw	79	;'O'
	retlw	78	;'N'
	retlw	70	;'F'
	retlw	73	;'I'
	retlw	71	;'G'
	retlw	0
psect	stringtext16,class=STRCODE,delta=2,noexec
global __pstringtext16
__pstringtext16:
	
STR_10:	
	retlw	83	;'S'
	retlw	84	;'T'
	retlw	65	;'A'
	retlw	84	;'T'
	retlw	85	;'U'
	retlw	83	;'S'
	retlw	0
psect	stringtext17,class=STRCODE,delta=2,noexec
global __pstringtext17
__pstringtext17:
	
STR_12:	
	retlw	82	;'R'
	retlw	88	;'X'
	retlw	95	;'_'
	retlw	80	;'P'
	retlw	48	;'0'
	retlw	0
psect	stringtext18,class=STRCODE,delta=2,noexec
global __pstringtext18
__pstringtext18:
	
STR_13:	
	retlw	82	;'R'
	retlw	88	;'X'
	retlw	95	;'_'
	retlw	80	;'P'
	retlw	49	;'1'
	retlw	0
psect	stringtext19,class=STRCODE,delta=2,noexec
global __pstringtext19
__pstringtext19:
	
STR_14:	
	retlw	82	;'R'
	retlw	88	;'X'
	retlw	95	;'_'
	retlw	80	;'P'
	retlw	50	;'2'
	retlw	0
psect	stringtext20,class=STRCODE,delta=2,noexec
global __pstringtext20
__pstringtext20:
	
STR_15:	
	retlw	82	;'R'
	retlw	88	;'X'
	retlw	95	;'_'
	retlw	80	;'P'
	retlw	51	;'3'
	retlw	0
psect	stringtext21,class=STRCODE,delta=2,noexec
global __pstringtext21
__pstringtext21:
	
STR_16:	
	retlw	82	;'R'
	retlw	88	;'X'
	retlw	95	;'_'
	retlw	80	;'P'
	retlw	52	;'4'
	retlw	0
psect	stringtext22,class=STRCODE,delta=2,noexec
global __pstringtext22
__pstringtext22:
	
STR_17:	
	retlw	82	;'R'
	retlw	88	;'X'
	retlw	95	;'_'
	retlw	80	;'P'
	retlw	53	;'5'
	retlw	0
psect	stringtext23,class=STRCODE,delta=2,noexec
global __pstringtext23
__pstringtext23:
	
STR_4:	
	retlw	69	;'E'
	retlw	78	;'N'
	retlw	95	;'_'
	retlw	65	;'A'
	retlw	65	;'A'
	retlw	0
psect	stringtext24,class=STRCODE,delta=2,noexec
global __pstringtext24
__pstringtext24:
	
STR_8:	
	retlw	82	;'R'
	retlw	70	;'F'
	retlw	95	;'_'
	retlw	67	;'C'
	retlw	72	;'H'
	retlw	0
psect	stringtext25,class=STRCODE,delta=2,noexec
global __pstringtext25
__pstringtext25:
STR_18	equ	STR_11+8
; #config settings
	config pad_punits      = on
	config apply_mask      = off
	config ignore_cmsgs    = off
	config default_configs = off
	config default_idlocs  = off
	config FOSC = "INTOSC"
	config WDTE = "OFF"
	config PWRTE = "ON"
	config MCLRE = "ON"
	config CP = "OFF"
	config CPD = "OFF"
	config BOREN = "OFF"
	config CLKOUTEN = "OFF"
	config IESO = "OFF"
	config FCMEN = "ON"
	file	"app.s"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_node:
       ds      5

_RF24_attr_config:
       ds      1

_RF24_attr_status:
       ds      1

_buffer_rx:
       ds      32

_networkInfo:
       ds      6

psect	dataBANK0,class=BANK0,space=1,noexec
global __pdataBANK0
__pdataBANK0:
	file	"F:/GitHub/Graduation-Project/Lib-test/nRF1828/app/src/main.c"
	line	27
_network_pipe:
       ds      5

psect	bssBANK1,class=BANK1,space=1,noexec
global __pbssBANK1
__pbssBANK1:
_buffer_tx:
       ds      32

	file	"app.s"
	line	#
; Initialize objects allocated to BANK0
	global __pidataBANK0,__pdataBANK0
psect cinit,class=CODE,delta=2,merge=1
	movlw low(__pidataBANK0)
	movwf fsr0l
	movlw high(__pidataBANK0)|80h
	movwf fsr0h
	moviw fsr0++
	movwf (__pdataBANK0+0)&07Fh
	moviw fsr0++
	movwf (__pdataBANK0+1)&07Fh
	moviw fsr0++
	movwf (__pdataBANK0+2)&07Fh
	moviw fsr0++
	movwf (__pdataBANK0+3)&07Fh
	moviw fsr0++
	movwf (__pdataBANK0+4)&07Fh
	line	#
psect clrtext,class=CODE,delta=2
global clear_ram0
;	Called with FSR0 containing the base address, and
;	WREG with the size to clear
clear_ram0:
	clrwdt			;clear the watchdog before getting into this loop
clrloop0:
	clrf	indf0		;clear RAM location pointed to by FSR
	addfsr	0,1
	decfsz wreg		;Have we reached the end of clearing yet?
	goto clrloop0	;have we reached the end yet?
	retlw	0		;all done for this memory range, return
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	global __pbssBANK0
	movlw	low(__pbssBANK0)
	movwf	fsr0l
	movlw	high(__pbssBANK0)
	movwf	fsr0h
	movlw	02Dh
	fcall	clear_ram0
; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2,merge=1
	global __pbssBANK1
	movlw	low(__pbssBANK1)
	movwf	fsr0l
	movlw	high(__pbssBANK1)
	movwf	fsr0h
	movlw	020h
	fcall	clear_ram0
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:
movlb 0
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_SPI_initialize:	; 1 bytes @ 0x0
??_SPI_initialize:	; 1 bytes @ 0x0
?_Network_begin:	; 1 bytes @ 0x0
?_internet_setChannel:	; 1 bytes @ 0x0
?_internet_setNetworkPipe:	; 1 bytes @ 0x0
?_internet_setAddress:	; 1 bytes @ 0x0
?_RF24_isChipConnected:	; 1 bytes @ 0x0
?_RF24_setChannel:	; 1 bytes @ 0x0
?_memcpy:	; 1 bytes @ 0x0
?_internet_calculateMask:	; 1 bytes @ 0x0
??_internet_calculateMask:	; 1 bytes @ 0x0
?_RF24_startListening:	; 1 bytes @ 0x0
?_RF24_begin:	; 1 bytes @ 0x0
?_RF24_setAddressWidth:	; 1 bytes @ 0x0
?_RF24_enableDynamicPayloads:	; 1 bytes @ 0x0
?_RF24_setDataRate:	; 1 bytes @ 0x0
?_RF24_setCRCLength:	; 1 bytes @ 0x0
?_RF24_setAutoAck:	; 1 bytes @ 0x0
?_RF24_setPayloadSize:	; 1 bytes @ 0x0
?_SPI_exchangeByte:	; 1 bytes @ 0x0
??_SPI_exchangeByte:	; 1 bytes @ 0x0
?_RF24_setPALevel:	; 1 bytes @ 0x0
?_RF24_flush_rx:	; 1 bytes @ 0x0
?_RF24_flush_tx:	; 1 bytes @ 0x0
?_RF24_powerUp:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
?_RF24_read_register:	; 1 bytes @ 0x0
?_RF24_get_status:	; 1 bytes @ 0x0
	global	internet_calculateMask@address
internet_calculateMask@address:	; 1 bytes @ 0x0
	global	SPI_exchangeByte@byte
SPI_exchangeByte@byte:	; 1 bytes @ 0x0
	global	memcpy@s1
memcpy@s1:	; 1 bytes @ 0x0
	ds	1
??_RF24_read_register:	; 1 bytes @ 0x1
?_RF24_write_n_register:	; 1 bytes @ 0x1
??_RF24_get_status:	; 1 bytes @ 0x1
	global	internet_calculateMask@mask
internet_calculateMask@mask:	; 1 bytes @ 0x1
	global	RF24_write_n_register@buffer
RF24_write_n_register@buffer:	; 2 bytes @ 0x1
	global	memcpy@n
memcpy@n:	; 2 bytes @ 0x1
	ds	1
	global	RF24_read_register@mnemonic_addr
RF24_read_register@mnemonic_addr:	; 1 bytes @ 0x2
	ds	1
??_memcpy:	; 1 bytes @ 0x3
	global	RF24_read_register@result
RF24_read_register@result:	; 1 bytes @ 0x3
	global	RF24_write_n_register@length
RF24_write_n_register@length:	; 1 bytes @ 0x3
	ds	1
??_RF24_isChipConnected:	; 1 bytes @ 0x4
	global	?_RF24_getPALevel
?_RF24_getPALevel:	; 1 bytes @ 0x4
??_RF24_write_n_register:	; 1 bytes @ 0x4
?_RF24_write_register:	; 1 bytes @ 0x4
	global	RF24_write_register@value
RF24_write_register@value:	; 1 bytes @ 0x4
	global	memcpy@tmp
memcpy@tmp:	; 1 bytes @ 0x4
	ds	1
??_RF24_getPALevel:	; 1 bytes @ 0x5
??_RF24_write_register:	; 1 bytes @ 0x5
	global	RF24_write_n_register@mnemonic_addr
RF24_write_n_register@mnemonic_addr:	; 1 bytes @ 0x5
	global	RF24_isChipConnected@width
RF24_isChipConnected@width:	; 1 bytes @ 0x5
	global	memcpy@d1
memcpy@d1:	; 1 bytes @ 0x5
	ds	1
	global	RF24_write_register@mnemonic_addr
RF24_write_register@mnemonic_addr:	; 1 bytes @ 0x6
	global	memcpy@d
memcpy@d:	; 1 bytes @ 0x6
	ds	1
??_RF24_setChannel:	; 1 bytes @ 0x7
?_RF24_openReadingPipe:	; 1 bytes @ 0x7
??_RF24_startListening:	; 1 bytes @ 0x7
??_RF24_setAddressWidth:	; 1 bytes @ 0x7
??_RF24_enableDynamicPayloads:	; 1 bytes @ 0x7
??_RF24_setDataRate:	; 1 bytes @ 0x7
??_RF24_setCRCLength:	; 1 bytes @ 0x7
??_RF24_setAutoAck:	; 1 bytes @ 0x7
??_RF24_setPayloadSize:	; 1 bytes @ 0x7
?_RF24_setRetries:	; 1 bytes @ 0x7
??_RF24_setPALevel:	; 1 bytes @ 0x7
??_RF24_flush_rx:	; 1 bytes @ 0x7
??_RF24_flush_tx:	; 1 bytes @ 0x7
??_RF24_powerUp:	; 1 bytes @ 0x7
	global	RF24_setRetries@count
RF24_setRetries@count:	; 1 bytes @ 0x7
	global	memcpy@s
memcpy@s:	; 1 bytes @ 0x7
	global	RF24_openReadingPipe@address
RF24_openReadingPipe@address:	; 2 bytes @ 0x7
	ds	1
?_RF24_write:	; 1 bytes @ 0x8
??_RF24_setRetries:	; 1 bytes @ 0x8
	global	RF24_setPALevel@setup
RF24_setPALevel@setup:	; 1 bytes @ 0x8
	global	RF24_setPayloadSize@size
RF24_setPayloadSize@size:	; 1 bytes @ 0x8
	global	RF24_setAutoAck@enable
RF24_setAutoAck@enable:	; 1 bytes @ 0x8
	global	RF24_setDataRate@speed
RF24_setDataRate@speed:	; 1 bytes @ 0x8
	global	RF24_setCRCLength@length
RF24_setCRCLength@length:	; 1 bytes @ 0x8
	global	RF24_setChannel@channel
RF24_setChannel@channel:	; 1 bytes @ 0x8
	global	RF24_setAddressWidth@w
RF24_setAddressWidth@w:	; 1 bytes @ 0x8
	global	RF24_write@buf
RF24_write@buf:	; 2 bytes @ 0x8
	ds	1
??_internet_setChannel:	; 1 bytes @ 0x9
??_RF24_openReadingPipe:	; 1 bytes @ 0x9
	global	internet_setChannel@channel
internet_setChannel@channel:	; 1 bytes @ 0x9
	global	_RF24_setPALevel$582
_RF24_setPALevel$582:	; 1 bytes @ 0x9
	global	RF24_setDataRate@setup
RF24_setDataRate@setup:	; 1 bytes @ 0x9
	ds	1
	global	RF24_setPALevel@level
RF24_setPALevel@level:	; 1 bytes @ 0xA
	global	RF24_write@len
RF24_write@len:	; 1 bytes @ 0xA
	ds	1
??_RF24_write:	; 1 bytes @ 0xB
	global	RF24_openReadingPipe@child
RF24_openReadingPipe@child:	; 1 bytes @ 0xB
	global	RF24_setRetries@delay
RF24_setRetries@delay:	; 1 bytes @ 0xB
	ds	1
??_internet_setNetworkPipe:	; 1 bytes @ 0xC
??_RF24_begin:	; 1 bytes @ 0xC
	ds	1
	global	internet_setNetworkPipe@pipe
internet_setNetworkPipe@pipe:	; 1 bytes @ 0xD
	ds	1
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
??_Network_begin:	; 1 bytes @ 0x0
??_internet_setAddress:	; 1 bytes @ 0x0
	ds	2
	global	internet_setAddress@address
internet_setAddress@address:	; 1 bytes @ 0x2
	ds	1
??_main:	; 1 bytes @ 0x3
	ds	2
;!
;!Data Sizes:
;!    Strings     168
;!    Constant    52
;!    Data        5
;!    BSS         77
;!    Persistent  32
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14     14      14
;!    BANK0            80      5      55
;!    BANK1            80      0      32
;!    BANK2            80      0       0

;!
;!Pointer List with Targets:
;!
;!    transport_udp_process$0	PTR unsigned char  size(1) Largest target is 32
;!		 -> buffer_rx(BANK0[32]), 
;!
;!    memcpy@d1	PTR void  size(1) Largest target is 6
;!		 -> networkInfo(BANK0[6]), 
;!
;!    memcpy@d	PTR unsigned char  size(1) Largest target is 6
;!		 -> networkInfo(BANK0[6]), 
;!
;!    memcpy@s1	PTR const void  size(1) Largest target is 6
;!		 -> networkInfo(BANK0[6]), network_pipe(BANK0[5]), 
;!
;!    memcpy@s	PTR const unsigned char  size(1) Largest target is 6
;!		 -> networkInfo(BANK0[6]), network_pipe(BANK0[5]), 
;!
;!    RF24_openReadingPipe@address	PTR unsigned char  size(2) Largest target is 6
;!		 -> BASE_PIPE(CODE[5]), networkInfo(BANK0[6]), 
;!
;!    RF24_write@buf	PTR void  size(2) Largest target is 32
;!		 -> buffer_rx(BANK0[32]), main@text(CODE[12]), 
;!
;!    RF24_write_n_register@buffer	PTR unsigned char  size(2) Largest target is 6
;!		 -> BASE_PIPE(CODE[5]), networkInfo(BANK0[6]), 
;!
;!    sp__internet_getRecievingBuffer	PTR unsigned char  size(1) Largest target is 32
;!		 -> buffer_rx(BANK0[32]), 
;!
;!    sp__internet_getTransmissionBuffer	PTR unsigned char  size(1) Largest target is 32
;!		 -> buffer_tx(BANK1[32]), 
;!
;!    sp__memcpy	PTR void  size(1) Largest target is 6
;!		 -> networkInfo(BANK0[6]), 
;!
;!    internet_setNetworkPipe@pipe	PTR unsigned char  size(1) Largest target is 6
;!		 -> networkInfo(BANK0[6]), network_pipe(BANK0[5]), 
;!


;!
;!Critical Paths under _main in COMMON
;!
;!    _main->_internet_setNetworkPipe
;!    _internet_setChannel->_RF24_setChannel
;!    _internet_setAddress->_internet_setNetworkPipe
;!    _internet_setNetworkPipe->_RF24_openReadingPipe
;!    _RF24_write->_RF24_flush_tx
;!    _RF24_get_status->_SPI_exchangeByte
;!    _RF24_isChipConnected->_RF24_read_register
;!    _Network_begin->_RF24_begin
;!    _RF24_startListening->_RF24_write_register
;!    _RF24_setCRCLength->_RF24_write_register
;!    _RF24_setAutoAck->_RF24_write_register
;!    _RF24_openReadingPipe->_RF24_write_register
;!    _RF24_write_n_register->_SPI_exchangeByte
;!    _RF24_getPALevel->_RF24_read_register
;!    _RF24_enableDynamicPayloads->_RF24_write_register
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
;!Critical Paths under _main in BANK0
;!
;!    _main->_internet_setAddress
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 2, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 2     2      0   74834
;!                                              3 BANK0      2     2      0
;!                      _Network_begin
;!               _RF24_isChipConnected
;!                         _RF24_write
;!                     _SPI_initialize
;!                _internet_setAddress
;!                _internet_setChannel
;!            _internet_setNetworkPipe
;! ---------------------------------------------------------------------------------
;! (1) _internet_setChannel                                  1     1      0    3021
;!                                              9 COMMON     1     1      0
;!                    _RF24_setChannel
;! ---------------------------------------------------------------------------------
;! (1) _internet_setAddress                                  3     3      0    4609
;!                                              0 BANK0      3     3      0
;!             _internet_calculateMask
;!            _internet_setNetworkPipe
;! ---------------------------------------------------------------------------------
;! (1) _internet_setNetworkPipe                              2     2      0    4496
;!                                             12 COMMON     2     2      0
;!               _RF24_openReadingPipe
;!                             _memcpy
;! ---------------------------------------------------------------------------------
;! (2) _memcpy                                               8     5      3     328
;!                                              0 COMMON     8     5      3
;! ---------------------------------------------------------------------------------
;! (2) _internet_calculateMask                               2     2      0      69
;!                                              0 COMMON     2     2      0
;! ---------------------------------------------------------------------------------
;! (1) _SPI_initialize                                       0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _RF24_write                                           4     1      3    6579
;!                                              8 COMMON     4     1      3
;!                      _RF24_flush_tx
;!                    _RF24_get_status
;!                _RF24_write_register
;!                   _SPI_exchangeByte
;! ---------------------------------------------------------------------------------
;! (2) _RF24_get_status                                      1     1      0      22
;!                                              1 COMMON     1     1      0
;!                   _SPI_exchangeByte
;! ---------------------------------------------------------------------------------
;! (1) _RF24_isChipConnected                                 2     2      0     112
;!                                              4 COMMON     2     2      0
;!                 _RF24_read_register
;! ---------------------------------------------------------------------------------
;! (1) _Network_begin                                        1     1      0   56017
;!                                              0 BANK0      1     1      0
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
;! (2) _RF24_startListening                                  1     1      0    3044
;!                                              7 COMMON     1     1      0
;!                 _RF24_read_register
;!                _RF24_write_register
;! ---------------------------------------------------------------------------------
;! (2) _RF24_setCRCLength                                    2     2      0    3021
;!                                              7 COMMON     2     2      0
;!                _RF24_write_register
;! ---------------------------------------------------------------------------------
;! (2) _RF24_setAutoAck                                      2     2      0    2999
;!                                              7 COMMON     2     2      0
;!                _RF24_write_register
;! ---------------------------------------------------------------------------------
;! (2) _RF24_openReadingPipe                                 5     3      2    4080
;!                                              7 COMMON     5     3      2
;!                 _RF24_read_register
;!              _RF24_write_n_register
;!                _RF24_write_register
;! ---------------------------------------------------------------------------------
;! (3) _RF24_write_n_register                                5     2      3     368
;!                                              1 COMMON     5     2      3
;!                   _SPI_exchangeByte
;! ---------------------------------------------------------------------------------
;! (2) _RF24_getPALevel                                      1     0      1      67
;!                                              4 COMMON     1     0      1
;!                 _RF24_read_register
;! ---------------------------------------------------------------------------------
;! (2) _RF24_enableDynamicPayloads                           1     1      0    3044
;!                                              7 COMMON     1     1      0
;!                 _RF24_read_register
;!                _RF24_write_register
;! ---------------------------------------------------------------------------------
;! (2) _RF24_begin                                           2     2      0   30518
;!                                             12 COMMON     2     2      0
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
;! (3) _RF24_setRetries                                      5     4      1    3097
;!                                              7 COMMON     5     4      1
;!                _RF24_write_register
;! ---------------------------------------------------------------------------------
;! (2) _RF24_setPayloadSize                                  2     2      0    3109
;!                                              7 COMMON     2     2      0
;!                _RF24_write_register
;! ---------------------------------------------------------------------------------
;! (3) _RF24_setPALevel                                      4     4      0    3136
;!                                              7 COMMON     4     4      0
;!                 _RF24_read_register
;!                _RF24_write_register
;! ---------------------------------------------------------------------------------
;! (2) _RF24_setDataRate                                     3     3      0    3136
;!                                              7 COMMON     3     3      0
;!                 _RF24_read_register
;!                _RF24_write_register
;! ---------------------------------------------------------------------------------
;! (2) _RF24_setChannel                                      2     2      0    2999
;!                                              7 COMMON     2     2      0
;!                _RF24_write_register
;! ---------------------------------------------------------------------------------
;! (2) _RF24_setAddressWidth                                 2     2      0    2999
;!                                              7 COMMON     2     2      0
;!                _RF24_write_register
;! ---------------------------------------------------------------------------------
;! (3) _RF24_powerUp                                         1     1      0    3044
;!                                              7 COMMON     1     1      0
;!                 _RF24_read_register
;!                _RF24_write_register
;! ---------------------------------------------------------------------------------
;! (3) _RF24_read_register                                   3     3      0      67
;!                                              1 COMMON     3     3      0
;!                   _SPI_exchangeByte
;! ---------------------------------------------------------------------------------
;! (2) _RF24_flush_tx                                        1     1      0    2977
;!                                              7 COMMON     1     1      0
;!                _RF24_write_register
;! ---------------------------------------------------------------------------------
;! (3) _RF24_flush_rx                                        1     1      0    2977
;!                                              7 COMMON     1     1      0
;!                _RF24_write_register
;! ---------------------------------------------------------------------------------
;! (3) _RF24_write_register                                  3     2      1    2977
;!                                              4 COMMON     3     2      1
;!                 _RF24_read_register (ARG)
;!                   _SPI_exchangeByte
;! ---------------------------------------------------------------------------------
;! (4) _SPI_exchangeByte                                     1     1      0      22
;!                                              0 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 4
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
;!   _RF24_write
;!     _RF24_flush_tx
;!     _RF24_get_status
;!       _SPI_exchangeByte
;!     _RF24_write_register
;!     _SPI_exchangeByte
;!   _SPI_initialize
;!   _internet_setAddress
;!     _internet_calculateMask
;!     _internet_setNetworkPipe
;!       _RF24_openReadingPipe
;!       _memcpy
;!   _internet_setChannel
;!     _RF24_setChannel
;!   _internet_setNetworkPipe
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BIGRAM              F0      0       0       0        0.0%
;!EEDATA             100      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!BITCOMMON            E      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!COMMON               E      E       E       2      100.0%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!BITSFR2              0      0       0       3        0.0%
;!SFR2                 0      0       0       3        0.0%
;!STACK                0      0       0       3        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!ABS                  0      0      65       4        0.0%
;!BITBANK0            50      0       0       5        0.0%
;!BITSFR4              0      0       0       5        0.0%
;!SFR4                 0      0       0       5        0.0%
;!BANK0               50      5      37       6       68.8%
;!BITSFR5              0      0       0       6        0.0%
;!SFR5                 0      0       0       6        0.0%
;!BITBANK1            50      0       0       7        0.0%
;!BITSFR6              0      0       0       7        0.0%
;!SFR6                 0      0       0       7        0.0%
;!BANK1               50      0      20       8       40.0%
;!BITSFR7              0      0       0       8        0.0%
;!SFR7                 0      0       0       8        0.0%
;!BITBANK2            50      0       0       9        0.0%
;!BITSFR8              0      0       0       9        0.0%
;!SFR8                 0      0       0       9        0.0%
;!BANK2               50      0       0      10        0.0%
;!BITSFR9              0      0       0      10        0.0%
;!SFR9                 0      0       0      10        0.0%
;!BITSFR10             0      0       0      11        0.0%
;!SFR10                0      0       0      11        0.0%
;!DATA                 0      0      65      11        0.0%
;!BITSFR11             0      0       0      12        0.0%
;!SFR11                0      0       0      12        0.0%
;!BITSFR12             0      0       0      13        0.0%
;!SFR12                0      0       0      13        0.0%
;!BITSFR13             0      0       0      14        0.0%
;!SFR13                0      0       0      14        0.0%
;!BITSFR14             0      0       0      15        0.0%
;!SFR14                0      0       0      15        0.0%
;!BITSFR15             0      0       0      16        0.0%
;!SFR15                0      0       0      16        0.0%
;!BITSFR16             0      0       0      17        0.0%
;!SFR16                0      0       0      17        0.0%
;!BITSFR17             0      0       0      18        0.0%
;!SFR17                0      0       0      18        0.0%
;!BITSFR18             0      0       0      19        0.0%
;!SFR18                0      0       0      19        0.0%
;!BITSFR19             0      0       0      20        0.0%
;!SFR19                0      0       0      20        0.0%
;!BITSFR20             0      0       0      21        0.0%
;!SFR20                0      0       0      21        0.0%
;!BITSFR21             0      0       0      22        0.0%
;!SFR21                0      0       0      22        0.0%
;!BITSFR22             0      0       0      23        0.0%
;!SFR22                0      0       0      23        0.0%
;!BITSFR23             0      0       0      24        0.0%
;!SFR23                0      0       0      24        0.0%
;!BITSFR24             0      0       0      25        0.0%
;!SFR24                0      0       0      25        0.0%
;!BITSFR25             0      0       0      26        0.0%
;!SFR25                0      0       0      26        0.0%
;!BITSFR26             0      0       0      27        0.0%
;!SFR26                0      0       0      27        0.0%
;!BITSFR27             0      0       0      28        0.0%
;!SFR27                0      0       0      28        0.0%
;!BITSFR28             0      0       0      29        0.0%
;!SFR28                0      0       0      29        0.0%
;!BITSFR29             0      0       0      30        0.0%
;!SFR29                0      0       0      30        0.0%
;!BITSFR30             0      0       0      31        0.0%
;!SFR30                0      0       0      31        0.0%
;!BITSFR31             0      0       0      32        0.0%
;!SFR31                0      0       0      32        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 30 in file "F:/GitHub/Graduation-Project/Lib-test/nRF1828/app/src/main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : B1F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       2       0       0
;;      Totals:         0       2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels required when called: 5
;; This function calls:
;;		_Network_begin
;;		_RF24_isChipConnected
;;		_RF24_write
;;		_SPI_initialize
;;		_internet_setAddress
;;		_internet_setChannel
;;		_internet_setNetworkPipe
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,merge=1,split=1,group=0
	file	"F:/GitHub/Graduation-Project/Lib-test/nRF1828/app/src/main.c"
	line	30
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"F:/GitHub/Graduation-Project/Lib-test/nRF1828/app/src/main.c"
	line	30
	
_main:	
;incstack = 0
	callstack 11
; Regs used in _main: [wreg-fsr1h+status,2+status,0+pclath+cstack]
	line	34
	
l1766:	
	movlw	low(07Ah)
	movlb 1	; select bank1
	movwf	(153)^080h	;volatile
	line	35
	
l1768:	
	bcf	(1139/8)^080h,(1139)&7	;volatile
	line	36
	
l1770:	
	movlb 0	; select bank0
	bsf	(115/8),(115)&7	;volatile
	line	37
	
l1772:	
	fcall	_SPI_initialize
	line	38
	
l1774:	
	fcall	_Network_begin
	line	39
	
l1776:	
	movlw	low(073h)
	fcall	_internet_setChannel
	line	41
	
l1778:	
	movlw	(low(_network_pipe|((0x0)<<8)))&0ffh
	fcall	_internet_setNetworkPipe
	line	42
	
l1780:	
	movlw	low(0)
	fcall	_internet_setAddress
	line	46
	goto	l1786
	
l40:	
	line	48
	movlb 0	; select bank0
	bsf	(115/8),(115)&7	;volatile
	line	49
	
l1782:	
	asmopt push
asmopt off
movlw  3
	movlb 0	; select bank0
movwf	((??_main+0)+0+1)
movlw	8
movwf	((??_main+0)+0)
	movlw	119
u557:
decfsz	wreg
	goto	u557
	decfsz	((??_main+0)+0),f
	goto	u557
	decfsz	((??_main+0)+0+1),f
	goto	u557
asmopt pop

	line	50
	
l1784:	
	movlb 0	; select bank0
	bcf	(115/8),(115)&7	;volatile
	line	51
	asmopt push
asmopt off
movlw  3
	movlb 0	; select bank0
movwf	((??_main+0)+0+1)
movlw	8
movwf	((??_main+0)+0)
	movlw	119
u567:
decfsz	wreg
	goto	u567
	decfsz	((??_main+0)+0),f
	goto	u567
	decfsz	((??_main+0)+0+1),f
	goto	u567
asmopt pop

	line	46
	
l1786:	
	fcall	_RF24_isChipConnected
	xorlw	low(0)&0ffh
	skipnz
	goto	u471
	goto	u470
u471:
	goto	l40
u470:
	
l41:	
	line	53
	movlb 0	; select bank0
	bsf	(115/8),(115)&7	;volatile
	line	57
	
l1788:	
	movlw	low(((main@text)|8000h))
	movwf	(RF24_write@buf)
	movlw	high(((main@text)|8000h))
	movwf	((RF24_write@buf))+1
	movlw	low(0Ch)
	movlb 0	; select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(RF24_write@len)
	fcall	_RF24_write
	line	58
	
l1790:	
	asmopt push
asmopt off
movlw  21
	movlb 0	; select bank0
movwf	((??_main+0)+0+1)
movlw	75
movwf	((??_main+0)+0)
	movlw	190
u577:
decfsz	wreg
	goto	u577
	decfsz	((??_main+0)+0),f
	goto	u577
	decfsz	((??_main+0)+0+1),f
	goto	u577
	nop
asmopt pop

	goto	l1788
	global	start
	ljmp	start
	callstack 0
	line	60
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_internet_setChannel

;; *************** function _internet_setChannel *****************
;; Defined at:
;;		line 9 in file "F:/GitHub/Graduation-Project/Lib-test/nRF1828/libs/internet.c"
;; Parameters:    Size  Location     Type
;;  channel         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  channel         1    9[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         1       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_RF24_setChannel
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1,group=1
	file	"F:/GitHub/Graduation-Project/Lib-test/nRF1828/libs/internet.c"
	line	9
global __ptext1
__ptext1:	;psect for function _internet_setChannel
psect	text1
	file	"F:/GitHub/Graduation-Project/Lib-test/nRF1828/libs/internet.c"
	line	9
	
_internet_setChannel:	
;incstack = 0
	callstack 12
; Regs used in _internet_setChannel: [wreg+status,2+status,0+pclath+cstack]
	movwf	(internet_setChannel@channel)
	line	11
	
l1708:	
	movf	(internet_setChannel@channel),w
	fcall	_RF24_setChannel
	line	12
	
l266:	
	return
	callstack 0
GLOBAL	__end_of_internet_setChannel
	__end_of_internet_setChannel:
	signat	_internet_setChannel,4217
	global	_internet_setAddress

;; *************** function _internet_setAddress *****************
;; Defined at:
;;		line 123 in file "F:/GitHub/Graduation-Project/Lib-test/nRF1828/libs/internet.c"
;; Parameters:    Size  Location     Type
;;  address         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  address         1    2[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       1       0       0
;;      Temps:          0       2       0       0
;;      Totals:         0       3       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		_internet_calculateMask
;;		_internet_setNetworkPipe
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1,group=1
	line	123
global __ptext2
__ptext2:	;psect for function _internet_setAddress
psect	text2
	file	"F:/GitHub/Graduation-Project/Lib-test/nRF1828/libs/internet.c"
	line	123
	
_internet_setAddress:	
;incstack = 0
	callstack 11
; Regs used in _internet_setAddress: [wreg-fsr1h+status,2+status,0+pclath+cstack]
	movlb 0	; select bank0
	movwf	(internet_setAddress@address)
	line	125
	
l1710:	
	movf	(internet_setAddress@address),w
	movwf	(??_internet_setAddress+0)+0
	movf	(??_internet_setAddress+0)+0,w
	movwf	(_node)
	line	126
	
l1712:	
	movf	(internet_setAddress@address),w
	fcall	_internet_calculateMask
	movlb 0	; select bank0
	movwf	(??_internet_setAddress+0)+0
	movf	(??_internet_setAddress+0)+0,w
	movwf	0+(_node)+01h
	line	127
	
l1714:	
	movf	0+(_node)+01h,w
	addlw	01h
	movwf	(??_internet_setAddress+0)+0
	movf	(??_internet_setAddress+0)+0,w
	movwf	0+(_node)+02h
	line	128
	
l1716:	
	movf	0+(_node)+02h,w
	movwf	(??_internet_setAddress+0)+0
	movlw	01h
u395:
	lslf	(??_internet_setAddress+0)+0,f
	decfsz	wreg,f
	goto	u395
	movf	0+(_node)+01h,w
	andwf	(_node),w
	iorwf	0+(??_internet_setAddress+0)+0,w
	movwf	(??_internet_setAddress+1)+0
	movf	(??_internet_setAddress+1)+0,w
	movwf	0+(_node)+03h
	line	129
	
l1718:	
	movf	0+(_node)+02h,w
	movwf	(??_internet_setAddress+0)+0
	movlw	01h
u405:
	lslf	(??_internet_setAddress+0)+0,f
	decfsz	wreg,f
	goto	u405
	movf	0+(_node)+01h,w
	andwf	(_node),w
	iorwf	0+(??_internet_setAddress+0)+0,w
	iorwf	0+(_node)+02h,w
	movwf	(??_internet_setAddress+1)+0
	movf	(??_internet_setAddress+1)+0,w
	movwf	0+(_node)+04h
	line	130
	
l1720:	
	movlw	(low(_networkInfo|((0x0)<<8)))&0ffh
	fcall	_internet_setNetworkPipe
	line	131
	
l305:	
	return
	callstack 0
GLOBAL	__end_of_internet_setAddress
	__end_of_internet_setAddress:
	signat	_internet_setAddress,4217
	global	_internet_setNetworkPipe

;; *************** function _internet_setNetworkPipe *****************
;; Defined at:
;;		line 23 in file "F:/GitHub/Graduation-Project/Lib-test/nRF1828/libs/internet.c"
;; Parameters:    Size  Location     Type
;;  pipe            1    wreg     PTR unsigned char 
;;		 -> networkInfo(6), network_pipe(5), 
;; Auto vars:     Size  Location     Type
;;  pipe            1   13[COMMON] PTR unsigned char 
;;		 -> networkInfo(6), network_pipe(5), 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         1       0       0       0
;;      Temps:          1       0       0       0
;;      Totals:         2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_RF24_openReadingPipe
;;		_memcpy
;; This function is called by:
;;		_main
;;		_internet_setAddress
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1,group=1
	line	23
global __ptext3
__ptext3:	;psect for function _internet_setNetworkPipe
psect	text3
	file	"F:/GitHub/Graduation-Project/Lib-test/nRF1828/libs/internet.c"
	line	23
	
_internet_setNetworkPipe:	
;incstack = 0
	callstack 12
; Regs used in _internet_setNetworkPipe: [wreg-fsr1h+status,2+status,0+pclath+cstack]
	movwf	(internet_setNetworkPipe@pipe)
	line	25
	
l1530:	
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
	
l1532:	
	movlb 0	; select bank0
	movf	(_node),w
	movwf	(??_internet_setNetworkPipe+0)+0
	movf	(??_internet_setNetworkPipe+0)+0,w
	movwf	(_networkInfo)
	line	27
	
l1534:	
	movlw	low(_networkInfo)
	movwf	(RF24_openReadingPipe@address)
	movlw	high(_networkInfo)
	movwf	(RF24_openReadingPipe@address+1)
	movlw	low(01h)
	fcall	_RF24_openReadingPipe
	line	28
	
l275:	
	return
	callstack 0
GLOBAL	__end_of_internet_setNetworkPipe
	__end_of_internet_setNetworkPipe:
	signat	_internet_setNetworkPipe,4217
	global	_memcpy

;; *************** function _memcpy *****************
;; Defined at:
;;		line 4 in file "C:\Program Files\Microchip\xc8\v2.35\pic\sources\c99\common\memcpy.c"
;; Parameters:    Size  Location     Type
;;  d1              1    wreg     PTR void 
;;		 -> networkInfo(6), 
;;  s1              1    0[COMMON] PTR const void 
;;		 -> networkInfo(6), network_pipe(5), 
;;  n               2    1[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  d1              1    5[COMMON] PTR void 
;;		 -> networkInfo(6), 
;;  s               1    7[COMMON] PTR const unsigned char 
;;		 -> networkInfo(6), network_pipe(5), 
;;  d               1    6[COMMON] PTR unsigned char 
;;		 -> networkInfo(6), 
;;  tmp             1    4[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      PTR void 
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         3       0       0       0
;;      Locals:         4       0       0       0
;;      Temps:          1       0       0       0
;;      Totals:         8       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_internet_setNetworkPipe
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1,group=3
	file	"C:\Program Files\Microchip\xc8\v2.35\pic\sources\c99\common\memcpy.c"
	line	4
global __ptext4
__ptext4:	;psect for function _memcpy
psect	text4
	file	"C:\Program Files\Microchip\xc8\v2.35\pic\sources\c99\common\memcpy.c"
	line	4
	
_memcpy:	
;incstack = 0
	callstack 14
; Regs used in _memcpy: [wreg+fsr1l+fsr1h+status,2+status,0]
	movwf	(memcpy@d1)
	line	11
	
l1474:	
	movf	(memcpy@s1),w
	movwf	(??_memcpy+0)+0
	movf	(??_memcpy+0)+0,w
	movwf	(memcpy@s)
	line	12
	movf	(memcpy@d1),w
	movwf	(??_memcpy+0)+0
	movf	(??_memcpy+0)+0,w
	movwf	(memcpy@d)
	line	13
	goto	l1143
	line	14
	
l1476:	
	movf	(memcpy@s),w
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	movwf	(??_memcpy+0)+0
	movf	(??_memcpy+0)+0,w
	movwf	(memcpy@tmp)
	
l1478:	
	movlw	low(01h)
	movwf	(??_memcpy+0)+0
	movf	(??_memcpy+0)+0,w
	addwf	(memcpy@s),f
	line	15
	
l1480:	
	movf	(memcpy@tmp),w
	movwf	(??_memcpy+0)+0
	movf	(memcpy@d),w
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_memcpy+0)+0,w
	movwf	indf1
	movlw	low(01h)
	movwf	(??_memcpy+0)+0
	movf	(??_memcpy+0)+0,w
	addwf	(memcpy@d),f
	line	16
	
l1143:	
	line	13
	movlw	01h
	subwf	(memcpy@n),f
	movlw	0
	subwfb	(memcpy@n+1),f
		incf	(((memcpy@n))),w
	skipz
	goto	u241
	incf	(((memcpy@n+1))),w
	btfss	status,2
	goto	u241
	goto	u240
u241:
	goto	l1476
u240:
	line	18
	
l1146:	
	return
	callstack 0
GLOBAL	__end_of_memcpy
	__end_of_memcpy:
	signat	_memcpy,12409
	global	_internet_calculateMask

;; *************** function _internet_calculateMask *****************
;; Defined at:
;;		line 112 in file "F:/GitHub/Graduation-Project/Lib-test/nRF1828/libs/internet.c"
;; Parameters:    Size  Location     Type
;;  address         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  address         1    0[COMMON] unsigned char 
;;  mask            1    1[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         2       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_internet_setAddress
;;		_internet_relay
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1,group=1
	file	"F:/GitHub/Graduation-Project/Lib-test/nRF1828/libs/internet.c"
	line	112
global __ptext5
__ptext5:	;psect for function _internet_calculateMask
psect	text5
	file	"F:/GitHub/Graduation-Project/Lib-test/nRF1828/libs/internet.c"
	line	112
	
_internet_calculateMask:	
;incstack = 0
	callstack 14
; Regs used in _internet_calculateMask: [wreg+status,2+status,0]
	movwf	(internet_calculateMask@address)
	line	114
	
l1594:	
	clrf	(internet_calculateMask@mask)
	line	115
	goto	l1600
	line	117
	
l1596:	
	setc
	rlf	(internet_calculateMask@mask),f
	line	118
	
l1598:	
	clrc
	rrf	(internet_calculateMask@address),f

	line	115
	
l1600:	
	movlw	low(02h)
	subwf	(internet_calculateMask@address),w
	skipnc
	goto	u351
	goto	u350
u351:
	goto	l1596
u350:
	line	120
	
l1602:	
	movf	(internet_calculateMask@mask),w
	line	121
	
l302:	
	return
	callstack 0
GLOBAL	__end_of_internet_calculateMask
	__end_of_internet_calculateMask:
	signat	_internet_calculateMask,4217
	global	_SPI_initialize

;; *************** function _SPI_initialize *****************
;; Defined at:
;;		line 3 in file "F:/GitHub/Graduation-Project/Lib-test/nRF1828/libs/spi_master.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1,group=1
	file	"F:/GitHub/Graduation-Project/Lib-test/nRF1828/libs/spi_master.c"
	line	3
global __ptext6
__ptext6:	;psect for function _SPI_initialize
psect	text6
	file	"F:/GitHub/Graduation-Project/Lib-test/nRF1828/libs/spi_master.c"
	line	3
	
_SPI_initialize:	
;incstack = 0
	callstack 15
; Regs used in _SPI_initialize: [wreg+status,2]
	line	5
	
l1682:	
	movlb 4	; select bank4
	bcf	(4269/8)^0200h,(4269)&7	;volatile
	line	6
	
l1684:	
	movlw	low(040h)
	movwf	(532)^0200h	;volatile
	line	7
	
l1686:	
	movlb 1	; select bank1
	bsf	(1132/8)^080h,(1132)&7	;volatile
	line	8
	
l1688:	
	bcf	(1143/8)^080h,(1143)&7	;volatile
	line	9
	
l1690:	
	bcf	(1134/8)^080h,(1134)&7	;volatile
	line	10
	
l1692:	
	movlb 3	; select bank3
	clrf	(397)^0180h	;volatile
	line	11
	movlb 4	; select bank4
	movf	(533)^0200h,w	;volatile
	andlw	0F0h
	iorlw	02h
	movwf	(533)^0200h	;volatile
	line	12
	
l1694:	
	bsf	(4269/8)^0200h,(4269)&7	;volatile
	line	24
	
l560:	
	return
	callstack 0
GLOBAL	__end_of_SPI_initialize
	__end_of_SPI_initialize:
	signat	_SPI_initialize,89
	global	_RF24_write

;; *************** function _RF24_write *****************
;; Defined at:
;;		line 198 in file "F:/GitHub/Graduation-Project/Lib-test/nRF1828/libs/rf24.c"
;; Parameters:    Size  Location     Type
;;  buf             2    8[COMMON] PTR void 
;;		 -> buffer_rx(32), main@text(12), 
;;  len             1   10[COMMON] unsigned char 
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         3       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          1       0       0       0
;;      Totals:         4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_RF24_flush_tx
;;		_RF24_get_status
;;		_RF24_write_register
;;		_SPI_exchangeByte
;; This function is called by:
;;		_main
;;		_internet_relay
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1,group=1
	file	"F:/GitHub/Graduation-Project/Lib-test/nRF1828/libs/rf24.c"
	line	198
global __ptext7
__ptext7:	;psect for function _RF24_write
psect	text7
	file	"F:/GitHub/Graduation-Project/Lib-test/nRF1828/libs/rf24.c"
	line	198
	
_RF24_write:	
;incstack = 0
	callstack 12
; Regs used in _RF24_write: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	202
	
l1736:	
	movlb 0	; select bank0
	bcf	(117/8),(117)&7	;volatile
	line	203
	
l1738:	
	movlw	low(0A0h)
	fcall	_SPI_exchangeByte
	movwf	(??_RF24_write+0)+0
	movf	(??_RF24_write+0)+0,w
	movlb 0	; select bank0
	movwf	(_RF24_attr_status)
	line	204
	goto	l1744
	line	206
	
l1740:	
	movf	(RF24_write@buf),w
	movwf	fsr0l
	movf	((RF24_write@buf+1)),w
	movwf	fsr0h
	movf	indf0,w ;code access
	fcall	_SPI_exchangeByte
	
l1742:	
	movlw	01h
	addwf	(RF24_write@buf),f
	movlw	0
	addwfc	(RF24_write@buf+1),f
	line	204
	
l1744:	
	movlw	01h
	subwf	(RF24_write@len),f
		incf	(((RF24_write@len))),w
	btfss	status,2
	goto	u431
	goto	u430
u431:
	goto	l1740
u430:
	
l430:	
	line	208
	movlb 0	; select bank0
	bsf	(117/8),(117)&7	;volatile
	line	210
	bsf	(118/8),(118)&7	;volatile
	line	211
	
l1746:	
	fcall	_RF24_get_status
	andlw	030h
	btfsc	status,2
	goto	u441
	goto	u440
u441:
	goto	l1746
u440:
	
l433:	
	line	216
	movlb 0	; select bank0
	bcf	(118/8),(118)&7	;volatile
	line	217
	
l1748:	
	movlw	low(070h)
	movwf	(??_RF24_write+0)+0
	movf	(??_RF24_write+0)+0,w
	movwf	(RF24_write_register@value)
	movlw	low(07h)
	fcall	_RF24_write_register
	line	220
	
l1750:	
	movlb 0	; select bank0
	btfss	(_RF24_attr_status),(4)&7
	goto	u451
	goto	u450
u451:
	goto	l435
u450:
	line	222
	
l1752:	
	fcall	_RF24_flush_tx
	line	226
	
l435:	
	return
	callstack 0
GLOBAL	__end_of_RF24_write
	__end_of_RF24_write:
	signat	_RF24_write,8313
	global	_RF24_get_status

;; *************** function _RF24_get_status *****************
;; Defined at:
;;		line 51 in file "F:/GitHub/Graduation-Project/Lib-test/nRF1828/libs/rf24.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          1       0       0       0
;;      Totals:         1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		_SPI_exchangeByte
;; This function is called by:
;;		_RF24_write
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1,group=1
	line	51
global __ptext8
__ptext8:	;psect for function _RF24_get_status
psect	text8
	file	"F:/GitHub/Graduation-Project/Lib-test/nRF1828/libs/rf24.c"
	line	51
	
_RF24_get_status:	
;incstack = 0
	callstack 13
; Regs used in _RF24_get_status: [wreg+pclath+cstack]
	line	53
	
l1672:	
	movlb 0	; select bank0
	bcf	(117/8),(117)&7	;volatile
	line	54
	
l1674:	
	movlw	low(0FFh)
	fcall	_SPI_exchangeByte
	movwf	(??_RF24_get_status+0)+0
	movf	(??_RF24_get_status+0)+0,w
	movlb 0	; select bank0
	movwf	(_RF24_attr_status)
	line	55
	
l1676:	
	bsf	(117/8),(117)&7	;volatile
	line	56
	
l1678:	
	movf	(_RF24_attr_status),w
	line	57
	
l393:	
	return
	callstack 0
GLOBAL	__end_of_RF24_get_status
	__end_of_RF24_get_status:
	signat	_RF24_get_status,89
	global	_RF24_isChipConnected

;; *************** function _RF24_isChipConnected *****************
;; Defined at:
;;		line 129 in file "F:/GitHub/Graduation-Project/Lib-test/nRF1828/libs/rf24.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  width           1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         1       0       0       0
;;      Temps:          1       0       0       0
;;      Totals:         2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_RF24_read_register
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1,group=1
	line	129
global __ptext9
__ptext9:	;psect for function _RF24_isChipConnected
psect	text9
	file	"F:/GitHub/Graduation-Project/Lib-test/nRF1828/libs/rf24.c"
	line	129
	
_RF24_isChipConnected:	
;incstack = 0
	callstack 13
; Regs used in _RF24_isChipConnected: [wreg+status,2+status,0+pclath+cstack]
	line	131
	
l1722:	
	movlw	low(03h)
	fcall	_RF24_read_register
	andlw	03h
	movwf	(??_RF24_isChipConnected+0)+0
	movf	(??_RF24_isChipConnected+0)+0,w
	movwf	(RF24_isChipConnected@width)
	line	132
	
l1724:	
	movf	((RF24_isChipConnected@width)),w
	btfsc	status,2
	goto	u411
	goto	u410
u411:
	goto	l1732
u410:
	
l1726:	
	movlw	low(04h)
	subwf	(RF24_isChipConnected@width),w
	skipnc
	goto	u421
	goto	u420
u421:
	goto	l1732
u420:
	line	134
	
l1728:	
	movlw	low(01h)
	goto	l407
	line	136
	
l1732:	
	movlw	low(0)
	line	137
	
l407:	
	return
	callstack 0
GLOBAL	__end_of_RF24_isChipConnected
	__end_of_RF24_isChipConnected:
	signat	_RF24_isChipConnected,89
	global	_Network_begin

;; *************** function _Network_begin *****************
;; Defined at:
;;		line 138 in file "F:/GitHub/Graduation-Project/Lib-test/nRF1828/libs/internet.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       1       0       0
;;      Totals:         0       1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
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
psect	text10,local,class=CODE,delta=2,merge=1,group=1
	file	"F:/GitHub/Graduation-Project/Lib-test/nRF1828/libs/internet.c"
	line	138
global __ptext10
__ptext10:	;psect for function _Network_begin
psect	text10
	file	"F:/GitHub/Graduation-Project/Lib-test/nRF1828/libs/internet.c"
	line	138
	
_Network_begin:	
;incstack = 0
	callstack 11
; Regs used in _Network_begin: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	141
	
l1696:	
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
	
l1698:	
	movlw	low(((_BASE_PIPE)|8000h))
	movwf	(RF24_openReadingPipe@address)
	movlw	high(((_BASE_PIPE)|8000h))
	movwf	((RF24_openReadingPipe@address))+1
	movlw	low(0)
	fcall	_RF24_openReadingPipe
	line	147
	
l1700:	
	movlw	low(01h)
	fcall	_RF24_setAutoAck
	line	148
	
l1702:	
	movlw	low(03h)
	movlb 0	; select bank0
	movwf	(??_Network_begin+0)+0
	movf	(??_Network_begin+0)+0,w
	movwf	(?_RF24_getPALevel)
	fcall	_RF24_getPALevel
	line	149
	
l1704:	
	movlw	low(020h)
	fcall	_RF24_setPayloadSize
	line	150
	
l1706:	
	fcall	_RF24_startListening
	line	151
	
l311:	
	return
	callstack 0
GLOBAL	__end_of_Network_begin
	__end_of_Network_begin:
	signat	_Network_begin,89
	global	_RF24_startListening

;; *************** function _RF24_startListening *****************
;; Defined at:
;;		line 139 in file "F:/GitHub/Graduation-Project/Lib-test/nRF1828/libs/rf24.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          1       0       0       0
;;      Totals:         1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_RF24_read_register
;;		_RF24_write_register
;; This function is called by:
;;		_Network_begin
;;		_internet_relay
;; This function uses a non-reentrant model
;;
psect	text11,local,class=CODE,delta=2,merge=1,group=1
	file	"F:/GitHub/Graduation-Project/Lib-test/nRF1828/libs/rf24.c"
	line	139
global __ptext11
__ptext11:	;psect for function _RF24_startListening
psect	text11
	file	"F:/GitHub/Graduation-Project/Lib-test/nRF1828/libs/rf24.c"
	line	139
	
_RF24_startListening:	
;incstack = 0
	callstack 12
; Regs used in _RF24_startListening: [wreg+status,2+status,0+pclath+cstack]
	line	141
	
l1606:	
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
	
l1608:	
	movlb 0	; select bank0
	bsf	(118/8),(118)&7	;volatile
	line	154
	
l410:	
	return
	callstack 0
GLOBAL	__end_of_RF24_startListening
	__end_of_RF24_startListening:
	signat	_RF24_startListening,89
	global	_RF24_setCRCLength

;; *************** function _RF24_setCRCLength *****************
;; Defined at:
;;		line 411 in file "F:/GitHub/Graduation-Project/Lib-test/nRF1828/libs/rf24.c"
;; Parameters:    Size  Location     Type
;;  length          1    wreg     enum E2620
;; Auto vars:     Size  Location     Type
;;  length          1    8[COMMON] enum E2620
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         1       0       0       0
;;      Temps:          1       0       0       0
;;      Totals:         2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_RF24_write_register
;; This function is called by:
;;		_Network_begin
;; This function uses a non-reentrant model
;;
psect	text12,local,class=CODE,delta=2,merge=1,group=1
	line	411
global __ptext12
__ptext12:	;psect for function _RF24_setCRCLength
psect	text12
	file	"F:/GitHub/Graduation-Project/Lib-test/nRF1828/libs/rf24.c"
	line	411
	
_RF24_setCRCLength:	
;incstack = 0
	callstack 12
; Regs used in _RF24_setCRCLength: [wreg+status,2+status,0+pclath+cstack]
	movwf	(RF24_setCRCLength@length)
	line	413
	
l1650:	
	movlb 0	; select bank0
	movf	(_RF24_attr_config),w
	andlw	0F3h
	movwf	(??_RF24_setCRCLength+0)+0
	movf	(??_RF24_setCRCLength+0)+0,w
	movwf	(_RF24_attr_config)
	line	416
	
l1652:	
	movf	((RF24_setCRCLength@length)),w
	btfss	status,2
	goto	u361
	goto	u360
u361:
	goto	l1656
u360:
	goto	l1660
	line	420
	
l1656:	
		decf	((RF24_setCRCLength@length)),w
	btfss	status,2
	goto	u371
	goto	u370
u371:
	goto	l501
u370:
	line	422
	
l1658:	
	bsf	(_RF24_attr_config)+(3/8),(3)&7
	line	423
	goto	l1660
	line	424
	
l501:	
	line	426
	bsf	(_RF24_attr_config)+(3/8),(3)&7
	line	427
	bsf	(_RF24_attr_config)+(2/8),(2)&7
	line	429
	
l1660:	
	movf	(_RF24_attr_config),w
	movwf	(??_RF24_setCRCLength+0)+0
	movf	(??_RF24_setCRCLength+0)+0,w
	movwf	(RF24_write_register@value)
	movlw	low(0)
	fcall	_RF24_write_register
	line	430
	
l503:	
	return
	callstack 0
GLOBAL	__end_of_RF24_setCRCLength
	__end_of_RF24_setCRCLength:
	signat	_RF24_setCRCLength,4217
	global	_RF24_setAutoAck

;; *************** function _RF24_setAutoAck *****************
;; Defined at:
;;		line 342 in file "F:/GitHub/Graduation-Project/Lib-test/nRF1828/libs/rf24.c"
;; Parameters:    Size  Location     Type
;;  enable          1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  enable          1    8[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         1       0       0       0
;;      Temps:          1       0       0       0
;;      Totals:         2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_RF24_write_register
;; This function is called by:
;;		_Network_begin
;; This function uses a non-reentrant model
;;
psect	text13,local,class=CODE,delta=2,merge=1,group=1
	line	342
global __ptext13
__ptext13:	;psect for function _RF24_setAutoAck
psect	text13
	file	"F:/GitHub/Graduation-Project/Lib-test/nRF1828/libs/rf24.c"
	line	342
	
_RF24_setAutoAck:	
;incstack = 0
	callstack 12
; Regs used in _RF24_setAutoAck: [wreg+status,2+status,0+pclath+cstack]
	movwf	(RF24_setAutoAck@enable)
	line	344
	
l1662:	
	movf	((RF24_setAutoAck@enable)),w
	btfsc	status,2
	goto	u381
	goto	u380
u381:
	goto	l1666
u380:
	line	346
	
l1664:	
	movlw	low(03Fh)
	movwf	(??_RF24_setAutoAck+0)+0
	movf	(??_RF24_setAutoAck+0)+0,w
	movwf	(RF24_write_register@value)
	movlw	low(01h)
	fcall	_RF24_write_register
	line	347
	goto	l478
	line	350
	
l1666:	
	clrf	(RF24_write_register@value)
	movlw	low(01h)
	fcall	_RF24_write_register
	line	352
	
l478:	
	return
	callstack 0
GLOBAL	__end_of_RF24_setAutoAck
	__end_of_RF24_setAutoAck:
	signat	_RF24_setAutoAck,4217
	global	_RF24_openReadingPipe

;; *************** function _RF24_openReadingPipe *****************
;; Defined at:
;;		line 312 in file "F:/GitHub/Graduation-Project/Lib-test/nRF1828/libs/rf24.c"
;; Parameters:    Size  Location     Type
;;  child           1    wreg     unsigned char 
;;  address         2    7[COMMON] PTR unsigned char 
;;		 -> BASE_PIPE(5), networkInfo(6), 
;; Auto vars:     Size  Location     Type
;;  child           1   11[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         2       0       0       0
;;      Locals:         1       0       0       0
;;      Temps:          2       0       0       0
;;      Totals:         5       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_RF24_read_register
;;		_RF24_write_n_register
;;		_RF24_write_register
;; This function is called by:
;;		_internet_setNetworkPipe
;;		_Network_begin
;;		_internet_relay
;; This function uses a non-reentrant model
;;
psect	text14,local,class=CODE,delta=2,merge=1,group=1
	line	312
global __ptext14
__ptext14:	;psect for function _RF24_openReadingPipe
psect	text14
	file	"F:/GitHub/Graduation-Project/Lib-test/nRF1828/libs/rf24.c"
	line	312
	
_RF24_openReadingPipe:	
;incstack = 0
	callstack 12
; Regs used in _RF24_openReadingPipe: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	movwf	(RF24_openReadingPipe@child)
	line	314
	
l1482:	
	movlw	low(02h)
	subwf	(RF24_openReadingPipe@child),w
	skipnc
	goto	u251
	goto	u250
u251:
	goto	l1486
u250:
	line	316
	
l1484:	
	movf	(RF24_openReadingPipe@address+1),w
	movwf	(RF24_write_n_register@buffer+1)
	movf	(RF24_openReadingPipe@address),w
	movwf	(RF24_write_n_register@buffer)
	movlw	low(05h)
	movwf	(??_RF24_openReadingPipe+0)+0
	movf	(??_RF24_openReadingPipe+0)+0,w
	movwf	(RF24_write_n_register@length)
	movf	(RF24_openReadingPipe@child),w
	addlw	0Ah
	fcall	_RF24_write_n_register
	line	317
	goto	l1488
	line	320
	
l1486:	
	movf	(RF24_openReadingPipe@address),w
	movwf	fsr0l
	movf	((RF24_openReadingPipe@address+1)),w
	movwf	fsr0h
	movf	indf0,w ;code access
	movwf	(??_RF24_openReadingPipe+0)+0
	movf	(??_RF24_openReadingPipe+0)+0,w
	movwf	(RF24_write_register@value)
	movf	(RF24_openReadingPipe@child),w
	addlw	0Ah
	fcall	_RF24_write_register
	line	322
	
l1488:	
	movlw	low(01h)
	movwf	(??_RF24_openReadingPipe+0)+0
	incf	(RF24_openReadingPipe@child),w
	goto	u264
u265:
	lslf	(??_RF24_openReadingPipe+0)+0,f
u264:
	decfsz	wreg,f
	goto	u265
	movlw	low(02h)
	fcall	_RF24_read_register
	iorwf	0+(??_RF24_openReadingPipe+0)+0,w
	movwf	(??_RF24_openReadingPipe+1)+0
	movf	(??_RF24_openReadingPipe+1)+0,w
	movwf	(RF24_write_register@value)
	movlw	low(02h)
	fcall	_RF24_write_register
	line	323
	
l464:	
	return
	callstack 0
GLOBAL	__end_of_RF24_openReadingPipe
	__end_of_RF24_openReadingPipe:
	signat	_RF24_openReadingPipe,8313
	global	_RF24_write_n_register

;; *************** function _RF24_write_n_register *****************
;; Defined at:
;;		line 29 in file "F:/GitHub/Graduation-Project/Lib-test/nRF1828/libs/rf24.c"
;; Parameters:    Size  Location     Type
;;  mnemonic_add    1    wreg     unsigned char 
;;  buffer          2    1[COMMON] PTR unsigned char 
;;		 -> BASE_PIPE(5), networkInfo(6), 
;;  length          1    3[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  mnemonic_add    1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         3       0       0       0
;;      Locals:         1       0       0       0
;;      Temps:          1       0       0       0
;;      Totals:         5       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		_SPI_exchangeByte
;; This function is called by:
;;		_RF24_openReadingPipe
;; This function uses a non-reentrant model
;;
psect	text15,local,class=CODE,delta=2,merge=1,group=1
	line	29
global __ptext15
__ptext15:	;psect for function _RF24_write_n_register
psect	text15
	file	"F:/GitHub/Graduation-Project/Lib-test/nRF1828/libs/rf24.c"
	line	29
	
_RF24_write_n_register:	
;incstack = 0
	callstack 12
; Regs used in _RF24_write_n_register: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	movwf	(RF24_write_n_register@mnemonic_addr)
	line	31
	
l1452:	
	movlb 0	; select bank0
	bcf	(117/8),(117)&7	;volatile
	line	32
	
l1454:	
	movf	(RF24_write_n_register@mnemonic_addr),w
	iorlw	020h
	fcall	_SPI_exchangeByte
	movwf	(??_RF24_write_n_register+0)+0
	movf	(??_RF24_write_n_register+0)+0,w
	movlb 0	; select bank0
	movwf	(_RF24_attr_status)
	line	33
	goto	l1462
	line	35
	
l1456:	
	movf	(RF24_write_n_register@buffer),w
	movwf	fsr0l
	movf	((RF24_write_n_register@buffer+1)),w
	movwf	fsr0h
	movf	indf0,w ;code access
	fcall	_SPI_exchangeByte
	
l1458:	
	movlw	01h
	addwf	(RF24_write_n_register@buffer),f
	movlw	0
	addwfc	(RF24_write_n_register@buffer+1),f
	line	36
	
l1460:	
	movlw	01h
	subwf	(RF24_write_n_register@length),f
	line	33
	
l1462:	
	movf	((RF24_write_n_register@length)),w
	btfss	status,2
	goto	u231
	goto	u230
u231:
	goto	l1456
u230:
	
l386:	
	line	38
	movlb 0	; select bank0
	bsf	(117/8),(117)&7	;volatile
	line	39
	
l387:	
	return
	callstack 0
GLOBAL	__end_of_RF24_write_n_register
	__end_of_RF24_write_n_register:
	signat	_RF24_write_n_register,12409
	global	_RF24_getPALevel

;; *************** function _RF24_getPALevel *****************
;; Defined at:
;;		line 465 in file "F:/GitHub/Graduation-Project/Lib-test/nRF1828/libs/rf24.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         1       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_RF24_read_register
;; This function is called by:
;;		_Network_begin
;; This function uses a non-reentrant model
;;
psect	text16,local,class=CODE,delta=2,merge=1,group=1
	line	465
global __ptext16
__ptext16:	;psect for function _RF24_getPALevel
psect	text16
	file	"F:/GitHub/Graduation-Project/Lib-test/nRF1828/libs/rf24.c"
	line	465
	
_RF24_getPALevel:	
;incstack = 0
	callstack 12
; Regs used in _RF24_getPALevel: [wreg+status,2+status,0+pclath+cstack]
	line	467
	
l1668:	
;	Return value of _RF24_getPALevel is never used
	movlw	low(06h)
	fcall	_RF24_read_register
	line	468
	
l530:	
	return
	callstack 0
GLOBAL	__end_of_RF24_getPALevel
	__end_of_RF24_getPALevel:
	signat	_RF24_getPALevel,89
	global	_RF24_enableDynamicPayloads

;; *************** function _RF24_enableDynamicPayloads *****************
;; Defined at:
;;		line 330 in file "F:/GitHub/Graduation-Project/Lib-test/nRF1828/libs/rf24.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          1       0       0       0
;;      Totals:         1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_RF24_read_register
;;		_RF24_write_register
;; This function is called by:
;;		_Network_begin
;; This function uses a non-reentrant model
;;
psect	text17,local,class=CODE,delta=2,merge=1,group=1
	line	330
global __ptext17
__ptext17:	;psect for function _RF24_enableDynamicPayloads
psect	text17
	file	"F:/GitHub/Graduation-Project/Lib-test/nRF1828/libs/rf24.c"
	line	330
	
_RF24_enableDynamicPayloads:	
;incstack = 0
	callstack 12
; Regs used in _RF24_enableDynamicPayloads: [wreg+status,2+status,0+pclath+cstack]
	line	332
	
l1648:	
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
	
l470:	
	return
	callstack 0
GLOBAL	__end_of_RF24_enableDynamicPayloads
	__end_of_RF24_enableDynamicPayloads:
	signat	_RF24_enableDynamicPayloads,89
	global	_RF24_begin

;; *************** function _RF24_begin *****************
;; Defined at:
;;		line 59 in file "F:/GitHub/Graduation-Project/Lib-test/nRF1828/libs/rf24.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          2       0       0       0
;;      Totals:         2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
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
psect	text18,local,class=CODE,delta=2,merge=1,group=1
	line	59
global __ptext18
__ptext18:	;psect for function _RF24_begin
psect	text18
	file	"F:/GitHub/Graduation-Project/Lib-test/nRF1828/libs/rf24.c"
	line	59
	
_RF24_begin:	
;incstack = 0
	callstack 11
; Regs used in _RF24_begin: [wreg+status,2+status,0+pclath+cstack]
	line	62
	
l1610:	
	movlb 1	; select bank1
	bcf	(1142/8)^080h,(1142)&7	;volatile
	line	63
	bcf	(1141/8)^080h,(1141)&7	;volatile
	line	64
	movlb 0	; select bank0
	bcf	(118/8),(118)&7	;volatile
	line	65
	bsf	(117/8),(117)&7	;volatile
	line	66
	
l1612:	
	asmopt push
asmopt off
movlw  3
movwf	((??_RF24_begin+0)+0+1)
movlw	8
movwf	((??_RF24_begin+0)+0)
	movlw	119
u587:
decfsz	wreg
	goto	u587
	decfsz	((??_RF24_begin+0)+0),f
	goto	u587
	decfsz	((??_RF24_begin+0)+0+1),f
	goto	u587
	nop
asmopt pop

	line	76
	asmopt push
asmopt off
movlw	26
movwf	((??_RF24_begin+0)+0)
	movlw	248
u597:
decfsz	wreg
	goto	u597
	decfsz	((??_RF24_begin+0)+0),f
	goto	u597
	nop2
asmopt pop

	line	80
	
l1614:	
	movlw	low(0Fh)
	movwf	(??_RF24_begin+0)+0
	movf	(??_RF24_begin+0)+0,w
	movwf	(RF24_setRetries@count)
	movlw	low(05h)
	fcall	_RF24_setRetries
	line	85
	
l1616:	
	movlw	low(03h)
	fcall	_RF24_setPALevel
	line	86
	
l1618:	
	movlw	low(0)
	fcall	_RF24_setDataRate
	line	89
	
l1620:	
	clrf	(RF24_write_register@value)
	movlw	low(01Dh)
	fcall	_RF24_write_register
	line	90
	
l1622:	
	clrf	(RF24_write_register@value)
	movlw	low(01Ch)
	fcall	_RF24_write_register
	line	91
	
l1624:	
	movlw	low(03Fh)
	movwf	(??_RF24_begin+0)+0
	movf	(??_RF24_begin+0)+0,w
	movwf	(RF24_write_register@value)
	movlw	low(01h)
	fcall	_RF24_write_register
	line	92
	
l1626:	
	movlw	low(03h)
	movwf	(??_RF24_begin+0)+0
	movf	(??_RF24_begin+0)+0,w
	movwf	(RF24_write_register@value)
	movlw	low(02h)
	fcall	_RF24_write_register
	line	93
	
l1628:	
	movlw	low(020h)
	fcall	_RF24_setPayloadSize
	line	94
	
l1630:	
	movlw	low(05h)
	fcall	_RF24_setAddressWidth
	line	99
	
l1632:	
	movlw	low(04Ch)
	fcall	_RF24_setChannel
	line	103
	
l1634:	
	movlw	low(070h)
	movwf	(??_RF24_begin+0)+0
	movf	(??_RF24_begin+0)+0,w
	movwf	(RF24_write_register@value)
	movlw	low(07h)
	fcall	_RF24_write_register
	line	106
	
l1636:	
	fcall	_RF24_flush_rx
	line	107
	
l1638:	
	fcall	_RF24_flush_tx
	line	116
	
l1640:	
	movlw	low(0Ch)
	movwf	(??_RF24_begin+0)+0
	movf	(??_RF24_begin+0)+0,w
	movwf	(RF24_write_register@value)
	movlw	low(0)
	fcall	_RF24_write_register
	line	117
	
l1642:	
	fcall	_RF24_powerUp
	line	118
	
l1644:	
	movlw	low(0)
	fcall	_RF24_read_register
	movwf	(??_RF24_begin+0)+0
	movf	(??_RF24_begin+0)+0,w
	movlb 0	; select bank0
	movwf	(_RF24_attr_config)
	line	120
	
l396:	
	return
	callstack 0
GLOBAL	__end_of_RF24_begin
	__end_of_RF24_begin:
	signat	_RF24_begin,89
	global	_RF24_setRetries

;; *************** function _RF24_setRetries *****************
;; Defined at:
;;		line 469 in file "F:/GitHub/Graduation-Project/Lib-test/nRF1828/libs/rf24.c"
;; Parameters:    Size  Location     Type
;;  delay           1    wreg     unsigned char 
;;  count           1    7[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  delay           1   11[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         1       0       0       0
;;      Locals:         1       0       0       0
;;      Temps:          3       0       0       0
;;      Totals:         5       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_RF24_write_register
;; This function is called by:
;;		_RF24_begin
;; This function uses a non-reentrant model
;;
psect	text19,local,class=CODE,delta=2,merge=1,group=1
	line	469
global __ptext19
__ptext19:	;psect for function _RF24_setRetries
psect	text19
	file	"F:/GitHub/Graduation-Project/Lib-test/nRF1828/libs/rf24.c"
	line	469
	
_RF24_setRetries:	
;incstack = 0
	callstack 11
; Regs used in _RF24_setRetries: [wreg+status,2+status,0+pclath+cstack]
	movwf	(RF24_setRetries@delay)
	line	471
	
l1508:	
	movlw	low(0Fh)
	andwf	(RF24_setRetries@count),w
	movwf	(??_RF24_setRetries+0)+0
	movf	(RF24_setRetries@delay),w
	andlw	0Fh
	movwf	(??_RF24_setRetries+1)+0
	movlw	(04h)-1
u295:
	lslf	(??_RF24_setRetries+1)+0,f
	addlw	-1
	skipz
	goto	u295
	lslf	(??_RF24_setRetries+1)+0,w
	iorwf	0+(??_RF24_setRetries+0)+0,w
	movwf	(??_RF24_setRetries+2)+0
	movf	(??_RF24_setRetries+2)+0,w
	movwf	(RF24_write_register@value)
	movlw	low(04h)
	fcall	_RF24_write_register
	line	472
	
l533:	
	return
	callstack 0
GLOBAL	__end_of_RF24_setRetries
	__end_of_RF24_setRetries:
	signat	_RF24_setRetries,8313
	global	_RF24_setPayloadSize

;; *************** function _RF24_setPayloadSize *****************
;; Defined at:
;;		line 183 in file "F:/GitHub/Graduation-Project/Lib-test/nRF1828/libs/rf24.c"
;; Parameters:    Size  Location     Type
;;  size            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  size            1    8[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         1       0       0       0
;;      Temps:          1       0       0       0
;;      Totals:         2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_RF24_write_register
;; This function is called by:
;;		_Network_begin
;;		_RF24_begin
;; This function uses a non-reentrant model
;;
psect	text20,local,class=CODE,delta=2,merge=1,group=1
	line	183
global __ptext20
__ptext20:	;psect for function _RF24_setPayloadSize
psect	text20
	file	"F:/GitHub/Graduation-Project/Lib-test/nRF1828/libs/rf24.c"
	line	183
	
_RF24_setPayloadSize:	
;incstack = 0
	callstack 12
; Regs used in _RF24_setPayloadSize: [wreg+status,2+status,0+pclath+cstack]
	movwf	(RF24_setPayloadSize@size)
	line	185
	
l1506:	
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
	
l422:	
	return
	callstack 0
GLOBAL	__end_of_RF24_setPayloadSize
	__end_of_RF24_setPayloadSize:
	signat	_RF24_setPayloadSize,4217
	global	_RF24_setPALevel

;; *************** function _RF24_setPALevel *****************
;; Defined at:
;;		line 122 in file "F:/GitHub/Graduation-Project/Lib-test/nRF1828/libs/rf24.c"
;; Parameters:    Size  Location     Type
;;  level           1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  level           1   10[COMMON] unsigned char 
;;  setup           1    8[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         3       0       0       0
;;      Temps:          1       0       0       0
;;      Totals:         4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_RF24_read_register
;;		_RF24_write_register
;; This function is called by:
;;		_RF24_begin
;; This function uses a non-reentrant model
;;
psect	text21,local,class=CODE,delta=2,merge=1,group=1
	line	122
global __ptext21
__ptext21:	;psect for function _RF24_setPALevel
psect	text21
	file	"F:/GitHub/Graduation-Project/Lib-test/nRF1828/libs/rf24.c"
	line	122
	
_RF24_setPALevel:	
;incstack = 0
	callstack 11
; Regs used in _RF24_setPALevel: [wreg+status,2+status,0+pclath+cstack]
	movwf	(RF24_setPALevel@level)
	line	124
	
l1510:	
	movlw	low(06h)
	fcall	_RF24_read_register
	andlw	0F8h
	movwf	(??_RF24_setPALevel+0)+0
	movf	(??_RF24_setPALevel+0)+0,w
	movwf	(RF24_setPALevel@setup)
	line	125
	
l1512:	
	movlw	low(04h)
	subwf	(RF24_setPALevel@level),w
	skipnc
	goto	u301
	goto	u300
u301:
	goto	l1516
u300:
	
l1514:	
	movf	(RF24_setPALevel@level),w
	movwf	(??_RF24_setPALevel+0)+0
	movf	(??_RF24_setPALevel+0)+0,w
	movwf	(_RF24_setPALevel$582)
	goto	l1518
	
l1516:	
	movlw	low(03h)
	movwf	(??_RF24_setPALevel+0)+0
	movf	(??_RF24_setPALevel+0)+0,w
	movwf	(_RF24_setPALevel$582)
	
l1518:	
	lslf	(_RF24_setPALevel$582),w
	movwf	(??_RF24_setPALevel+0)+0
	movf	(??_RF24_setPALevel+0)+0,w
	iorwf	(RF24_setPALevel@setup),f
	line	126
	
l1520:	
	movf	(RF24_setPALevel@setup),w
	movwf	(??_RF24_setPALevel+0)+0
	movf	(??_RF24_setPALevel+0)+0,w
	movwf	(RF24_write_register@value)
	movlw	low(06h)
	fcall	_RF24_write_register
	line	127
	
l403:	
	return
	callstack 0
GLOBAL	__end_of_RF24_setPALevel
	__end_of_RF24_setPALevel:
	signat	_RF24_setPALevel,4217
	global	_RF24_setDataRate

;; *************** function _RF24_setDataRate *****************
;; Defined at:
;;		line 370 in file "F:/GitHub/Graduation-Project/Lib-test/nRF1828/libs/rf24.c"
;; Parameters:    Size  Location     Type
;;  speed           1    wreg     enum E2615
;; Auto vars:     Size  Location     Type
;;  speed           1    8[COMMON] enum E2615
;;  setup           1    9[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         2       0       0       0
;;      Temps:          1       0       0       0
;;      Totals:         3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_RF24_read_register
;;		_RF24_write_register
;; This function is called by:
;;		_Network_begin
;;		_RF24_begin
;; This function uses a non-reentrant model
;;
psect	text22,local,class=CODE,delta=2,merge=1,group=1
	line	370
global __ptext22
__ptext22:	;psect for function _RF24_setDataRate
psect	text22
	file	"F:/GitHub/Graduation-Project/Lib-test/nRF1828/libs/rf24.c"
	line	370
	
_RF24_setDataRate:	
;incstack = 0
	callstack 12
; Regs used in _RF24_setDataRate: [wreg+status,2+status,0+pclath+cstack]
	movwf	(RF24_setDataRate@speed)
	line	372
	
l1492:	
	movlw	low(06h)
	fcall	_RF24_read_register
	movwf	(??_RF24_setDataRate+0)+0
	movf	(??_RF24_setDataRate+0)+0,w
	movwf	(RF24_setDataRate@setup)
	line	374
	
l1494:	
	movf	(RF24_setDataRate@setup),w
	andlw	0D7h
	movwf	(??_RF24_setDataRate+0)+0
	movf	(??_RF24_setDataRate+0)+0,w
	movwf	(RF24_setDataRate@setup)
	line	375
	
l1496:	
		movlw	2
	xorwf	((RF24_setDataRate@speed)),w
	btfss	status,2
	goto	u271
	goto	u270
u271:
	goto	l1500
u270:
	line	377
	
l1498:	
	bsf	(RF24_setDataRate@setup)+(5/8),(5)&7
	line	378
	goto	l1504
	line	379
	
l1500:	
		decf	((RF24_setDataRate@speed)),w
	btfss	status,2
	goto	u281
	goto	u280
u281:
	goto	l1504
u280:
	line	381
	
l1502:	
	bsf	(RF24_setDataRate@setup)+(3/8),(3)&7
	line	383
	
l1504:	
	movf	(RF24_setDataRate@setup),w
	movwf	(??_RF24_setDataRate+0)+0
	movf	(??_RF24_setDataRate+0)+0,w
	movwf	(RF24_write_register@value)
	movlw	low(06h)
	fcall	_RF24_write_register
	line	384
	
l489:	
	return
	callstack 0
GLOBAL	__end_of_RF24_setDataRate
	__end_of_RF24_setDataRate:
	signat	_RF24_setDataRate,4217
	global	_RF24_setChannel

;; *************** function _RF24_setChannel *****************
;; Defined at:
;;		line 449 in file "F:/GitHub/Graduation-Project/Lib-test/nRF1828/libs/rf24.c"
;; Parameters:    Size  Location     Type
;;  channel         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  channel         1    8[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         1       0       0       0
;;      Temps:          1       0       0       0
;;      Totals:         2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_RF24_write_register
;; This function is called by:
;;		_internet_setChannel
;;		_RF24_begin
;; This function uses a non-reentrant model
;;
psect	text23,local,class=CODE,delta=2,merge=1,group=1
	line	449
global __ptext23
__ptext23:	;psect for function _RF24_setChannel
psect	text23
	file	"F:/GitHub/Graduation-Project/Lib-test/nRF1828/libs/rf24.c"
	line	449
	
_RF24_setChannel:	
;incstack = 0
	callstack 12
; Regs used in _RF24_setChannel: [wreg+status,2+status,0+pclath+cstack]
	movwf	(RF24_setChannel@channel)
	line	451
	
l1472:	
	movf	(RF24_setChannel@channel),w
	movwf	(??_RF24_setChannel+0)+0
	movf	(??_RF24_setChannel+0)+0,w
	movwf	(RF24_write_register@value)
	movlw	low(05h)
	fcall	_RF24_write_register
	line	452
	
l518:	
	return
	callstack 0
GLOBAL	__end_of_RF24_setChannel
	__end_of_RF24_setChannel:
	signat	_RF24_setChannel,4217
	global	_RF24_setAddressWidth

;; *************** function _RF24_setAddressWidth *****************
;; Defined at:
;;		line 473 in file "F:/GitHub/Graduation-Project/Lib-test/nRF1828/libs/rf24.c"
;; Parameters:    Size  Location     Type
;;  w               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  w               1    8[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         1       0       0       0
;;      Temps:          1       0       0       0
;;      Totals:         2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_RF24_write_register
;; This function is called by:
;;		_Network_begin
;;		_RF24_begin
;; This function uses a non-reentrant model
;;
psect	text24,local,class=CODE,delta=2,merge=1,group=1
	line	473
global __ptext24
__ptext24:	;psect for function _RF24_setAddressWidth
psect	text24
	file	"F:/GitHub/Graduation-Project/Lib-test/nRF1828/libs/rf24.c"
	line	473
	
_RF24_setAddressWidth:	
;incstack = 0
	callstack 12
; Regs used in _RF24_setAddressWidth: [wreg+status,2+status,0+pclath+cstack]
	movwf	(RF24_setAddressWidth@w)
	line	475
	
l1490:	
	movf	(RF24_setAddressWidth@w),w
	addlw	0FEh
	andlw	03h
	movwf	(??_RF24_setAddressWidth+0)+0
	movf	(??_RF24_setAddressWidth+0)+0,w
	movwf	(RF24_write_register@value)
	movlw	low(03h)
	fcall	_RF24_write_register
	line	476
	
l536:	
	return
	callstack 0
GLOBAL	__end_of_RF24_setAddressWidth
	__end_of_RF24_setAddressWidth:
	signat	_RF24_setAddressWidth,4217
	global	_RF24_powerUp

;; *************** function _RF24_powerUp *****************
;; Defined at:
;;		line 177 in file "F:/GitHub/Graduation-Project/Lib-test/nRF1828/libs/rf24.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          1       0       0       0
;;      Totals:         1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_RF24_read_register
;;		_RF24_write_register
;; This function is called by:
;;		_RF24_begin
;; This function uses a non-reentrant model
;;
psect	text25,local,class=CODE,delta=2,merge=1,group=1
	line	177
global __ptext25
__ptext25:	;psect for function _RF24_powerUp
psect	text25
	file	"F:/GitHub/Graduation-Project/Lib-test/nRF1828/libs/rf24.c"
	line	177
	
_RF24_powerUp:	
;incstack = 0
	callstack 11
; Regs used in _RF24_powerUp: [wreg+status,2+status,0+pclath+cstack]
	line	179
	
l1526:	
	movlw	low(0)
	fcall	_RF24_read_register
	iorlw	02h
	movwf	(??_RF24_powerUp+0)+0
	movf	(??_RF24_powerUp+0)+0,w
	movwf	(RF24_write_register@value)
	movlw	low(0)
	fcall	_RF24_write_register
	line	180
	
l1528:	
	asmopt push
asmopt off
movlw	26
movwf	((??_RF24_powerUp+0)+0)
	movlw	248
u607:
decfsz	wreg
	goto	u607
	decfsz	((??_RF24_powerUp+0)+0),f
	goto	u607
	nop2
asmopt pop

	line	181
	
l419:	
	return
	callstack 0
GLOBAL	__end_of_RF24_powerUp
	__end_of_RF24_powerUp:
	signat	_RF24_powerUp,89
	global	_RF24_read_register

;; *************** function _RF24_read_register *****************
;; Defined at:
;;		line 18 in file "F:/GitHub/Graduation-Project/Lib-test/nRF1828/libs/rf24.c"
;; Parameters:    Size  Location     Type
;;  mnemonic_add    1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  mnemonic_add    1    2[COMMON] unsigned char 
;;  result          1    3[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         2       0       0       0
;;      Temps:          1       0       0       0
;;      Totals:         3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		_SPI_exchangeByte
;; This function is called by:
;;		_RF24_begin
;;		_RF24_setPALevel
;;		_RF24_isChipConnected
;;		_RF24_startListening
;;		_RF24_powerUp
;;		_RF24_openReadingPipe
;;		_RF24_enableDynamicPayloads
;;		_RF24_setDataRate
;;		_RF24_getPALevel
;; This function uses a non-reentrant model
;;
psect	text26,local,class=CODE,delta=2,merge=1,group=1
	line	18
global __ptext26
__ptext26:	;psect for function _RF24_read_register
psect	text26
	file	"F:/GitHub/Graduation-Project/Lib-test/nRF1828/libs/rf24.c"
	line	18
	
_RF24_read_register:	
;incstack = 0
	callstack 12
; Regs used in _RF24_read_register: [wreg+pclath+cstack]
	movwf	(RF24_read_register@mnemonic_addr)
	line	20
	
l1442:	
	movlb 0	; select bank0
	bcf	(117/8),(117)&7	;volatile
	line	22
	
l1444:	
	movf	(RF24_read_register@mnemonic_addr),w
	fcall	_SPI_exchangeByte
	movwf	(??_RF24_read_register+0)+0
	movf	(??_RF24_read_register+0)+0,w
	movlb 0	; select bank0
	movwf	(_RF24_attr_status)
	line	23
	movlw	low(0FFh)
	fcall	_SPI_exchangeByte
	movwf	(??_RF24_read_register+0)+0
	movf	(??_RF24_read_register+0)+0,w
	movwf	(RF24_read_register@result)
	line	24
	
l1446:	
	movlb 0	; select bank0
	bsf	(117/8),(117)&7	;volatile
	line	26
	
l1448:	
	movf	(RF24_read_register@result),w
	line	27
	
l381:	
	return
	callstack 0
GLOBAL	__end_of_RF24_read_register
	__end_of_RF24_read_register:
	signat	_RF24_read_register,4217
	global	_RF24_flush_tx

;; *************** function _RF24_flush_tx *****************
;; Defined at:
;;		line 437 in file "F:/GitHub/Graduation-Project/Lib-test/nRF1828/libs/rf24.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          1       0       0       0
;;      Totals:         1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_RF24_write_register
;; This function is called by:
;;		_RF24_begin
;;		_RF24_write
;; This function uses a non-reentrant model
;;
psect	text27,local,class=CODE,delta=2,merge=1,group=1
	line	437
global __ptext27
__ptext27:	;psect for function _RF24_flush_tx
psect	text27
	file	"F:/GitHub/Graduation-Project/Lib-test/nRF1828/libs/rf24.c"
	line	437
	
_RF24_flush_tx:	
;incstack = 0
	callstack 12
; Regs used in _RF24_flush_tx: [wreg+status,2+status,0+pclath+cstack]
	line	439
	
l1524:	
	movlw	low(0FFh)
	movwf	(??_RF24_flush_tx+0)+0
	movf	(??_RF24_flush_tx+0)+0,w
	movwf	(RF24_write_register@value)
	movlw	low(0E1h)
	fcall	_RF24_write_register
	line	440
	
l509:	
	return
	callstack 0
GLOBAL	__end_of_RF24_flush_tx
	__end_of_RF24_flush_tx:
	signat	_RF24_flush_tx,89
	global	_RF24_flush_rx

;; *************** function _RF24_flush_rx *****************
;; Defined at:
;;		line 441 in file "F:/GitHub/Graduation-Project/Lib-test/nRF1828/libs/rf24.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          1       0       0       0
;;      Totals:         1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_RF24_write_register
;; This function is called by:
;;		_RF24_begin
;; This function uses a non-reentrant model
;;
psect	text28,local,class=CODE,delta=2,merge=1,group=1
	line	441
global __ptext28
__ptext28:	;psect for function _RF24_flush_rx
psect	text28
	file	"F:/GitHub/Graduation-Project/Lib-test/nRF1828/libs/rf24.c"
	line	441
	
_RF24_flush_rx:	
;incstack = 0
	callstack 11
; Regs used in _RF24_flush_rx: [wreg+status,2+status,0+pclath+cstack]
	line	443
	
l1522:	
	movlw	low(0FFh)
	movwf	(??_RF24_flush_rx+0)+0
	movf	(??_RF24_flush_rx+0)+0,w
	movwf	(RF24_write_register@value)
	movlw	low(0E2h)
	fcall	_RF24_write_register
	line	444
	
l512:	
	return
	callstack 0
GLOBAL	__end_of_RF24_flush_rx
	__end_of_RF24_flush_rx:
	signat	_RF24_flush_rx,89
	global	_RF24_write_register

;; *************** function _RF24_write_register *****************
;; Defined at:
;;		line 42 in file "F:/GitHub/Graduation-Project/Lib-test/nRF1828/libs/rf24.c"
;; Parameters:    Size  Location     Type
;;  mnemonic_add    1    wreg     unsigned char 
;;  value           1    4[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  mnemonic_add    1    6[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         1       0       0       0
;;      Locals:         1       0       0       0
;;      Temps:          1       0       0       0
;;      Totals:         3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		_SPI_exchangeByte
;; This function is called by:
;;		_RF24_begin
;;		_RF24_setPALevel
;;		_RF24_startListening
;;		_RF24_powerUp
;;		_RF24_setPayloadSize
;;		_RF24_write
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
;;		_RF24_read
;; This function uses a non-reentrant model
;;
psect	text29,local,class=CODE,delta=2,merge=1,group=1
	line	42
global __ptext29
__ptext29:	;psect for function _RF24_write_register
psect	text29
	file	"F:/GitHub/Graduation-Project/Lib-test/nRF1828/libs/rf24.c"
	line	42
	
_RF24_write_register:	
;incstack = 0
	callstack 12
; Regs used in _RF24_write_register: [wreg+status,2+status,0+pclath+cstack]
	movwf	(RF24_write_register@mnemonic_addr)
	line	45
	
l1464:	
	movlb 0	; select bank0
	bcf	(117/8),(117)&7	;volatile
	line	46
	
l1466:	
	movf	(RF24_write_register@mnemonic_addr),w
	iorlw	020h
	fcall	_SPI_exchangeByte
	movwf	(??_RF24_write_register+0)+0
	movf	(??_RF24_write_register+0)+0,w
	movlb 0	; select bank0
	movwf	(_RF24_attr_status)
	line	47
	
l1468:	
	movf	(RF24_write_register@value),w
	fcall	_SPI_exchangeByte
	line	48
	
l1470:	
	movlb 0	; select bank0
	bsf	(117/8),(117)&7	;volatile
	line	49
	
l390:	
	return
	callstack 0
GLOBAL	__end_of_RF24_write_register
	__end_of_RF24_write_register:
	signat	_RF24_write_register,8313
	global	_SPI_exchangeByte

;; *************** function _SPI_exchangeByte *****************
;; Defined at:
;;		line 26 in file "F:/GitHub/Graduation-Project/Lib-test/nRF1828/libs/spi_master.c"
;; Parameters:    Size  Location     Type
;;  byte            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  byte            1    0[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         1       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
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
psect	text30,local,class=CODE,delta=2,merge=1,group=1
	file	"F:/GitHub/Graduation-Project/Lib-test/nRF1828/libs/spi_master.c"
	line	26
global __ptext30
__ptext30:	;psect for function _SPI_exchangeByte
psect	text30
	file	"F:/GitHub/Graduation-Project/Lib-test/nRF1828/libs/spi_master.c"
	line	26
	
_SPI_exchangeByte:	
;incstack = 0
	callstack 12
; Regs used in _SPI_exchangeByte: [wreg]
	movwf	(SPI_exchangeByte@byte)
	line	29
	
l1436:	
	movf	(SPI_exchangeByte@byte),w
	movlb 4	; select bank4
	movwf	(529)^0200h	;volatile
	line	31
	
l563:	
	line	30
	movlb 0	; select bank0
	btfss	(139/8),(139)&7	;volatile
	goto	u221
	goto	u220
u221:
	goto	l563
u220:
	
l565:	
	line	32
	bcf	(139/8),(139)&7	;volatile
	line	33
	
l1438:	
	movlb 4	; select bank4
	movf	(529)^0200h,w	;volatile
	line	34
	
l566:	
	return
	callstack 0
GLOBAL	__end_of_SPI_exchangeByte
	__end_of_SPI_exchangeByte:
	signat	_SPI_exchangeByte,4217
global	___latbits
___latbits	equ	1
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp+0
	end

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
	FNCALL	_main,_SPI_initialize
	FNCALL	_main,_internet_process
	FNCALL	_main,_internet_setAddress
	FNCALL	_main,_internet_setChannel
	FNCALL	_main,_internet_setNetworkPipe
	FNCALL	_main,_oxp_post
	FNCALL	_main,_transport_udp_tx
	FNCALL	_main,_wait_init
	FNCALL	_wait_init,_timerInit
	FNCALL	_oxp_post,_internet_process
	FNCALL	_oxp_post,_memcpy
	FNCALL	_oxp_post,_micros
	FNCALL	_oxp_post,_transport_udp_tx
	FNCALL	_internet_process,_RF24_available
	FNCALL	_internet_process,_RF24_getDynamicPayloadSize
	FNCALL	_internet_process,_RF24_read
	FNCALL	_internet_process,_internet_rx
	FNCALL	_internet_rx,_internet_config_rx
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
	FNCALL	_internet_relay,_internet_calculateMask
	FNCALL	_internet_relay,_internet_hasChild
	FNCALL	_RF24_write,_RF24_flush_tx
	FNCALL	_RF24_write,_RF24_get_status
	FNCALL	_RF24_write,_RF24_write_register
	FNCALL	_RF24_write,_SPI_exchangeByte
	FNCALL	_RF24_stopListening,_RF24_read_register
	FNCALL	_RF24_stopListening,_RF24_write_register
	FNCALL	_RF24_openWritingPipe,_RF24_write_n_register
	FNCALL	_internet_config_rx,_internet_setAddress
	FNCALL	_internet_config_rx,_internet_setNetworkPipe
	FNCALL	_internet_setAddress,_internet_calculateMask
	FNCALL	_internet_setAddress,_internet_setNetworkPipe
	FNCALL	_internet_setNetworkPipe,_RF24_openReadingPipe
	FNCALL	_internet_setNetworkPipe,_memcpy
	FNCALL	_RF24_read,_RF24_read_n_register
	FNCALL	_RF24_read,_RF24_write_register
	FNCALL	_RF24_read_n_register,_SPI_exchangeByte
	FNCALL	_RF24_getDynamicPayloadSize,_RF24_flush_rx
	FNCALL	_RF24_getDynamicPayloadSize,_RF24_read_register
	FNCALL	_RF24_available,_RF24_get_status
	FNCALL	_RF24_get_status,_SPI_exchangeByte
	FNCALL	_internet_setChannel,_RF24_setChannel
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
	FNCALL	_ISR,_timeISR
	FNCALL	intlevel1,_ISR
	global	intlevel1
	FNROOT	intlevel1
	global	_props
	global	_network_pipe
psect	idataBANK0,class=CODE,space=0,delta=2,noexec
global __pidataBANK0
__pidataBANK0:
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/app/src/main.c"
	line	15

;initializer for _props
	retlw	01h
	retlw	01h
	retlw	02h
	retlw	0FFh
psect	idataBANK1,class=CODE,space=0,delta=2,noexec
global __pidataBANK1
__pidataBANK1:
	line	24

;initializer for _network_pipe
	retlw	low(0)
	retlw	0FCh
	retlw	0B0h
	retlw	0E8h
	retlw	0F5h
psect	stringtext1,class=STRCODE,delta=2,noexec
global __pstringtext1
__pstringtext1:
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/include\internet.h"
	line	13
_BROADCAST_PIPE:
	retlw	0F9h
	retlw	036h
	retlw	0CDh
	retlw	0ACh
	retlw	0E7h
	global __end_of_BROADCAST_PIPE
__end_of_BROADCAST_PIPE:
	global	_BASE_PIPE
psect	stringtext2,class=STRCODE,delta=2,noexec
global __pstringtext2
__pstringtext2:
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/include\internet.h"
	line	12
_BASE_PIPE:
	retlw	059h
	retlw	0ECh
	retlw	0ADh
	retlw	0FCh
	retlw	084h
	global __end_of_BASE_PIPE
__end_of_BASE_PIPE:
	global	_BASE_PIPE
	global	_isConfigerd
	global	_RF24_attr_config
	global	_RF24_attr_status
	global	_node
	global	__microsMSB
	global	_OXPSTASTS
	global	_networkInfo
	global	_buffer_rx
	global	_buffer_tx
	global	_TMR1
_TMR1	set	0x16
	global	_TMR1IF
_TMR1IF	set	0x88
	global	_TMR1ON
_TMR1ON	set	0xC0
	global	_T1CKPS0
_T1CKPS0	set	0xC4
	global	_T1CKPS1
_T1CKPS1	set	0xC5
	global	_T1OSCEN
_T1OSCEN	set	0xC3
	global	_TMR1CS1
_TMR1CS1	set	0xC7
	global	_TMR1CS0
_TMR1CS0	set	0xC6
	global	_GIE
_GIE	set	0x5F
	global	_PEIE
_PEIE	set	0x5E
	global	_SSP1IF
_SSP1IF	set	0x8B
	global	_RC6
_RC6	set	0x76
	global	_RC5
_RC5	set	0x75
	global	_RC1
_RC1	set	0x71
	global	_RC3
_RC3	set	0x73
	global	_RC4
_RC4	set	0x74
	global	_OSCCON
_OSCCON	set	0x99
	global	_TMR1IE
_TMR1IE	set	0x488
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
	global	_TRISC1
_TRISC1	set	0x471
	global	_TRISC4
_TRISC4	set	0x474
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
	
STR_18:	
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
psect	stringtext3,class=STRCODE,delta=2,noexec
global __pstringtext3
__pstringtext3:
	
STR_1:	
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
psect	stringtext4,class=STRCODE,delta=2,noexec
global __pstringtext4
__pstringtext4:
	
STR_6:	
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
psect	stringtext5,class=STRCODE,delta=2,noexec
global __pstringtext5
__pstringtext5:
	
STR_10:	
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
psect	stringtext6,class=STRCODE,delta=2,noexec
global __pstringtext6
__pstringtext6:
	
STR_4:	
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
psect	stringtext7,class=STRCODE,delta=2,noexec
global __pstringtext7
__pstringtext7:
	
STR_8:	
	retlw	82	;'R'
	retlw	70	;'F'
	retlw	95	;'_'
	retlw	83	;'S'
	retlw	69	;'E'
	retlw	84	;'T'
	retlw	85	;'U'
	retlw	80	;'P'
	retlw	0
psect	stringtext8,class=STRCODE,delta=2,noexec
global __pstringtext8
__pstringtext8:
	
STR_5:	
	retlw	83	;'S'
	retlw	69	;'E'
	retlw	84	;'T'
	retlw	85	;'U'
	retlw	80	;'P'
	retlw	95	;'_'
	retlw	65	;'A'
	retlw	87	;'W'
	retlw	0
psect	stringtext9,class=STRCODE,delta=2,noexec
global __pstringtext9
__pstringtext9:
	
STR_2:	
	retlw	67	;'C'
	retlw	79	;'O'
	retlw	78	;'N'
	retlw	70	;'F'
	retlw	73	;'I'
	retlw	71	;'G'
	retlw	0
psect	stringtext10,class=STRCODE,delta=2,noexec
global __pstringtext10
__pstringtext10:
	
STR_9:	
	retlw	83	;'S'
	retlw	84	;'T'
	retlw	65	;'A'
	retlw	84	;'T'
	retlw	85	;'U'
	retlw	83	;'S'
	retlw	0
psect	stringtext11,class=STRCODE,delta=2,noexec
global __pstringtext11
__pstringtext11:
	
STR_11:	
	retlw	82	;'R'
	retlw	88	;'X'
	retlw	95	;'_'
	retlw	80	;'P'
	retlw	48	;'0'
	retlw	0
psect	stringtext12,class=STRCODE,delta=2,noexec
global __pstringtext12
__pstringtext12:
	
STR_12:	
	retlw	82	;'R'
	retlw	88	;'X'
	retlw	95	;'_'
	retlw	80	;'P'
	retlw	49	;'1'
	retlw	0
psect	stringtext13,class=STRCODE,delta=2,noexec
global __pstringtext13
__pstringtext13:
	
STR_13:	
	retlw	82	;'R'
	retlw	88	;'X'
	retlw	95	;'_'
	retlw	80	;'P'
	retlw	50	;'2'
	retlw	0
psect	stringtext14,class=STRCODE,delta=2,noexec
global __pstringtext14
__pstringtext14:
	
STR_14:	
	retlw	82	;'R'
	retlw	88	;'X'
	retlw	95	;'_'
	retlw	80	;'P'
	retlw	51	;'3'
	retlw	0
psect	stringtext15,class=STRCODE,delta=2,noexec
global __pstringtext15
__pstringtext15:
	
STR_15:	
	retlw	82	;'R'
	retlw	88	;'X'
	retlw	95	;'_'
	retlw	80	;'P'
	retlw	52	;'4'
	retlw	0
psect	stringtext16,class=STRCODE,delta=2,noexec
global __pstringtext16
__pstringtext16:
	
STR_16:	
	retlw	82	;'R'
	retlw	88	;'X'
	retlw	95	;'_'
	retlw	80	;'P'
	retlw	53	;'5'
	retlw	0
psect	stringtext17,class=STRCODE,delta=2,noexec
global __pstringtext17
__pstringtext17:
	
STR_3:	
	retlw	69	;'E'
	retlw	78	;'N'
	retlw	95	;'_'
	retlw	65	;'A'
	retlw	65	;'A'
	retlw	0
psect	stringtext18,class=STRCODE,delta=2,noexec
global __pstringtext18
__pstringtext18:
	
STR_7:	
	retlw	82	;'R'
	retlw	70	;'F'
	retlw	95	;'_'
	retlw	67	;'C'
	retlw	72	;'H'
	retlw	0
psect	stringtext19,class=STRCODE,delta=2,noexec
global __pstringtext19
__pstringtext19:
STR_17	equ	STR_10+8
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
_isConfigerd:
       ds      1

_RF24_attr_config:
       ds      1

_RF24_attr_status:
       ds      1

psect	dataBANK0,class=BANK0,space=1,noexec
global __pdataBANK0
__pdataBANK0:
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/app/src/main.c"
	line	15
_props:
       ds      4

psect	bssBANK1,class=BANK1,space=1,noexec
global __pbssBANK1
__pbssBANK1:
_node:
       ds      5

__microsMSB:
       ds      4

_OXPSTASTS:
       ds      35

_networkInfo:
       ds      6

psect	dataBANK1,class=BANK1,space=1,noexec
global __pdataBANK1
__pdataBANK1:
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/app/src/main.c"
	line	24
_network_pipe:
       ds      5

psect	bssBANK2,class=BANK2,space=1,noexec
global __pbssBANK2
__pbssBANK2:
_buffer_rx:
       ds      32

_buffer_tx:
       ds      32

	file	"app.s"
	line	#
psect inittext,class=CODE,delta=2
global init_ram,btemp
init_ram:
	movwf btemp
initloop:
	moviw fsr0++
	movwi fsr1++
	decfsz btemp
	goto initloop
	retlw 0
; Initialize objects allocated to BANK0
	global __pidataBANK0,__pdataBANK0
psect cinit,class=CODE,delta=2,merge=1
	movlw low(__pidataBANK0)
	movwf fsr0l
	movlw high(__pidataBANK0)|80h
	movwf fsr0h
	movlw low(__pdataBANK0)
	movwf fsr1l
	movlw high(__pdataBANK0)
	movwf fsr1h
	movlw 04h
	fcall init_ram
; Initialize objects allocated to BANK1
	global __pidataBANK1,__pdataBANK1
psect cinit,class=CODE,delta=2,merge=1
	movlw low(__pidataBANK1)
	movwf fsr0l
	movlw high(__pidataBANK1)|80h
	movwf fsr0h
	movlw low(__pdataBANK1)
	movwf fsr1l
	movlw high(__pdataBANK1)
	movwf fsr1h
	movlw 05h
	fcall init_ram
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
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2,merge=1
	global __pbssBANK1
	movlw	low(__pbssBANK1)
	movwf	fsr0l
	movlw	high(__pbssBANK1)
	movwf	fsr0h
	movlw	032h
	fcall	clear_ram0
; Clear objects allocated to BANK2
psect cinit,class=CODE,delta=2,merge=1
	global __pbssBANK2
	movlw	low(__pbssBANK2)
	movwf	fsr0l
	movlw	high(__pbssBANK2)
	movwf	fsr0h
	movlw	040h
	fcall	clear_ram0
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:
	bcf int$flags,0 ;clear compiler interrupt flag (level 1)
movlb 0
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_wait_init:	; 1 bytes @ 0x0
?_SPI_initialize:	; 1 bytes @ 0x0
??_SPI_initialize:	; 1 bytes @ 0x0
?_Network_begin:	; 1 bytes @ 0x0
?_internet_setChannel:	; 1 bytes @ 0x0
?_internet_setAddress:	; 1 bytes @ 0x0
?_internet_process:	; 1 bytes @ 0x0
?_RF24_isChipConnected:	; 1 bytes @ 0x0
?_timeISR:	; 1 bytes @ 0x0
??_timeISR:	; 1 bytes @ 0x0
?_RF24_setChannel:	; 1 bytes @ 0x0
?_RF24_getDynamicPayloadSize:	; 1 bytes @ 0x0
?_RF24_available:	; 1 bytes @ 0x0
?_internet_calculateMask:	; 1 bytes @ 0x0
??_internet_calculateMask:	; 1 bytes @ 0x0
?_internet_hasChild:	; 1 bytes @ 0x0
??_internet_hasChild:	; 1 bytes @ 0x0
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
??_SPI_exchangeByte:	; 1 bytes @ 0x0
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
??_timerInit:	; 1 bytes @ 0x0
?_memcpy:	; 2 bytes @ 0x0
	global	?_micros
?_micros:	; 4 bytes @ 0x0
	global	internet_calculateMask@address
internet_calculateMask@address:	; 1 bytes @ 0x0
	global	SPI_exchangeByte@byte
SPI_exchangeByte@byte:	; 1 bytes @ 0x0
	global	memcpy@d1
memcpy@d1:	; 2 bytes @ 0x0
	ds	1
?_RF24_read_n_register:	; 1 bytes @ 0x1
??_RF24_read_register:	; 1 bytes @ 0x1
?_RF24_write_n_register:	; 1 bytes @ 0x1
??_RF24_get_status:	; 1 bytes @ 0x1
	global	internet_calculateMask@mask
internet_calculateMask@mask:	; 1 bytes @ 0x1
	global	timerInit@mhz
timerInit@mhz:	; 1 bytes @ 0x1
	global	RF24_read_n_register@buf
RF24_read_n_register@buf:	; 2 bytes @ 0x1
	global	RF24_write_n_register@buffer
RF24_write_n_register@buffer:	; 2 bytes @ 0x1
	ds	1
??_RF24_available:	; 1 bytes @ 0x2
	global	internet_hasChild@address
internet_hasChild@address:	; 1 bytes @ 0x2
	global	RF24_read_register@mnemonic_addr
RF24_read_register@mnemonic_addr:	; 1 bytes @ 0x2
	global	timerInit@prescaler
timerInit@prescaler:	; 1 bytes @ 0x2
	global	memcpy@s1
memcpy@s1:	; 2 bytes @ 0x2
	ds	1
??_wait_init:	; 1 bytes @ 0x3
	global	RF24_read_n_register@len
RF24_read_n_register@len:	; 1 bytes @ 0x3
	global	RF24_read_register@result
RF24_read_register@result:	; 1 bytes @ 0x3
	global	RF24_write_n_register@length
RF24_write_n_register@length:	; 1 bytes @ 0x3
	global	RF24_available@pipe
RF24_available@pipe:	; 1 bytes @ 0x3
	global	wait_init@megaHertez
wait_init@megaHertez:	; 1 bytes @ 0x3
	ds	1
??_RF24_isChipConnected:	; 1 bytes @ 0x4
??_micros:	; 1 bytes @ 0x4
	global	?_RF24_getPALevel
?_RF24_getPALevel:	; 1 bytes @ 0x4
??_RF24_read_n_register:	; 1 bytes @ 0x4
??_RF24_write_n_register:	; 1 bytes @ 0x4
?_RF24_write_register:	; 1 bytes @ 0x4
	global	RF24_write_register@value
RF24_write_register@value:	; 1 bytes @ 0x4
	global	memcpy@n
memcpy@n:	; 2 bytes @ 0x4
	ds	1
??_RF24_getPALevel:	; 1 bytes @ 0x5
??_RF24_write_register:	; 1 bytes @ 0x5
	global	RF24_read_n_register@mnemonic_addr
RF24_read_n_register@mnemonic_addr:	; 1 bytes @ 0x5
	global	RF24_write_n_register@mnemonic_addr
RF24_write_n_register@mnemonic_addr:	; 1 bytes @ 0x5
	global	RF24_isChipConnected@width
RF24_isChipConnected@width:	; 1 bytes @ 0x5
	ds	1
??_memcpy:	; 1 bytes @ 0x6
??_RF24_openWritingPipe:	; 1 bytes @ 0x6
	global	RF24_write_register@mnemonic_addr
RF24_write_register@mnemonic_addr:	; 1 bytes @ 0x6
	ds	1
??_RF24_setChannel:	; 1 bytes @ 0x7
?_RF24_read:	; 1 bytes @ 0x7
?_RF24_openReadingPipe:	; 1 bytes @ 0x7
??_RF24_stopListening:	; 1 bytes @ 0x7
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
	global	RF24_read@len
RF24_read@len:	; 1 bytes @ 0x7
	global	RF24_openWritingPipe@address
RF24_openWritingPipe@address:	; 1 bytes @ 0x7
	global	RF24_setRetries@count
RF24_setRetries@count:	; 1 bytes @ 0x7
	global	RF24_openReadingPipe@address
RF24_openReadingPipe@address:	; 2 bytes @ 0x7
	global	memcpy@d
memcpy@d:	; 2 bytes @ 0x7
	ds	1
??_RF24_getDynamicPayloadSize:	; 1 bytes @ 0x8
??_RF24_read:	; 1 bytes @ 0x8
?_RF24_write:	; 1 bytes @ 0x8
??_RF24_setRetries:	; 1 bytes @ 0x8
	global	RF24_setPALevel@setup
RF24_setPALevel@setup:	; 1 bytes @ 0x8
	global	RF24_setPayloadSize@size
RF24_setPayloadSize@size:	; 1 bytes @ 0x8
	global	RF24_write@len
RF24_write@len:	; 1 bytes @ 0x8
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
	ds	1
??_internet_setChannel:	; 1 bytes @ 0x9
??_RF24_openReadingPipe:	; 1 bytes @ 0x9
??_RF24_write:	; 1 bytes @ 0x9
	global	internet_setChannel@channel
internet_setChannel@channel:	; 1 bytes @ 0x9
	global	_RF24_setPALevel$779
_RF24_setPALevel$779:	; 1 bytes @ 0x9
	global	RF24_getDynamicPayloadSize@result
RF24_getDynamicPayloadSize@result:	; 1 bytes @ 0x9
	global	RF24_read@buf
RF24_read@buf:	; 1 bytes @ 0x9
	global	RF24_setDataRate@setup
RF24_setDataRate@setup:	; 1 bytes @ 0x9
	global	memcpy@s
memcpy@s:	; 2 bytes @ 0x9
	ds	1
	global	RF24_setPALevel@level
RF24_setPALevel@level:	; 1 bytes @ 0xA
	global	RF24_write@buf
RF24_write@buf:	; 1 bytes @ 0xA
	ds	1
	global	RF24_openReadingPipe@child
RF24_openReadingPipe@child:	; 1 bytes @ 0xB
	global	RF24_setRetries@delay
RF24_setRetries@delay:	; 1 bytes @ 0xB
	global	memcpy@tmp
memcpy@tmp:	; 1 bytes @ 0xB
	ds	1
?_internet_setNetworkPipe:	; 1 bytes @ 0xC
??_internet_relay:	; 1 bytes @ 0xC
??_RF24_begin:	; 1 bytes @ 0xC
	global	internet_setNetworkPipe@pipe
internet_setNetworkPipe@pipe:	; 2 bytes @ 0xC
	ds	1
??_internet_tx:	; 1 bytes @ 0xD
	ds	1
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
??_Network_begin:	; 1 bytes @ 0x0
??_internet_setNetworkPipe:	; 1 bytes @ 0x0
?_internet_relay:	; 1 bytes @ 0x0
	global	internet_relay@size
internet_relay@size:	; 1 bytes @ 0x0
	ds	1
??_internet_setAddress:	; 1 bytes @ 0x1
	global	internet_relay@dstMask
internet_relay@dstMask:	; 1 bytes @ 0x1
	ds	1
	global	internet_relay@packetHeader
internet_relay@packetHeader:	; 1 bytes @ 0x2
	ds	1
	global	internet_relay@payload
internet_relay@payload:	; 1 bytes @ 0x3
	global	internet_setAddress@address
internet_setAddress@address:	; 1 bytes @ 0x3
	ds	1
?_internet_config_rx:	; 1 bytes @ 0x4
?_internet_tx:	; 1 bytes @ 0x4
	global	internet_config_rx@size
internet_config_rx@size:	; 1 bytes @ 0x4
	global	internet_tx@size
internet_tx@size:	; 1 bytes @ 0x4
	ds	1
??_internet_config_rx:	; 1 bytes @ 0x5
	global	internet_tx@packetHeader
internet_tx@packetHeader:	; 1 bytes @ 0x5
	ds	1
	global	internet_config_rx@payload
internet_config_rx@payload:	; 1 bytes @ 0x6
	global	internet_tx@payload
internet_tx@payload:	; 1 bytes @ 0x6
	ds	1
?_transport_udp_tx:	; 1 bytes @ 0x7
	global	internet_config_rx@confPacket
internet_config_rx@confPacket:	; 1 bytes @ 0x7
	global	transport_udp_tx@size
transport_udp_tx@size:	; 1 bytes @ 0x7
	ds	1
	global	transport_udp_tx@destination
transport_udp_tx@destination:	; 1 bytes @ 0x8
	ds	1
	global	transport_udp_tx@sourcePort
transport_udp_tx@sourcePort:	; 1 bytes @ 0x9
	ds	1
	global	transport_udp_tx@destinationPort
transport_udp_tx@destinationPort:	; 1 bytes @ 0xA
	ds	1
??_transport_udp_tx:	; 1 bytes @ 0xB
	ds	1
	global	transport_udp_tx@packetHeader
transport_udp_tx@packetHeader:	; 1 bytes @ 0xC
	ds	1
	global	transport_udp_tx@payload
transport_udp_tx@payload:	; 1 bytes @ 0xD
	ds	1
?_transport_udp_process:	; 1 bytes @ 0xE
	global	transport_udp_process@size
transport_udp_process@size:	; 1 bytes @ 0xE
	ds	1
	global	transport_udp_process@port
transport_udp_process@port:	; 1 bytes @ 0xF
	ds	1
??_transport_udp_process:	; 1 bytes @ 0x10
	ds	3
	global	transport_udp_process@i
transport_udp_process@i:	; 1 bytes @ 0x13
	ds	1
	global	transport_udp_process@payload
transport_udp_process@payload:	; 1 bytes @ 0x14
	ds	1
	global	transport_udp_process@prop
transport_udp_process@prop:	; 2 bytes @ 0x15
	ds	2
	global	transport_udp_process@response_196
transport_udp_process@response_196:	; 1 bytes @ 0x17
	ds	1
	global	transport_udp_process@response
transport_udp_process@response:	; 1 bytes @ 0x18
	ds	1
	global	transport_udp_process@packet
transport_udp_process@packet:	; 1 bytes @ 0x19
	ds	1
?_transport_udp_rx:	; 1 bytes @ 0x1A
	global	transport_udp_rx@size
transport_udp_rx@size:	; 1 bytes @ 0x1A
	ds	1
??_transport_udp_rx:	; 1 bytes @ 0x1B
	ds	2
	global	transport_udp_rx@packetHeader
transport_udp_rx@packetHeader:	; 1 bytes @ 0x1D
	ds	1
	global	transport_udp_rx@payload
transport_udp_rx@payload:	; 1 bytes @ 0x1E
	ds	1
?_internet_rx:	; 1 bytes @ 0x1F
	global	internet_rx@size
internet_rx@size:	; 1 bytes @ 0x1F
	ds	1
??_internet_rx:	; 1 bytes @ 0x20
	ds	2
	global	internet_rx@packetHeader
internet_rx@packetHeader:	; 1 bytes @ 0x22
	ds	1
	global	internet_rx@payload
internet_rx@payload:	; 1 bytes @ 0x23
	ds	1
??_internet_process:	; 1 bytes @ 0x24
	ds	1
	global	internet_process@size
internet_process@size:	; 1 bytes @ 0x25
	ds	1
?_oxp_post:	; 1 bytes @ 0x26
	global	oxp_post@destinationPort
oxp_post@destinationPort:	; 1 bytes @ 0x26
	ds	1
	global	oxp_post@properties
oxp_post@properties:	; 1 bytes @ 0x27
	ds	1
	global	oxp_post@propertiesLength
oxp_post@propertiesLength:	; 1 bytes @ 0x28
	ds	1
??_oxp_post:	; 1 bytes @ 0x29
	ds	4
	global	oxp_post@timeoutTime
oxp_post@timeoutTime:	; 4 bytes @ 0x2D
	ds	4
	global	oxp_post@destination
oxp_post@destination:	; 1 bytes @ 0x31
	ds	1
	global	oxp_post@packet
oxp_post@packet:	; 1 bytes @ 0x32
	ds	1
??_main:	; 1 bytes @ 0x33
	ds	3
;!
;!Data Sizes:
;!    Strings     158
;!    Constant    10
;!    Data        9
;!    BSS         117
;!    Persistent  32
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14     14      14
;!    BANK0            80     54      61
;!    BANK1            80      0      55
;!    BANK2            80      0      64

;!
;!Pointer List with Targets:
;!
;!    memcpy@d1	PTR void  size(2) Largest target is 35
;!		 -> networkInfo(BANK1[6]), OXPSTASTS(BANK1[35]), buffer_tx(BANK2[32]), 
;!
;!    memcpy@d	PTR unsigned char  size(2) Largest target is 35
;!		 -> networkInfo(BANK1[6]), OXPSTASTS(BANK1[35]), buffer_tx(BANK2[32]), 
;!
;!    memcpy@s1	PTR const void  size(2) Largest target is 32
;!		 -> networkInfo(BANK1[6]), buffer_rx(BANK2[32]), network_pipe(BANK1[5]), props(BANK0[4]), 
;!
;!    memcpy@s	PTR const unsigned char  size(2) Largest target is 32
;!		 -> networkInfo(BANK1[6]), buffer_rx(BANK2[32]), network_pipe(BANK1[5]), props(BANK0[4]), 
;!
;!    transport_udp_rx@payload	PTR unsigned char  size(1) Largest target is 32
;!		 -> buffer_rx(BANK2[32]), 
;!
;!    transport_udp_rx@packetHeader	PTR struct . size(1) Largest target is 32
;!		 -> buffer_rx(BANK2[32]), 
;!
;!    transport_udp_tx@payload	PTR unsigned char  size(1) Largest target is 32
;!		 -> buffer_tx(BANK2[32]), 
;!
;!    transport_udp_tx@packetHeader	PTR struct . size(1) Largest target is 32
;!		 -> buffer_tx(BANK2[32]), 
;!
;!    RF24_openWritingPipe@address	PTR unsigned char  size(1) Largest target is 6
;!		 -> networkInfo(BANK1[6]), 
;!
;!    RF24_openReadingPipe@address	PTR unsigned char  size(2) Largest target is 6
;!		 -> BASE_PIPE(CODE[5]), networkInfo(BANK1[6]), 
;!
;!    RF24_read@buf	PTR void  size(1) Largest target is 32
;!		 -> buffer_rx(BANK2[32]), 
;!
;!    RF24_write@buf	PTR void  size(1) Largest target is 32
;!		 -> buffer_rx(BANK2[32]), buffer_tx(BANK2[32]), 
;!
;!    RF24_write_n_register@buffer	PTR unsigned char  size(2) Largest target is 6
;!		 -> BASE_PIPE(CODE[5]), networkInfo(BANK1[6]), 
;!
;!    RF24_read_n_register@buf	PTR unsigned char  size(2) Largest target is 32
;!		 -> RF24_printDetails@buffer(COMMON[5]), buffer_rx(BANK2[32]), 
;!
;!    sp__internet_getRecievingBuffer	PTR unsigned char  size(1) Largest target is 32
;!		 -> buffer_rx(BANK2[32]), 
;!
;!    sp__internet_getTransmissionBuffer	PTR unsigned char  size(1) Largest target is 32
;!		 -> buffer_tx(BANK2[32]), 
;!
;!    internet_relay@payload	PTR unsigned char  size(1) Largest target is 32
;!		 -> buffer_rx(BANK2[32]), buffer_tx(BANK2[32]), 
;!
;!    internet_relay@packetHeader	PTR struct . size(1) Largest target is 32
;!		 -> buffer_rx(BANK2[32]), buffer_tx(BANK2[32]), 
;!
;!    internet_rx@payload	PTR unsigned char  size(1) Largest target is 32
;!		 -> buffer_rx(BANK2[32]), 
;!
;!    internet_rx@packetHeader	PTR struct . size(1) Largest target is 32
;!		 -> buffer_rx(BANK2[32]), 
;!
;!    internet_tx@payload	PTR unsigned char  size(1) Largest target is 32
;!		 -> buffer_tx(BANK2[32]), 
;!
;!    internet_tx@packetHeader	PTR struct . size(1) Largest target is 32
;!		 -> buffer_tx(BANK2[32]), 
;!
;!    internet_setNetworkPipe@pipe	PTR unsigned char  size(2) Largest target is 32
;!		 -> networkInfo(BANK1[6]), buffer_rx(BANK2[32]), network_pipe(BANK1[5]), 
;!
;!    internet_config_rx@payload	PTR unsigned char  size(1) Largest target is 32
;!		 -> buffer_rx(BANK2[32]), 
;!
;!    internet_config_rx@confPacket	PTR struct . size(1) Largest target is 32
;!		 -> buffer_rx(BANK2[32]), 
;!
;!    oxp_post@response	PTR const struct . size(1) Largest target is 35
;!		 -> OXPSTASTS.oxpResponseBuffer(BANK1[32]), OXPSTASTS(BANK1[35]), 
;!
;!    oxp_post@properties	PTR struct . size(1) Largest target is 4
;!		 -> props(BANK0[4]), 
;!
;!    oxp_post@packet	PTR struct . size(1) Largest target is 32
;!		 -> buffer_tx(BANK2[32]), 
;!
;!    transport_udp_process@response_196	PTR struct . size(1) Largest target is 32
;!		 -> buffer_tx(BANK2[32]), 
;!
;!    sp__memcpy	PTR void  size(2) Largest target is 35
;!		 -> networkInfo(BANK1[6]), OXPSTASTS(BANK1[35]), buffer_tx(BANK2[32]), 
;!
;!    transport_udp_process@response	PTR struct . size(1) Largest target is 32
;!		 -> buffer_tx(BANK2[32]), 
;!
;!    transport_udp_process@payload	PTR unsigned char  size(1) Largest target is 32
;!		 -> buffer_rx(BANK2[32]), 
;!
;!    transport_udp_process@packet	PTR struct . size(1) Largest target is 32
;!		 -> buffer_rx(BANK2[32]), 
;!


;!
;!Critical Paths under _main in COMMON
;!
;!    _main->_internet_setNetworkPipe
;!    _wait_init->_timerInit
;!    _transport_udp_tx->_internet_tx
;!    _internet_tx->_internet_relay
;!    _internet_relay->_RF24_openReadingPipe
;!    _RF24_write->_RF24_flush_tx
;!    _RF24_stopListening->_RF24_write_register
;!    _RF24_openWritingPipe->_RF24_write_n_register
;!    _internet_config_rx->_internet_setNetworkPipe
;!    _internet_setAddress->_internet_setNetworkPipe
;!    _internet_setNetworkPipe->_RF24_openReadingPipe
;!    _internet_setNetworkPipe->_memcpy
;!    _RF24_read->_RF24_write_register
;!    _RF24_read_n_register->_SPI_exchangeByte
;!    _RF24_getDynamicPayloadSize->_RF24_flush_rx
;!    _RF24_available->_RF24_get_status
;!    _RF24_get_status->_SPI_exchangeByte
;!    _internet_setChannel->_RF24_setChannel
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
;!Critical Paths under _ISR in COMMON
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_oxp_post
;!    _oxp_post->_internet_process
;!    _internet_process->_internet_rx
;!    _internet_rx->_transport_udp_rx
;!    _transport_udp_rx->_transport_udp_process
;!    _transport_udp_process->_transport_udp_tx
;!    _transport_udp_tx->_internet_tx
;!    _internet_tx->_internet_relay
;!    _internet_config_rx->_internet_setAddress
;!    _internet_setAddress->_internet_setNetworkPipe
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
;! (0) _main                                                11    11      0  238324
;!                                             51 BANK0      3     3      0
;!                      _Network_begin
;!               _RF24_isChipConnected
;!                     _SPI_initialize
;!                   _internet_process
;!                _internet_setAddress
;!                _internet_setChannel
;!            _internet_setNetworkPipe
;!                           _oxp_post
;!                   _transport_udp_tx
;!                          _wait_init
;! ---------------------------------------------------------------------------------
;! (1) _wait_init                                            1     1      0     114
;!                                              3 COMMON     1     1      0
;!                          _timerInit
;! ---------------------------------------------------------------------------------
;! (2) _timerInit                                            3     3      0      92
;!                                              0 COMMON     3     3      0
;! ---------------------------------------------------------------------------------
;! (1) _oxp_post                                            14    11      3   84486
;!                                             38 BANK0     13    10      3
;!                   _internet_process
;!                             _memcpy
;!                             _micros
;!                   _transport_udp_tx
;! ---------------------------------------------------------------------------------
;! (2) _micros                                               8     4      4       0
;!                                              0 COMMON     8     4      4
;! ---------------------------------------------------------------------------------
;! (2) _internet_process                                     2     2      0   61367
;!                                             36 BANK0      2     2      0
;!                     _RF24_available
;!         _RF24_getDynamicPayloadSize
;!                          _RF24_read
;!                        _internet_rx
;! ---------------------------------------------------------------------------------
;! (3) _internet_rx                                          5     4      1   54258
;!                                             31 BANK0      5     4      1
;!                 _internet_config_rx
;!                     _internet_relay
;!                   _transport_udp_rx
;! ---------------------------------------------------------------------------------
;! (4) _transport_udp_rx                                     5     4      1   24021
;!                                             26 BANK0      5     4      1
;!              _transport_udp_process
;! ---------------------------------------------------------------------------------
;! (5) _transport_udp_process                               12    10      2   23718
;!                                             14 BANK0     12    10      2
;!                             _memcpy
;!                   _transport_udp_tx
;! ---------------------------------------------------------------------------------
;! (1) _transport_udp_tx                                     7     3      4   21229
;!                                              7 BANK0      7     3      4
;!                        _internet_tx
;! ---------------------------------------------------------------------------------
;! (2) _internet_tx                                          4     3      1   18686
;!                                             13 COMMON     1     1      0
;!                                              4 BANK0      3     2      1
;!                     _internet_relay
;! ---------------------------------------------------------------------------------
;! (3) _internet_relay                                       6     5      1   18352
;!                                             12 COMMON     1     1      0
;!                                              0 BANK0      4     3      1
;!               _RF24_openReadingPipe
;!               _RF24_openWritingPipe
;!                _RF24_startListening
;!                 _RF24_stopListening
;!                         _RF24_write
;!             _internet_calculateMask
;!                  _internet_hasChild
;! ---------------------------------------------------------------------------------
;! (4) _internet_hasChild                                    3     3      0      22
;!                                              0 COMMON     3     3      0
;! ---------------------------------------------------------------------------------
;! (4) _RF24_write                                           3     2      1    6667
;!                                              8 COMMON     3     2      1
;!                      _RF24_flush_tx
;!                    _RF24_get_status
;!                _RF24_write_register
;!                   _SPI_exchangeByte
;! ---------------------------------------------------------------------------------
;! (4) _RF24_stopListening                                   1     1      0    3082
;!                                              7 COMMON     1     1      0
;!                 _RF24_read_register
;!                _RF24_write_register
;! ---------------------------------------------------------------------------------
;! (4) _RF24_openWritingPipe                                 2     2      0     515
;!                                              6 COMMON     2     2      0
;!              _RF24_write_n_register
;! ---------------------------------------------------------------------------------
;! (4) _internet_config_rx                                   4     3      1   11427
;!                                              4 BANK0      4     3      1
;!                _internet_setAddress
;!            _internet_setNetworkPipe
;! ---------------------------------------------------------------------------------
;! (5) _internet_setAddress                                  3     3      0    5634
;!                                              1 BANK0      3     3      0
;!             _internet_calculateMask
;!            _internet_setNetworkPipe
;! ---------------------------------------------------------------------------------
;! (5) _internet_setNetworkPipe                              3     1      2    5521
;!                                             12 COMMON     2     0      2
;!                                              0 BANK0      1     1      0
;!               _RF24_openReadingPipe
;!                             _memcpy
;! ---------------------------------------------------------------------------------
;! (2) _memcpy                                              12     6      6    1055
;!                                              0 COMMON    12     6      6
;! ---------------------------------------------------------------------------------
;! (4) _internet_calculateMask                               2     2      0      69
;!                                              0 COMMON     2     2      0
;! ---------------------------------------------------------------------------------
;! (3) _RF24_read                                            3     2      1    3872
;!                                              7 COMMON     3     2      1
;!               _RF24_read_n_register
;!                _RF24_write_register
;! ---------------------------------------------------------------------------------
;! (4) _RF24_read_n_register                                 5     2      3     619
;!                                              1 COMMON     5     2      3
;!                   _SPI_exchangeByte
;! ---------------------------------------------------------------------------------
;! (3) _RF24_getDynamicPayloadSize                           2     2      0    3127
;!                                              8 COMMON     2     2      0
;!                      _RF24_flush_rx
;!                 _RF24_read_register
;! ---------------------------------------------------------------------------------
;! (3) _RF24_available                                       2     2      0      45
;!                                              2 COMMON     2     2      0
;!                    _RF24_get_status
;! ---------------------------------------------------------------------------------
;! (5) _RF24_get_status                                      1     1      0      22
;!                                              1 COMMON     1     1      0
;!                   _SPI_exchangeByte
;! ---------------------------------------------------------------------------------
;! (1) _internet_setChannel                                  1     1      0    3059
;!                                              9 COMMON     1     1      0
;!                    _RF24_setChannel
;! ---------------------------------------------------------------------------------
;! (1) _SPI_initialize                                       0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _RF24_isChipConnected                                 2     2      0     112
;!                                              4 COMMON     2     2      0
;!                 _RF24_read_register
;! ---------------------------------------------------------------------------------
;! (1) _Network_begin                                        1     1      0   56799
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
;! (4) _RF24_startListening                                  1     1      0    3082
;!                                              7 COMMON     1     1      0
;!                 _RF24_read_register
;!                _RF24_write_register
;! ---------------------------------------------------------------------------------
;! (2) _RF24_setCRCLength                                    2     2      0    3059
;!                                              7 COMMON     2     2      0
;!                _RF24_write_register
;! ---------------------------------------------------------------------------------
;! (2) _RF24_setAutoAck                                      2     2      0    3037
;!                                              7 COMMON     2     2      0
;!                _RF24_write_register
;! ---------------------------------------------------------------------------------
;! (4) _RF24_openReadingPipe                                 5     3      2    4216
;!                                              7 COMMON     5     3      2
;!                 _RF24_read_register
;!              _RF24_write_n_register
;!                _RF24_write_register
;! ---------------------------------------------------------------------------------
;! (5) _RF24_write_n_register                                5     2      3     394
;!                                              1 COMMON     5     2      3
;!                   _SPI_exchangeByte
;! ---------------------------------------------------------------------------------
;! (2) _RF24_getPALevel                                      1     0      1      67
;!                                              4 COMMON     1     0      1
;!                 _RF24_read_register
;! ---------------------------------------------------------------------------------
;! (2) _RF24_enableDynamicPayloads                           1     1      0    3082
;!                                              7 COMMON     1     1      0
;!                 _RF24_read_register
;!                _RF24_write_register
;! ---------------------------------------------------------------------------------
;! (2) _RF24_begin                                           2     2      0   30898
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
;! (3) _RF24_setRetries                                      5     4      1    3135
;!                                              7 COMMON     5     4      1
;!                _RF24_write_register
;! ---------------------------------------------------------------------------------
;! (2) _RF24_setPayloadSize                                  2     2      0    3147
;!                                              7 COMMON     2     2      0
;!                _RF24_write_register
;! ---------------------------------------------------------------------------------
;! (3) _RF24_setPALevel                                      4     4      0    3174
;!                                              7 COMMON     4     4      0
;!                 _RF24_read_register
;!                _RF24_write_register
;! ---------------------------------------------------------------------------------
;! (2) _RF24_setDataRate                                     3     3      0    3174
;!                                              7 COMMON     3     3      0
;!                 _RF24_read_register
;!                _RF24_write_register
;! ---------------------------------------------------------------------------------
;! (2) _RF24_setChannel                                      2     2      0    3037
;!                                              7 COMMON     2     2      0
;!                _RF24_write_register
;! ---------------------------------------------------------------------------------
;! (2) _RF24_setAddressWidth                                 2     2      0    3037
;!                                              7 COMMON     2     2      0
;!                _RF24_write_register
;! ---------------------------------------------------------------------------------
;! (3) _RF24_powerUp                                         1     1      0    3082
;!                                              7 COMMON     1     1      0
;!                 _RF24_read_register
;!                _RF24_write_register
;! ---------------------------------------------------------------------------------
;! (5) _RF24_read_register                                   3     3      0      67
;!                                              1 COMMON     3     3      0
;!                   _SPI_exchangeByte
;! ---------------------------------------------------------------------------------
;! (5) _RF24_flush_tx                                        1     1      0    3015
;!                                              7 COMMON     1     1      0
;!                _RF24_write_register
;! ---------------------------------------------------------------------------------
;! (4) _RF24_flush_rx                                        1     1      0    3015
;!                                              7 COMMON     1     1      0
;!                _RF24_write_register
;! ---------------------------------------------------------------------------------
;! (5) _RF24_write_register                                  3     2      1    3015
;!                                              4 COMMON     3     2      1
;!                 _RF24_read_register (ARG)
;!                   _SPI_exchangeByte
;! ---------------------------------------------------------------------------------
;! (5) _SPI_exchangeByte                                     1     1      0      22
;!                                              0 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 5
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (13) _ISR                                                 0     0      0       0
;!                            _timeISR
;! ---------------------------------------------------------------------------------
;! (14) _timeISR                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 14
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
;!       _internet_config_rx
;!         _internet_setAddress
;!           _internet_calculateMask
;!           _internet_setNetworkPipe
;!             _RF24_openReadingPipe
;!             _memcpy
;!         _internet_setNetworkPipe
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
;!         _internet_calculateMask
;!         _internet_hasChild
;!       _transport_udp_rx
;!         _transport_udp_process
;!           _memcpy
;!           _transport_udp_tx
;!             _internet_tx
;!               _internet_relay
;!   _internet_setAddress
;!   _internet_setChannel
;!     _RF24_setChannel
;!   _internet_setNetworkPipe
;!   _oxp_post
;!     _internet_process
;!     _memcpy
;!     _micros
;!     _transport_udp_tx
;!   _transport_udp_tx
;!   _wait_init
;!     _timerInit
;!
;! _ISR (ROOT)
;!   _timeISR
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
;!ABS                  0      0      C2       4        0.0%
;!BITBANK0            50      0       0       5        0.0%
;!BITSFR4              0      0       0       5        0.0%
;!SFR4                 0      0       0       5        0.0%
;!BANK0               50     36      3D       6       76.2%
;!BITSFR5              0      0       0       6        0.0%
;!SFR5                 0      0       0       6        0.0%
;!BITBANK1            50      0       0       7        0.0%
;!BITSFR6              0      0       0       7        0.0%
;!SFR6                 0      0       0       7        0.0%
;!BANK1               50      0      37       8       68.8%
;!BITSFR7              0      0       0       8        0.0%
;!SFR7                 0      0       0       8        0.0%
;!BITBANK2            50      0       0       9        0.0%
;!BITSFR8              0      0       0       9        0.0%
;!SFR8                 0      0       0       9        0.0%
;!BANK2               50      0      40      10       80.0%
;!BITSFR9              0      0       0      10        0.0%
;!SFR9                 0      0       0      10        0.0%
;!BITSFR10             0      0       0      11        0.0%
;!SFR10                0      0       0      11        0.0%
;!DATA                 0      0      C2      11        0.0%
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
;;		line 35 in file "F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/app/src/main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  stopTime        4    0        unsigned long 
;;  startTime       4    0        unsigned long 
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
;;      Temps:          0       3       0       0
;;      Totals:         0       3       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels required when called: 14
;; This function calls:
;;		_Network_begin
;;		_RF24_isChipConnected
;;		_SPI_initialize
;;		_internet_process
;;		_internet_setAddress
;;		_internet_setChannel
;;		_internet_setNetworkPipe
;;		_oxp_post
;;		_transport_udp_tx
;;		_wait_init
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,merge=1,split=1,group=0
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/app/src/main.c"
	line	35
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/app/src/main.c"
	line	35
	
_main:	
;incstack = 0
	callstack 2
; Regs used in _main: [wreg-fsr1h+status,2+status,0+pclath+cstack]
	line	38
	
l2738:	
	movlw	low(07Ah)
	movlb 1	; select bank1
	movwf	(153)^080h	;volatile
	line	39
	
l2740:	
	bcf	(1139/8)^080h,(1139)&7	;volatile
	line	40
	
l2742:	
	bcf	(1140/8)^080h,(1140)&7	;volatile
	line	41
	
l2744:	
	bsf	(1137/8)^080h,(1137)&7	;volatile
	line	42
	
l2746:	
	movlw	low(010h)
	fcall	_wait_init
	line	43
	
l2748:	
	fcall	_SPI_initialize
	line	44
	
l2750:	
	fcall	_Network_begin
	line	45
	
l2752:	
	movlw	low(073h)
	fcall	_internet_setChannel
	line	46
	
l2754:	
	movlw	low(_network_pipe)
	movwf	(internet_setNetworkPipe@pipe)
	movlw	high(_network_pipe)
	movwf	(internet_setNetworkPipe@pipe+1)
	fcall	_internet_setNetworkPipe
	line	47
	
l2756:	
	movlw	low(0)
	fcall	_internet_setAddress
	line	48
	goto	l2764
	line	50
	
l2758:	
	fcall	_internet_process
	line	51
	
l2760:	
	movlw	1<<((116)&7)
	movlb 0	; select bank0
	xorwf	((116)/8),f
	line	52
	
l2762:	
	asmopt push
asmopt off
movlw  7
	movlb 0	; select bank0
movwf	((??_main+0)+0+1)
movlw	23
movwf	((??_main+0)+0)
	movlw	106
u1397:
decfsz	wreg
	goto	u1397
	decfsz	((??_main+0)+0),f
	goto	u1397
	decfsz	((??_main+0)+0+1),f
	goto	u1397
	nop
asmopt pop

	line	48
	
l2764:	
	movlb 0	; select bank0
	movf	((_isConfigerd)),w
	btfsc	status,2
	goto	u1331
	goto	u1330
u1331:
	goto	l2758
u1330:
	
l67:	
	line	55
	bcf	(115/8),(115)&7	;volatile
	line	56
	bsf	(116/8),(116)&7	;volatile
	line	57
	
l2766:	
	movlw	low(03h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(oxp_post@destinationPort)
	movlw	(low(_props|((0x0)<<8)))&0ffh
	movwf	(??_main+1)+0
	movf	(??_main+1)+0,w
	movwf	(oxp_post@properties)
	movlw	low(02h)
	movwf	(??_main+2)+0
	movf	(??_main+2)+0,w
	movwf	(oxp_post@propertiesLength)
	movlw	low(01h)
	fcall	_oxp_post
	line	59
	
l68:	
	line	61
	fcall	_internet_process
	line	62
	
l2768:	
	line	63
	
l2770:	
	movlb 0	; select bank0
	bcf	(115/8),(115)&7	;volatile
	line	64
	goto	l2774
	line	66
	
l2772:	
	movlw	1<<((115)&7)
	movlb 0	; select bank0
	xorwf	((115)/8),f
	line	67
	asmopt push
asmopt off
movlw  3
	movlb 0	; select bank0
movwf	((??_main+0)+0+1)
movlw	8
movwf	((??_main+0)+0)
	movlw	119
u1407:
decfsz	wreg
	goto	u1407
	decfsz	((??_main+0)+0),f
	goto	u1407
	decfsz	((??_main+0)+0+1),f
	goto	u1407
asmopt pop

	line	64
	
l2774:	
	fcall	_RF24_isChipConnected
	xorlw	low(0)&0ffh
	skipnz
	goto	u1341
	goto	u1340
u1341:
	goto	l2772
u1340:
	line	69
	
l2776:	
	movlw	low(08h)
	movlb 0	; select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(transport_udp_tx@size)
	clrf	(transport_udp_tx@destination)
	incf	(transport_udp_tx@destination),f
	movlw	low(03h)
	movwf	(??_main+1)+0
	movf	(??_main+1)+0,w
	movwf	(transport_udp_tx@sourcePort)
	movlw	low(03h)
	movwf	(??_main+2)+0
	movf	(??_main+2)+0,w
	movwf	(transport_udp_tx@destinationPort)
	movlw	(low(_buffer_tx|((0x1)<<8)))&0ffh
	fcall	_transport_udp_tx
	line	70
	
l2778:	
	movlb 0	; select bank0
	btfss	(113/8),(113)&7	;volatile
	goto	u1351
	goto	u1350
u1351:
	goto	l68
u1350:
	line	72
	
l2780:	
	comf	0+(_props)+01h,w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(_props)+01h
	line	73
	
l2782:	
	movlw	low(03h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(oxp_post@destinationPort)
	movlw	(low(_props|((0x0)<<8)))&0ffh
	movwf	(??_main+1)+0
	movf	(??_main+1)+0,w
	movwf	(oxp_post@properties)
	movlw	low(02h)
	movwf	(??_main+2)+0
	movf	(??_main+2)+0,w
	movwf	(oxp_post@propertiesLength)
	movlw	low(01h)
	fcall	_oxp_post
	goto	l68
	global	start
	ljmp	start
	callstack 0
	line	76
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_wait_init

;; *************** function _wait_init *****************
;; Defined at:
;;		line 3 in file "F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/wait.c"
;; Parameters:    Size  Location     Type
;;  megaHertez      1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  megaHertez      1    3[COMMON] unsigned char 
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
;;		_timerInit
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1,group=1
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/wait.c"
	line	3
global __ptext1
__ptext1:	;psect for function _wait_init
psect	text1
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/wait.c"
	line	3
	
_wait_init:	
;incstack = 0
	callstack 12
; Regs used in _wait_init: [wreg+status,2+status,0+pclath+cstack]
	movwf	(wait_init@megaHertez)
	line	5
	
l2318:	
	movf	(wait_init@megaHertez),w
	fcall	_timerInit
	line	6
	
l686:	
	return
	callstack 0
GLOBAL	__end_of_wait_init
	__end_of_wait_init:
	signat	_wait_init,4217
	global	_timerInit

;; *************** function _timerInit *****************
;; Defined at:
;;		line 3 in file "F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/timer.c"
;; Parameters:    Size  Location     Type
;;  mhz             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  mhz             1    1[COMMON] unsigned char 
;;  prescaler       1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
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
;;		Nothing
;; This function is called by:
;;		_wait_init
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1,group=1
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/timer.c"
	line	3
global __ptext2
__ptext2:	;psect for function _timerInit
psect	text2
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/timer.c"
	line	3
	
_timerInit:	
;incstack = 0
	callstack 12
; Regs used in _timerInit: [wreg+status,2+status,0]
	movwf	(timerInit@mhz)
	line	5
	
l2298:	
	clrc
	rrf	(timerInit@mhz),f
	clrc
	rrf	(timerInit@mhz),f

	line	6
	
l2300:	
	clrf	(timerInit@prescaler)
	line	7
	goto	l2306
	line	9
	
l2302:	
	movlw	low(01h)
	movwf	(??_timerInit+0)+0
	movf	(??_timerInit+0)+0,w
	addwf	(timerInit@prescaler),f
	line	10
	
l2304:	
	clrc
	rrf	(timerInit@mhz),f

	line	7
	
l2306:	
	movf	((timerInit@mhz)),w
	btfsc	status,2
	goto	u941
	goto	u940
u941:
	goto	l653
u940:
	
l2308:	
	btfss	(timerInit@mhz),(0)&7
	goto	u951
	goto	u950
u951:
	goto	l2302
u950:
	
l653:	
	line	26
	bsf	(94/8),(94)&7	;volatile
	line	27
	bsf	(95/8),(95)&7	;volatile
	line	28
	movlb 1	; select bank1
	bsf	(1160/8)^080h,(1160)&7	;volatile
	line	29
	movlb 0	; select bank0
	bcf	(198/8),(198)&7	;volatile
	line	30
	bcf	(199/8),(199)&7	;volatile
	line	31
	bsf	(195/8),(195)&7	;volatile
	line	32
	
l2310:	
	movf	(timerInit@prescaler),w
	movwf	(??_timerInit+0)+0
	movlw	01h
u965:
	lsrf	(??_timerInit+0)+0,f
	decfsz	wreg,f
	goto	u965
	btfsc	0+(??_timerInit+0)+0,0
	goto	u971
	goto	u970
	
u971:
	movlb 0	; select bank0
	bsf	(197/8),(197)&7	;volatile
	goto	u984
u970:
	movlb 0	; select bank0
	bcf	(197/8),(197)&7	;volatile
u984:
	line	33
	
l2312:	
	btfsc	(timerInit@prescaler),0
	goto	u991
	goto	u990
	
u991:
	movlb 0	; select bank0
	bsf	(196/8),(196)&7	;volatile
	goto	u1004
u990:
	movlb 0	; select bank0
	bcf	(196/8),(196)&7	;volatile
u1004:
	line	34
	
l2314:	
	bsf	(192/8),(192)&7	;volatile
	line	35
	
l2316:	
	clrf	(22)	;volatile
	clrf	(22+1)	;volatile
	line	40
	
l654:	
	return
	callstack 0
GLOBAL	__end_of_timerInit
	__end_of_timerInit:
	signat	_timerInit,4217
	global	_oxp_post

;; *************** function _oxp_post *****************
;; Defined at:
;;		line 129 in file "F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/app/src/main.c"
;; Parameters:    Size  Location     Type
;;  destination     1    wreg     unsigned char 
;;  destinationP    1   38[BANK0 ] unsigned char 
;;  properties      1   39[BANK0 ] PTR struct .
;;		 -> props(4), 
;;  propertiesLe    1   40[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  destination     1   49[BANK0 ] unsigned char 
;;  response        1    0        PTR const struct .
;;		 -> OXPSTASTS.oxpResponseBuffer(32), OXPSTASTS(35), 
;;  timeoutTime     4   45[BANK0 ] unsigned long 
;;  packet          1   50[BANK0 ] PTR struct .
;;		 -> buffer_tx(32), 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       3       0       0
;;      Locals:         0       6       0       0
;;      Temps:          0       4       0       0
;;      Totals:         0      13       0       0
;;Total ram usage:       13 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 13
;; This function calls:
;;		_internet_process
;;		_memcpy
;;		_micros
;;		_transport_udp_tx
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1,group=0
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/app/src/main.c"
	line	129
global __ptext3
__ptext3:	;psect for function _oxp_post
psect	text3
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/app/src/main.c"
	line	129
	
_oxp_post:	
;incstack = 0
	callstack 2
; Regs used in _oxp_post: [wreg-fsr1h+status,2+status,0+pclath+cstack]
	movlb 0	; select bank0
	movwf	(oxp_post@destination)
	line	132
	
l2706:	
	movlw	(low(_buffer_tx|((0x1)<<8)))&0ffh
	movwf	(??_oxp_post+0)+0
	movf	(??_oxp_post+0)+0,w
	movwf	(oxp_post@packet)
	line	133
	
l2708:	
	movf	(oxp_post@packet),w
	addlw	06h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,2
	line	134
	
l2710:	
	movlb 1	; select bank1
	movf	0+(_OXPSTASTS)^080h+01h,w
	movlb 0	; select bank0
	movwf	(??_oxp_post+0)+0
	movf	(oxp_post@packet),w
	addlw	05h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_oxp_post+0)+0,w
	movwf	indf1
	line	135
	
l2712:	
	movf	(oxp_post@packet),w
	addlw	06h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	andlw	not (((1<<2)-1)<<0)
	iorlw	(01h & ((1<<2)-1))<<0
	movwf	indf1
	line	136
	
l2714:	
	movlb 1	; select bank1
	movf	0+(_OXPSTASTS)^080h+01h,w
	movlb 0	; select bank0
	movwf	(??_oxp_post+0)+0
	movf	(??_oxp_post+0)+0,w
	movlb 1	; select bank1
	movwf	0+(_OXPSTASTS)^080h+02h
	line	137
	
l2716:	
	bsf	(_OXPSTASTS)^080h,0
	line	138
	
l2718:	
	bcf	(_OXPSTASTS)^080h,1
	line	139
	
l2720:	
	movlw	low(01h)
	movlb 0	; select bank0
	movwf	(??_oxp_post+0)+0
	movf	(??_oxp_post+0)+0,w
	movlb 1	; select bank1
	addwf	0+(_OXPSTASTS)^080h+01h,f
	line	140
	
l2722:	
	movlw	low(_buffer_tx+07h)
	movwf	(memcpy@d1)
	movlw	high(_buffer_tx+07h)
	movwf	(memcpy@d1+1)
	movlb 0	; select bank0
	movf	(oxp_post@properties),w
	movwf	(memcpy@s1)
	movlw	0x0

	movwf	(memcpy@s1+1)
	movf	(oxp_post@propertiesLength),w
	movwf	(??_oxp_post+0)+0
	clrf	(??_oxp_post+0)+0+1
	lslf	0+(??_oxp_post+0)+0,w
	movwf	(memcpy@n)
	rlf	1+(??_oxp_post+0)+0,w
	movwf	1+(memcpy@n)
	fcall	_memcpy
	line	142
	
l2724:	
	movlb 0	; select bank0
	lslf	(oxp_post@propertiesLength),w
	addlw	07h
	movwf	(??_oxp_post+0)+0
	movf	(??_oxp_post+0)+0,w
	movwf	(transport_udp_tx@size)
	movf	(oxp_post@destination),w
	movwf	(??_oxp_post+1)+0
	movf	(??_oxp_post+1)+0,w
	movwf	(transport_udp_tx@destination)
	movlw	low(03h)
	movwf	(??_oxp_post+2)+0
	movf	(??_oxp_post+2)+0,w
	movwf	(transport_udp_tx@sourcePort)
	movf	(oxp_post@destinationPort),w
	movwf	(??_oxp_post+3)+0
	movf	(??_oxp_post+3)+0,w
	movwf	(transport_udp_tx@destinationPort)
	movlw	(low(_buffer_tx|((0x1)<<8)))&0ffh
	fcall	_transport_udp_tx
	line	143
	
l2726:	
	fcall	_micros
	movlw	070h
	addwf	((0+(?_micros))),w
	movlb 0	; select bank0
	movwf	(oxp_post@timeoutTime)
	movlw	high(038270h)
	addwfc	((1+(?_micros))),w
	movwf	1+(oxp_post@timeoutTime)
	
	movlw	low highword(038270h)
	addwfc	((2+(?_micros))),w
	movwf	2+(oxp_post@timeoutTime)
	
	movlw	high highword(038270h)
	addwfc	((3+(?_micros))),w
	movwf	3+(oxp_post@timeoutTime)
	line	144
	goto	l2730
	line	146
	
l2728:	
	fcall	_internet_process
	line	144
	
l2730:	
	fcall	_micros
	movlb 0	; select bank0
	movf	(oxp_post@timeoutTime+3),w
	subwf	(3+(?_micros)),w
	skipz
	goto	u1305
	movf	(oxp_post@timeoutTime+2),w
	subwf	(2+(?_micros)),w
	skipz
	goto	u1305
	movf	(oxp_post@timeoutTime+1),w
	subwf	(1+(?_micros)),w
	skipz
	goto	u1305
	movf	(oxp_post@timeoutTime),w
	subwf	(0+(?_micros)),w
u1305:
	skipnc
	goto	u1301
	goto	u1300
u1301:
	goto	l100
u1300:
	
l2732:	
	movlb 1	; select bank1
	btfss	(_OXPSTASTS)^080h,1
	goto	u1311
	goto	u1310
u1311:
	goto	l2728
u1310:
	
l100:	
	line	148
	movlb 1	; select bank1
	btfss	(_OXPSTASTS)^080h,1
	goto	u1321
	goto	u1320
u1321:
	goto	l102
u1320:
	line	150
	
l2734:	
	line	154
	
l102:	
	return
	callstack 0
GLOBAL	__end_of_oxp_post
	__end_of_oxp_post:
	signat	_oxp_post,16505
	global	_micros

;; *************** function _micros *****************
;; Defined at:
;;		line 42 in file "F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/timer.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  4    0[COMMON] unsigned long 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         4       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          4       0       0       0
;;      Totals:         8       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_oxp_post
;;		_oxp_get
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1,inline,group=1
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/timer.c"
	line	42
global __ptext4
__ptext4:	;psect for function _micros
psect	text4
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/timer.c"
	line	42
	
_micros:	
;incstack = 0
	callstack 12
; Regs used in _micros: [wreg]
	line	44
	
l2232:	
	movlb 0	; select bank0
	movf	(22),w	;volatile
	movwf	((??_micros+0)+0)
	movf	(22+1),w	;volatile
	movwf	((??_micros+0)+0+1)
	clrf	((??_micros+0)+0+2)
	clrf	((??_micros+0)+0+3)
	movlb 1	; select bank1
	movf	(__microsMSB)^080h,w
	iorwf	0+(??_micros+0)+0,w
	movwf	(?_micros)
	movf	(__microsMSB+1)^080h,w
	iorwf	1+(??_micros+0)+0,w
	movwf	1+(?_micros)
	
	movf	(__microsMSB+2)^080h,w
	iorwf	2+(??_micros+0)+0,w
	movwf	2+(?_micros)
	
	movf	(__microsMSB+3)^080h,w
	iorwf	3+(??_micros+0)+0,w
	movwf	3+(?_micros)
	line	45
	
l657:	
	return
	callstack 0
GLOBAL	__end_of_micros
	__end_of_micros:
	signat	_micros,92
	global	_internet_process

;; *************** function _internet_process *****************
;; Defined at:
;;		line 13 in file "F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/internet.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  size            1   37[BANK0 ] unsigned char 
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
;;      Temps:          0       1       0       0
;;      Totals:         0       2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 12
;; This function calls:
;;		_RF24_available
;;		_RF24_getDynamicPayloadSize
;;		_RF24_read
;;		_internet_rx
;; This function is called by:
;;		_main
;;		_oxp_post
;;		_oxp_get
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1,group=1
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/internet.c"
	line	13
global __ptext5
__ptext5:	;psect for function _internet_process
psect	text5
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/internet.c"
	line	13
	
_internet_process:	
;incstack = 0
	callstack 2
; Regs used in _internet_process: [wreg-fsr1h+status,2+status,0+pclath+cstack]
	line	15
	
l2696:	
	goto	l2704
	line	18
	
l2698:	
	fcall	_RF24_getDynamicPayloadSize
	movlb 0	; select bank0
	movwf	(??_internet_process+0)+0
	movf	(??_internet_process+0)+0,w
	movwf	(internet_process@size)
	line	19
	
l2700:	
	movf	(internet_process@size),w
	movwf	(??_internet_process+0)+0
	movf	(??_internet_process+0)+0,w
	movwf	(RF24_read@len)
	movlw	(low(_buffer_rx|((0x1)<<8)))&0ffh
	fcall	_RF24_read
	line	20
	
l2702:	
	movlb 0	; select bank0
	movf	(internet_process@size),w
	movwf	(??_internet_process+0)+0
	movf	(??_internet_process+0)+0,w
	movwf	(internet_rx@size)
	movlw	(low(_buffer_rx|((0x1)<<8)))&0ffh
	fcall	_internet_rx
	line	15
	
l2704:	
	fcall	_RF24_available
	xorlw	low(0)&0ffh
	skipz
	goto	u1291
	goto	u1290
u1291:
	goto	l2698
u1290:
	line	22
	
l333:	
	return
	callstack 0
GLOBAL	__end_of_internet_process
	__end_of_internet_process:
	signat	_internet_process,89
	global	_internet_rx

;; *************** function _internet_rx *****************
;; Defined at:
;;		line 37 in file "F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/internet.c"
;; Parameters:    Size  Location     Type
;;  payload         1    wreg     PTR unsigned char 
;;		 -> buffer_rx(32), 
;;  size            1   31[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  payload         1   35[BANK0 ] PTR unsigned char 
;;		 -> buffer_rx(32), 
;;  packetHeader    1   34[BANK0 ] PTR struct .
;;		 -> buffer_rx(32), 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       1       0       0
;;      Locals:         0       2       0       0
;;      Temps:          0       2       0       0
;;      Totals:         0       5       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 11
;; This function calls:
;;		_internet_config_rx
;;		_internet_relay
;;		_transport_udp_rx
;; This function is called by:
;;		_internet_process
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1,group=1
	line	37
global __ptext6
__ptext6:	;psect for function _internet_rx
psect	text6
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/internet.c"
	line	37
	
_internet_rx:	
;incstack = 0
	callstack 2
; Regs used in _internet_rx: [wreg-fsr1h+status,2+status,0+pclath+cstack]
	movlb 0	; select bank0
	movwf	(internet_rx@payload)
	line	39
	
l2676:	
	movf	(internet_rx@payload),w
	movwf	(??_internet_rx+0)+0
	movf	(??_internet_rx+0)+0,w
	movwf	(internet_rx@packetHeader)
	line	40
	
l2678:	
	movf	(internet_rx@packetHeader),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movlb 1	; select bank1
	xorwf	(_node)^080h,w
	skipnz
	goto	u1281
	goto	u1280
u1281:
	goto	l2690
u1280:
	line	43
	
l2680:	
	movlb 0	; select bank0
	movf	(internet_rx@size),w
	movwf	(??_internet_rx+0)+0
	movf	(??_internet_rx+0)+0,w
	movwf	(internet_relay@size)
	movf	(internet_rx@payload),w
	fcall	_internet_relay
	goto	l343
	line	55
	
l2684:	
	movf	(internet_rx@size),w
	movwf	(??_internet_rx+0)+0
	movf	(??_internet_rx+0)+0,w
	movwf	(transport_udp_rx@size)
	movf	(internet_rx@payload),w
	fcall	_transport_udp_rx
	line	56
	goto	l343
	line	58
	
l2686:	
	movf	(internet_rx@size),w
	movwf	(??_internet_rx+0)+0
	movf	(??_internet_rx+0)+0,w
	movwf	(internet_config_rx@size)
	movf	(internet_rx@payload),w
	fcall	_internet_config_rx
	line	59
	goto	l343
	line	63
	
l2690:	
	movlb 0	; select bank0
	incf	(internet_rx@packetHeader),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_internet_rx+0)+0
	clrf	(??_internet_rx+0)+0+1
	; Switch on 2 bytes has been partitioned into a top level switch of size 1, and 1 sub-switches
; Switch size 1, requested type "simple"
; Number of cases is 1, Range of values is 0 to 0
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
; direct_byte            8     6 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	movf 1+(??_internet_rx+0)+0,w
	asmopt push
	asmopt off
	xorlw	0^0	; case 0
	skipnz
	goto	l2834
	goto	l343
	asmopt pop
	
l2834:	
; Switch size 1, requested type "simple"
; Number of cases is 4, Range of values is 0 to 3
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           13     7 (average)
; direct_byte           14     6 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	movf 0+(??_internet_rx+0)+0,w
	asmopt push
	asmopt off
	xorlw	0^0	; case 0
	skipnz
	goto	l343
	xorlw	1^0	; case 1
	skipnz
	goto	l2684
	xorlw	2^1	; case 2
	skipnz
	goto	l343
	xorlw	3^2	; case 3
	skipnz
	goto	l2686
	goto	l343
	asmopt pop

	line	64
	
l343:	
	return
	callstack 0
GLOBAL	__end_of_internet_rx
	__end_of_internet_rx:
	signat	_internet_rx,8313
	global	_transport_udp_rx

;; *************** function _transport_udp_rx *****************
;; Defined at:
;;		line 12 in file "F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/transport.c"
;; Parameters:    Size  Location     Type
;;  payload         1    wreg     PTR unsigned char 
;;		 -> buffer_rx(32), 
;;  size            1   26[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  payload         1   30[BANK0 ] PTR unsigned char 
;;		 -> buffer_rx(32), 
;;  packetHeader    1   29[BANK0 ] PTR struct .
;;		 -> buffer_rx(32), 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       1       0       0
;;      Locals:         0       2       0       0
;;      Temps:          0       2       0       0
;;      Totals:         0       5       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 10
;; This function calls:
;;		_transport_udp_process
;; This function is called by:
;;		_internet_rx
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1,group=1
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/transport.c"
	line	12
global __ptext7
__ptext7:	;psect for function _transport_udp_rx
psect	text7
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/transport.c"
	line	12
	
_transport_udp_rx:	
;incstack = 0
	callstack 2
; Regs used in _transport_udp_rx: [wreg-fsr1h+status,2+status,0+pclath+cstack]
	movlb 0	; select bank0
	movwf	(transport_udp_rx@payload)
	line	14
	
l2668:	
	movf	(transport_udp_rx@payload),w
	movwf	(??_transport_udp_rx+0)+0
	movf	(??_transport_udp_rx+0)+0,w
	movwf	(transport_udp_rx@packetHeader)
	line	15
	
l2670:	
	movf	(transport_udp_rx@size),w
	movwf	(??_transport_udp_rx+0)+0
	movf	(??_transport_udp_rx+0)+0,w
	movwf	(transport_udp_process@size)
	movf	(transport_udp_rx@packetHeader),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	swapf	indf1,w
	andlw	(1<<4)-1
	movwf	(??_transport_udp_rx+1)+0
	movf	(??_transport_udp_rx+1)+0,w
	movwf	(transport_udp_process@port)
	movf	(transport_udp_rx@payload),w
	fcall	_transport_udp_process
	line	16
	
l679:	
	return
	callstack 0
GLOBAL	__end_of_transport_udp_rx
	__end_of_transport_udp_rx:
	signat	_transport_udp_rx,8313
	global	_transport_udp_process

;; *************** function _transport_udp_process *****************
;; Defined at:
;;		line 77 in file "F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/app/src/main.c"
;; Parameters:    Size  Location     Type
;;  payload         1    wreg     PTR unsigned char 
;;		 -> buffer_rx(32), 
;;  size            1   14[BANK0 ] unsigned char 
;;  port            1   15[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  payload         1   20[BANK0 ] PTR unsigned char 
;;		 -> buffer_rx(32), 
;;  prop            2   21[BANK0 ] struct .
;;  i               1   19[BANK0 ] unsigned char 
;;  response        1   23[BANK0 ] PTR struct .
;;		 -> buffer_tx(32), 
;;  response        1   24[BANK0 ] PTR struct .
;;		 -> buffer_tx(32), 
;;  packet          1   25[BANK0 ] PTR struct .
;;		 -> buffer_rx(32), 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       2       0       0
;;      Locals:         0       7       0       0
;;      Temps:          0       3       0       0
;;      Totals:         0      12       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 9
;; This function calls:
;;		_memcpy
;;		_transport_udp_tx
;; This function is called by:
;;		_transport_udp_rx
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1,group=0
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/app/src/main.c"
	line	77
global __ptext8
__ptext8:	;psect for function _transport_udp_process
psect	text8
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/app/src/main.c"
	line	77
	
_transport_udp_process:	
;incstack = 0
	callstack 2
; Regs used in _transport_udp_process: [wreg-fsr1h+status,2+status,0+pclath+cstack]
	movlb 0	; select bank0
	movwf	(transport_udp_process@payload)
	line	80
	
l2590:	
		movlw	3
	xorwf	((transport_udp_process@port)),w
	btfss	status,2
	goto	u1201
	goto	u1200
u1201:
	goto	l80
u1200:
	line	83
	
l2592:	
	movlw	low(07h)
	subwf	(transport_udp_process@size),w
	skipnc
	goto	u1211
	goto	u1210
u1211:
	goto	l2596
u1210:
	goto	l80
	line	85
	
l2596:	
	movf	(transport_udp_process@payload),w
	movwf	(??_transport_udp_process+0)+0
	movf	(??_transport_udp_process+0)+0,w
	movwf	(transport_udp_process@packet)
	line	86
	
l2598:	
	movf	(transport_udp_process@packet),w
	addlw	06h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	andlw	(1<<2)-1
	xorlw	0
	skipz
	goto	u1221
	goto	u1220
u1221:
	goto	l2618
u1220:
	line	88
	
l2600:	
	movlw	(low(_buffer_tx|((0x1)<<8)))&0ffh
	movwf	(??_transport_udp_process+0)+0
	movf	(??_transport_udp_process+0)+0,w
	movwf	(transport_udp_process@response)
	line	89
	
l2602:	
	movf	(transport_udp_process@packet),w
	addlw	05h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_transport_udp_process+0)+0
	movf	(transport_udp_process@response),w
	addlw	05h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_transport_udp_process+0)+0,w
	movwf	indf1
	line	90
	
l2604:	
	movf	(transport_udp_process@response),w
	addlw	06h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,2
	line	91
	
l2606:	
	movf	(transport_udp_process@response),w
	addlw	06h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	andlw	not (((1<<2)-1)<<0)
	iorlw	(02h & ((1<<2)-1))<<0
	movwf	indf1
	line	92
	
l2608:	
	movf	(transport_udp_process@packet),w
	addlw	02h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_transport_udp_process+0)+0
	movf	(transport_udp_process@response),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_transport_udp_process+0)+0,w
	movwf	indf1
	line	93
	
l2610:	
	movf	(transport_udp_process@packet),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	andlw	(1<<4)-1
	movwf	(??_transport_udp_process+0)+0
	movf	(transport_udp_process@response),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	swapf	(??_transport_udp_process+0)+0,f
	movf	indf1,w
	xorwf	(??_transport_udp_process+0)+0,w
	andlw	not (((1<<4)-1)<<4)
	xorwf	(??_transport_udp_process+0)+0,w
	movwf	indf1
	line	94
	
l2612:	
	movlw	low(020h)
	movwf	(??_transport_udp_process+0)+0
	movf	(transport_udp_process@response),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_transport_udp_process+0)+0,w
	movwf	indf1
	line	95
	
l2614:	
	movf	(transport_udp_process@response),w
	addlw	07h
	movwf	(memcpy@d1)
	movlw	0x1

	movwf	(memcpy@d1+1)
	movlw	low(_props)
	movwf	(memcpy@s1)
	movlw	high(_props)
	movwf	(memcpy@s1+1)
	movlw	04h
	movwf	(memcpy@n)
	movlw	0
	movwf	((memcpy@n))+1
	fcall	_memcpy
	line	96
	
l2616:	
	movlw	low(0Bh)
	movlb 0	; select bank0
	movwf	(??_transport_udp_process+0)+0
	movf	(??_transport_udp_process+0)+0,w
	movwf	(transport_udp_tx@size)
	movf	(transport_udp_process@packet),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw 1	; select bank2/3
	moviw	[02h]fsr1
	movwf	(transport_udp_tx@destination)
	movlw	low(03h)
	movwf	(??_transport_udp_process+1)+0
	movf	(??_transport_udp_process+1)+0,w
	movwf	(transport_udp_tx@sourcePort)
	movf	(transport_udp_process@packet),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	andlw	(1<<4)-1
	movwf	(??_transport_udp_process+2)+0
	movf	(??_transport_udp_process+2)+0,w
	movwf	(transport_udp_tx@destinationPort)
	movlw	(low(_buffer_tx|((0x1)<<8)))&0ffh
	fcall	_transport_udp_tx
	line	97
	goto	l2648
	line	98
	
l2618:	
	movf	(transport_udp_process@packet),w
	addlw	06h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	andlw	(1<<2)-1
	xorlw	01h
	skipz
	goto	u1231
	goto	u1230
u1231:
	goto	l2648
u1230:
	line	100
	
l2620:	
	clrf	(transport_udp_process@i)
	goto	l2630
	line	102
	
l2622:	
	lslf	(transport_udp_process@i),w
	addwf	(transport_udp_process@packet),w
	movwf	(??_transport_udp_process+0)+0
	movf	0+(??_transport_udp_process+0)+0,w
	addlw	07h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	moviw	[0]fsr1
	movwf	(transport_udp_process@prop)
	moviw	[1]fsr1
	movwf	(transport_udp_process@prop+1)
	line	103
	
l2624:	
	movlw	low(04h)
	subwf	(transport_udp_process@prop),w
	skipnc
	goto	u1241
	goto	u1240
u1241:
	goto	l2628
u1240:
	line	104
	
l2626:	
	movf	0+(transport_udp_process@prop)+01h,w
	movwf	(??_transport_udp_process+0)+0
	lslf	(transport_udp_process@prop),w
	addlw	low(_props|((0x0)<<8)+01h)&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_transport_udp_process+0)+0,w
	movwf	indf1
	line	105
	
l2628:	
	movlw	low(01h)
	movwf	(??_transport_udp_process+0)+0
	movf	(??_transport_udp_process+0)+0,w
	addwf	(transport_udp_process@i),f
	
l2630:	
	movlb 1	; select bank1
	rrf	(_OXPSTASTS)^080h,w
	rrf	wreg,f
	andlw	(1<<4)-1
	movlb 0	; select bank0
	subwf	(transport_udp_process@i),w
	skipc
	goto	u1251
	goto	u1250
u1251:
	goto	l2622
u1250:
	line	106
	
l2632:	
	movlw	(low(_buffer_tx|((0x1)<<8)))&0ffh
	movwf	(??_transport_udp_process+0)+0
	movf	(??_transport_udp_process+0)+0,w
	movwf	(transport_udp_process@response_196)
	line	107
	
l2634:	
	movf	(transport_udp_process@packet),w
	addlw	05h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_transport_udp_process+0)+0
	movf	(transport_udp_process@response_196),w
	addlw	05h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_transport_udp_process+0)+0,w
	movwf	indf1
	line	108
	
l2636:	
	movf	(transport_udp_process@response_196),w
	addlw	06h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,2
	line	109
	
l2638:	
	movf	(transport_udp_process@response_196),w
	addlw	06h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	andlw	not (((1<<2)-1)<<0)
	iorlw	(02h & ((1<<2)-1))<<0
	movwf	indf1
	line	110
	
l2640:	
	movf	(transport_udp_process@packet),w
	addlw	02h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_transport_udp_process+0)+0
	movf	(transport_udp_process@response_196),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_transport_udp_process+0)+0,w
	movwf	indf1
	line	111
	
l2642:	
	movf	(transport_udp_process@packet),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	andlw	(1<<4)-1
	movwf	(??_transport_udp_process+0)+0
	movf	(transport_udp_process@response_196),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	swapf	(??_transport_udp_process+0)+0,f
	movf	indf1,w
	xorwf	(??_transport_udp_process+0)+0,w
	andlw	not (((1<<4)-1)<<4)
	xorwf	(??_transport_udp_process+0)+0,w
	movwf	indf1
	line	112
	
l2644:	
	movlw	low(020h)
	movwf	(??_transport_udp_process+0)+0
	movf	(transport_udp_process@response_196),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_transport_udp_process+0)+0,w
	movwf	indf1
	line	113
	
l2646:	
	movlw	low(07h)
	movwf	(??_transport_udp_process+0)+0
	movf	(??_transport_udp_process+0)+0,w
	movwf	(transport_udp_tx@size)
	movf	(transport_udp_process@packet),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw 1	; select bank2/3
	moviw	[02h]fsr1
	movwf	(transport_udp_tx@destination)
	movlw	low(03h)
	movwf	(??_transport_udp_process+1)+0
	movf	(??_transport_udp_process+1)+0,w
	movwf	(transport_udp_tx@sourcePort)
	movf	(transport_udp_process@packet),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	andlw	(1<<4)-1
	movwf	(??_transport_udp_process+2)+0
	movf	(??_transport_udp_process+2)+0,w
	movwf	(transport_udp_tx@destinationPort)
	movlw	(low(_buffer_tx|((0x1)<<8)))&0ffh
	fcall	_transport_udp_tx
	line	115
	
l2648:	
	movlb 1	; select bank1
	btfss	(_OXPSTASTS)^080h,0
	goto	u1261
	goto	u1260
u1261:
	goto	l80
u1260:
	
l2650:	
	movlb 0	; select bank0
	movf	(transport_udp_process@packet),w
	addlw	05h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movlb 1	; select bank1
	xorwf	0+(_OXPSTASTS)^080h+02h,w
	skipz
	goto	u1271
	goto	u1270
u1271:
	goto	l80
u1270:
	line	117
	
l2652:	
	movlw	low(_OXPSTASTS+03h)
	movwf	(memcpy@d1)
	movlw	high(_OXPSTASTS+03h)
	movwf	(memcpy@d1+1)
	movlb 0	; select bank0
	movf	(transport_udp_process@payload),w
	movwf	(memcpy@s1)
	movlw	0x1

	movwf	(memcpy@s1+1)
	movf	(transport_udp_process@size),w
	movwf	(??_transport_udp_process+0)+0
	clrf	(??_transport_udp_process+0)+0+1
	movf	0+(??_transport_udp_process+0)+0,w
	movwf	(memcpy@n)
	movf	1+(??_transport_udp_process+0)+0,w
	movwf	(memcpy@n+1)
	fcall	_memcpy
	line	118
	
l2654:	
	movlb 1	; select bank1
	bcf	(_OXPSTASTS)^080h,0
	line	119
	
l2656:	
	bsf	(_OXPSTASTS)^080h,1
	line	123
	
l80:	
	return
	callstack 0
GLOBAL	__end_of_transport_udp_process
	__end_of_transport_udp_process:
	signat	_transport_udp_process,12409
	global	_transport_udp_tx

;; *************** function _transport_udp_tx *****************
;; Defined at:
;;		line 3 in file "F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/transport.c"
;; Parameters:    Size  Location     Type
;;  payload         1    wreg     PTR unsigned char 
;;		 -> buffer_tx(32), 
;;  size            1    7[BANK0 ] unsigned char 
;;  destination     1    8[BANK0 ] unsigned char 
;;  sourcePort      1    9[BANK0 ] unsigned char 
;;  destinationP    1   10[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  payload         1   13[BANK0 ] PTR unsigned char 
;;		 -> buffer_tx(32), 
;;  packetHeader    1   12[BANK0 ] PTR struct .
;;		 -> buffer_tx(32), 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       4       0       0
;;      Locals:         0       2       0       0
;;      Temps:          0       1       0       0
;;      Totals:         0       7       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 8
;; This function calls:
;;		_internet_tx
;; This function is called by:
;;		_main
;;		_transport_udp_process
;;		_oxp_post
;;		_oxp_get
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1,group=1
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/transport.c"
	line	3
global __ptext9
__ptext9:	;psect for function _transport_udp_tx
psect	text9
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/transport.c"
	line	3
	
_transport_udp_tx:	
;incstack = 0
	callstack 7
; Regs used in _transport_udp_tx: [wreg-fsr1h+status,2+status,0+pclath+cstack]
	movlb 0	; select bank0
	movwf	(transport_udp_tx@payload)
	line	5
	
l2578:	
	movf	(transport_udp_tx@payload),w
	movwf	(??_transport_udp_tx+0)+0
	movf	(??_transport_udp_tx+0)+0,w
	movwf	(transport_udp_tx@packetHeader)
	line	6
	
l2580:	
	incf	(transport_udp_tx@packetHeader),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	incf	indf1,f
	line	7
	
l2582:	
	movf	(transport_udp_tx@destination),w
	movwf	(??_transport_udp_tx+0)+0
	movf	(transport_udp_tx@packetHeader),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_transport_udp_tx+0)+0,w
	movwf	indf1
	line	8
	
l2584:	
	movf	(transport_udp_tx@packetHeader),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	xorwf	(transport_udp_tx@sourcePort),w
	andlw	not ((1<<4)-1)
	xorwf	(transport_udp_tx@sourcePort),w
	movwf	indf1
	line	9
	
l2586:	
	movf	(transport_udp_tx@destinationPort),w
	movwf	(??_transport_udp_tx+0)+0
	movf	(transport_udp_tx@packetHeader),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	swapf	(??_transport_udp_tx+0)+0,f
	movf	indf1,w
	xorwf	(??_transport_udp_tx+0)+0,w
	andlw	not (((1<<4)-1)<<4)
	xorwf	(??_transport_udp_tx+0)+0,w
	movwf	indf1
	line	10
	
l2588:	
	movf	(transport_udp_tx@size),w
	movwf	(??_transport_udp_tx+0)+0
	movf	(??_transport_udp_tx+0)+0,w
	movwf	(internet_tx@size)
	movf	(transport_udp_tx@payload),w
	fcall	_internet_tx
	line	11
	
l676:	
	return
	callstack 0
GLOBAL	__end_of_transport_udp_tx
	__end_of_transport_udp_tx:
	signat	_transport_udp_tx,20601
	global	_internet_tx

;; *************** function _internet_tx *****************
;; Defined at:
;;		line 29 in file "F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/internet.c"
;; Parameters:    Size  Location     Type
;;  payload         1    wreg     PTR unsigned char 
;;		 -> buffer_tx(32), 
;;  size            1    4[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  payload         1    6[BANK0 ] PTR unsigned char 
;;		 -> buffer_tx(32), 
;;  packetHeader    1    5[BANK0 ] PTR struct .
;;		 -> buffer_tx(32), 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       1       0       0
;;      Locals:         0       2       0       0
;;      Temps:          1       0       0       0
;;      Totals:         1       3       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 7
;; This function calls:
;;		_internet_relay
;; This function is called by:
;;		_transport_udp_tx
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1,group=1
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/internet.c"
	line	29
global __ptext10
__ptext10:	;psect for function _internet_tx
psect	text10
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/internet.c"
	line	29
	
_internet_tx:	
;incstack = 0
	callstack 7
; Regs used in _internet_tx: [wreg-fsr1h+status,2+status,0+pclath+cstack]
	movlb 0	; select bank0
	movwf	(internet_tx@payload)
	line	32
	
l2570:	
	movf	(internet_tx@payload),w
	movwf	(??_internet_tx+0)+0
	movf	(??_internet_tx+0)+0,w
	movwf	(internet_tx@packetHeader)
	line	33
	
l2572:	
	movlw	low(020h)
	movwf	(??_internet_tx+0)+0
	movf	(internet_tx@packetHeader),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_internet_tx+0)+0,w
	movwf	indf1
	line	34
	
l2574:	
	movlb 1	; select bank1
	movf	(_node)^080h,w
	movwf	(??_internet_tx+0)+0
	movlb 0	; select bank0
	movf	(internet_tx@packetHeader),w
	addlw	02h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_internet_tx+0)+0,w
	movwf	indf1
	line	35
	
l2576:	
	movf	(internet_tx@size),w
	movwf	(??_internet_tx+0)+0
	movf	(??_internet_tx+0)+0,w
	movwf	(internet_relay@size)
	movf	(internet_tx@payload),w
	fcall	_internet_relay
	line	36
	
l339:	
	return
	callstack 0
GLOBAL	__end_of_internet_tx
	__end_of_internet_tx:
	signat	_internet_tx,8313
	global	_internet_relay

;; *************** function _internet_relay *****************
;; Defined at:
;;		line 65 in file "F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/internet.c"
;; Parameters:    Size  Location     Type
;;  payload         1    wreg     PTR unsigned char 
;;		 -> buffer_rx(32), buffer_tx(32), 
;;  size            1    0[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  payload         1    3[BANK0 ] PTR unsigned char 
;;		 -> buffer_rx(32), buffer_tx(32), 
;;  packetHeader    1    2[BANK0 ] PTR struct .
;;		 -> buffer_rx(32), buffer_tx(32), 
;;  dstMask         1    1[BANK0 ] unsigned char 
;;  status          1    0        unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       1       0       0
;;      Locals:         0       3       0       0
;;      Temps:          1       0       0       0
;;      Totals:         1       4       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 6
;; This function calls:
;;		_RF24_openReadingPipe
;;		_RF24_openWritingPipe
;;		_RF24_startListening
;;		_RF24_stopListening
;;		_RF24_write
;;		_internet_calculateMask
;;		_internet_hasChild
;; This function is called by:
;;		_internet_tx
;;		_internet_rx
;; This function uses a non-reentrant model
;;
psect	text11,local,class=CODE,delta=2,merge=1,group=1
	line	65
global __ptext11
__ptext11:	;psect for function _internet_relay
psect	text11
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/internet.c"
	line	65
	
_internet_relay:	
;incstack = 0
	callstack 7
; Regs used in _internet_relay: [wreg-fsr1h+status,2+status,0+pclath+cstack]
	movlb 0	; select bank0
	movwf	(internet_relay@payload)
	line	68
	
l2518:	
	movf	(internet_relay@payload),w
	movwf	(??_internet_relay+0)+0
	movf	(??_internet_relay+0)+0,w
	movwf	(internet_relay@packetHeader)
	line	69
	
l2520:	
	movlb 1	; select bank1
	movf	((_node)^080h),w
	btfss	status,2
	goto	u1161
	goto	u1160
u1161:
	goto	l2524
u1160:
	goto	l354
	line	76
	
l2524:	
	movlb 0	; select bank0
	movf	(internet_relay@packetHeader),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	fcall	_internet_calculateMask
	movwf	(??_internet_relay+0)+0
	movf	(??_internet_relay+0)+0,w
	movlb 0	; select bank0
	movwf	(internet_relay@dstMask)
	line	78
	
l2526:	
	movf	(internet_relay@dstMask),w
	movlb 1	; select bank1
	subwf	0+(_node)^080h+01h,w
	skipnc
	goto	u1171
	goto	u1170
u1171:
	goto	l2556
u1170:
	
l2528:	
	movlb 0	; select bank0
	movf	(internet_relay@packetHeader),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	fcall	_internet_hasChild
	xorlw	low(0)&0ffh
	skipnz
	goto	u1181
	goto	u1180
u1181:
	goto	l2556
u1180:
	line	80
	
l2530:	
	movlb 0	; select bank0
	movf	(internet_relay@packetHeader),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movlb 1	; select bank1
	andwf	0+(_node)^080h+02h,w
	btfsc	status,2
	goto	u1191
	goto	u1190
u1191:
	goto	l2544
u1190:
	line	83
	
l2532:	
	movf	0+(_node)^080h+04h,w
	movwf	(??_internet_relay+0)+0
	movf	(??_internet_relay+0)+0,w
	movwf	(_networkInfo)^080h
	line	84
	
l2534:	
	movlw	low(_networkInfo)
	movwf	(RF24_openReadingPipe@address)
	movlw	high(_networkInfo)
	movwf	(RF24_openReadingPipe@address+1)
	movlw	low(0)
	fcall	_RF24_openReadingPipe
	line	85
	
l2536:	
	movlw	(low(_networkInfo|((0x0)<<8)))&0ffh
	fcall	_RF24_openWritingPipe
	line	86
	
l2538:	
	fcall	_RF24_stopListening
	line	87
	
l2540:	
	movlb 0	; select bank0
	movf	(internet_relay@size),w
	movwf	(??_internet_relay+0)+0
	movf	(??_internet_relay+0)+0,w
	movwf	(RF24_write@len)
	movf	(internet_relay@payload),w
	fcall	_RF24_write
	line	88
	
l2542:	
	movlw	low(((_BASE_PIPE)|8000h))
	movwf	(RF24_openReadingPipe@address)
	movlw	high(((_BASE_PIPE)|8000h))
	movwf	((RF24_openReadingPipe@address))+1
	movlw	low(0)
	fcall	_RF24_openReadingPipe
	line	89
	goto	l2568
	line	93
	
l2544:	
	movf	0+(_node)^080h+03h,w
	movwf	(??_internet_relay+0)+0
	movf	(??_internet_relay+0)+0,w
	movwf	(_networkInfo)^080h
	line	94
	
l2546:	
	movlw	low(_networkInfo)
	movwf	(RF24_openReadingPipe@address)
	movlw	high(_networkInfo)
	movwf	(RF24_openReadingPipe@address+1)
	movlw	low(0)
	fcall	_RF24_openReadingPipe
	line	95
	
l2548:	
	movlw	(low(_networkInfo|((0x0)<<8)))&0ffh
	fcall	_RF24_openWritingPipe
	line	96
	
l2550:	
	fcall	_RF24_stopListening
	line	97
	
l2552:	
	movlb 0	; select bank0
	movf	(internet_relay@size),w
	movwf	(??_internet_relay+0)+0
	movf	(??_internet_relay+0)+0,w
	movwf	(RF24_write@len)
	movf	(internet_relay@payload),w
	fcall	_RF24_write
	line	98
	
l2554:	
	movlw	low(((_BASE_PIPE)|8000h))
	movwf	(RF24_openReadingPipe@address)
	movlw	high(((_BASE_PIPE)|8000h))
	movwf	((RF24_openReadingPipe@address))+1
	movlw	low(0)
	fcall	_RF24_openReadingPipe
	goto	l2568
	line	104
	
l2556:	
	movlb 1	; select bank1
	movf	(_node)^080h,w
	movwf	(??_internet_relay+0)+0
	movf	(??_internet_relay+0)+0,w
	movwf	(_networkInfo)^080h
	line	105
	
l2558:	
	movlw	low(_networkInfo)
	movwf	(RF24_openReadingPipe@address)
	movlw	high(_networkInfo)
	movwf	(RF24_openReadingPipe@address+1)
	movlw	low(0)
	fcall	_RF24_openReadingPipe
	line	106
	
l2560:	
	movlw	(low(_networkInfo|((0x0)<<8)))&0ffh
	fcall	_RF24_openWritingPipe
	line	107
	
l2562:	
	fcall	_RF24_stopListening
	line	110
	
l2564:	
	movlb 0	; select bank0
	movf	(internet_relay@size),w
	movwf	(??_internet_relay+0)+0
	movf	(??_internet_relay+0)+0,w
	movwf	(RF24_write@len)
	movf	(internet_relay@payload),w
	fcall	_RF24_write
	line	112
	
l2566:	
	movlw	low(((_BASE_PIPE)|8000h))
	movwf	(RF24_openReadingPipe@address)
	movlw	high(((_BASE_PIPE)|8000h))
	movwf	((RF24_openReadingPipe@address))+1
	movlw	low(0)
	fcall	_RF24_openReadingPipe
	line	114
	
l2568:	
	fcall	_RF24_startListening
	line	115
	
l354:	
	return
	callstack 0
GLOBAL	__end_of_internet_relay
	__end_of_internet_relay:
	signat	_internet_relay,8313
	global	_internet_hasChild

;; *************** function _internet_hasChild *****************
;; Defined at:
;;		line 137 in file "F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/internet.c"
;; Parameters:    Size  Location     Type
;;  address         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  address         1    2[COMMON] unsigned char 
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
;;      Locals:         1       0       0       0
;;      Temps:          2       0       0       0
;;      Totals:         3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_internet_relay
;; This function uses a non-reentrant model
;;
psect	text12,local,class=CODE,delta=2,merge=1,group=1
	line	137
global __ptext12
__ptext12:	;psect for function _internet_hasChild
psect	text12
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/internet.c"
	line	137
	
_internet_hasChild:	
;incstack = 0
	callstack 10
; Regs used in _internet_hasChild: [wreg+status,2+status,0]
	movwf	(internet_hasChild@address)
	line	139
	
l1902:	
	movlb 1	; select bank1
	movf	(_node)^080h,w
	andwf	0+(_node)^080h+01h,w
	movwf	(??_internet_hasChild+0)+0
	movf	(internet_hasChild@address),w
	andwf	0+(_node)^080h+01h,w
	movwf	(??_internet_hasChild+1)+0
	movf	0+(??_internet_hasChild+1)+0,w
	xorwf	0+(??_internet_hasChild+0)+0,w
	skipnz
	goto	u621
	goto	u620
u621:
	movlw	1
	goto	u630
u620:
	movlw	0
u630:
	line	140
	
l370:	
	return
	callstack 0
GLOBAL	__end_of_internet_hasChild
	__end_of_internet_hasChild:
	signat	_internet_hasChild,4217
	global	_RF24_write

;; *************** function _RF24_write *****************
;; Defined at:
;;		line 197 in file "F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/rf24.c"
;; Parameters:    Size  Location     Type
;;  buf             1    wreg     PTR void 
;;		 -> buffer_rx(32), buffer_tx(32), 
;;  len             1    8[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  buf             1   10[COMMON] PTR void 
;;		 -> buffer_rx(32), buffer_tx(32), 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
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
psect	text13,local,class=CODE,delta=2,merge=1,group=1
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/rf24.c"
	line	197
global __ptext13
__ptext13:	;psect for function _RF24_write
psect	text13
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/rf24.c"
	line	197
	
_RF24_write:	
;incstack = 0
	callstack 7
; Regs used in _RF24_write: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	movwf	(RF24_write@buf)
	line	201
	
l2498:	
	movlb 0	; select bank0
	bcf	(117/8),(117)&7	;volatile
	line	202
	
l2500:	
	movlw	low(0A0h)
	fcall	_SPI_exchangeByte
	movwf	(??_RF24_write+0)+0
	movf	(??_RF24_write+0)+0,w
	movlb 0	; select bank0
	movwf	(_RF24_attr_status)
	line	203
	goto	l2506
	line	205
	
l2502:	
	movf	(RF24_write@buf),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	fcall	_SPI_exchangeByte
	
l2504:	
	movlw	low(01h)
	movwf	(??_RF24_write+0)+0
	movf	(??_RF24_write+0)+0,w
	addwf	(RF24_write@buf),f
	line	203
	
l2506:	
	movlw	01h
	subwf	(RF24_write@len),f
		incf	(((RF24_write@len))),w
	btfss	status,2
	goto	u1131
	goto	u1130
u1131:
	goto	l2502
u1130:
	
l486:	
	line	207
	movlb 0	; select bank0
	bsf	(117/8),(117)&7	;volatile
	line	209
	bsf	(118/8),(118)&7	;volatile
	line	210
	
l2508:	
	fcall	_RF24_get_status
	andlw	030h
	btfsc	status,2
	goto	u1141
	goto	u1140
u1141:
	goto	l2508
u1140:
	
l489:	
	line	215
	movlb 0	; select bank0
	bcf	(118/8),(118)&7	;volatile
	line	216
	
l2510:	
	movlw	low(070h)
	movwf	(??_RF24_write+0)+0
	movf	(??_RF24_write+0)+0,w
	movwf	(RF24_write_register@value)
	movlw	low(07h)
	fcall	_RF24_write_register
	line	219
	
l2512:	
	movlb 0	; select bank0
	btfss	(_RF24_attr_status),(4)&7
	goto	u1151
	goto	u1150
u1151:
	goto	l491
u1150:
	line	221
	
l2514:	
	fcall	_RF24_flush_tx
	line	225
	
l491:	
	return
	callstack 0
GLOBAL	__end_of_RF24_write
	__end_of_RF24_write:
	signat	_RF24_write,8313
	global	_RF24_stopListening

;; *************** function _RF24_stopListening *****************
;; Defined at:
;;		line 155 in file "F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/rf24.c"
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
;; Hardware stack levels required when called: 4
;; This function calls:
;;		_RF24_read_register
;;		_RF24_write_register
;; This function is called by:
;;		_internet_relay
;; This function uses a non-reentrant model
;;
psect	text14,local,class=CODE,delta=2,merge=1,group=1
	line	155
global __ptext14
__ptext14:	;psect for function _RF24_stopListening
psect	text14
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/rf24.c"
	line	155
	
_RF24_stopListening:	
;incstack = 0
	callstack 8
; Regs used in _RF24_stopListening: [wreg+status,2+status,0+pclath+cstack]
	line	157
	
l1908:	
	movlb 0	; select bank0
	bcf	(118/8),(118)&7	;volatile
	line	164
	
l1910:	
	movlw	low(0)
	fcall	_RF24_read_register
	andlw	0FEh
	movwf	(??_RF24_stopListening+0)+0
	movf	(??_RF24_stopListening+0)+0,w
	movwf	(RF24_write_register@value)
	movlw	low(0)
	fcall	_RF24_write_register
	line	165
	movlw	low(02h)
	fcall	_RF24_read_register
	iorlw	01h
	movwf	(??_RF24_stopListening+0)+0
	movf	(??_RF24_stopListening+0)+0,w
	movwf	(RF24_write_register@value)
	movlw	low(02h)
	fcall	_RF24_write_register
	line	166
	
l1912:	
	asmopt push
asmopt off
	movlw	173
u1417:
decfsz	wreg
	goto	u1417
	nop
asmopt pop

	line	167
	
l469:	
	return
	callstack 0
GLOBAL	__end_of_RF24_stopListening
	__end_of_RF24_stopListening:
	signat	_RF24_stopListening,89
	global	_RF24_openWritingPipe

;; *************** function _RF24_openWritingPipe *****************
;; Defined at:
;;		line 456 in file "F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/rf24.c"
;; Parameters:    Size  Location     Type
;;  address         1    wreg     PTR unsigned char 
;;		 -> networkInfo(6), 
;; Auto vars:     Size  Location     Type
;;  address         1    7[COMMON] PTR unsigned char 
;;		 -> networkInfo(6), 
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
;;      Locals:         1       0       0       0
;;      Temps:          1       0       0       0
;;      Totals:         2       0       0       0
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
	line	456
global __ptext15
__ptext15:	;psect for function _RF24_openWritingPipe
psect	text15
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/rf24.c"
	line	456
	
_RF24_openWritingPipe:	
;incstack = 0
	callstack 8
; Regs used in _RF24_openWritingPipe: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	movwf	(RF24_openWritingPipe@address)
	line	458
	
l1906:	
	movf	(RF24_openWritingPipe@address),w
	movwf	(RF24_write_n_register@buffer)
	movlw	0x0

	movwf	(RF24_write_n_register@buffer+1)
	movlw	low(05h)
	movwf	(??_RF24_openWritingPipe+0)+0
	movf	(??_RF24_openWritingPipe+0)+0,w
	movwf	(RF24_write_n_register@length)
	movlw	low(010h)
	fcall	_RF24_write_n_register
	line	459
	
l580:	
	return
	callstack 0
GLOBAL	__end_of_RF24_openWritingPipe
	__end_of_RF24_openWritingPipe:
	signat	_RF24_openWritingPipe,4217
	global	_internet_config_rx

;; *************** function _internet_config_rx *****************
;; Defined at:
;;		line 179 in file "F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/app/src/main.c"
;; Parameters:    Size  Location     Type
;;  payload         1    wreg     PTR unsigned char 
;;		 -> buffer_rx(32), 
;;  size            1    4[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  payload         1    6[BANK0 ] PTR unsigned char 
;;		 -> buffer_rx(32), 
;;  confPacket      1    7[BANK0 ] PTR struct .
;;		 -> buffer_rx(32), 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       1       0       0
;;      Locals:         0       2       0       0
;;      Temps:          0       1       0       0
;;      Totals:         0       4       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 7
;; This function calls:
;;		_internet_setAddress
;;		_internet_setNetworkPipe
;; This function is called by:
;;		_internet_rx
;; This function uses a non-reentrant model
;;
psect	text16,local,class=CODE,delta=2,merge=1,group=0
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/app/src/main.c"
	line	179
global __ptext16
__ptext16:	;psect for function _internet_config_rx
psect	text16
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/app/src/main.c"
	line	179
	
_internet_config_rx:	
;incstack = 0
	callstack 5
; Regs used in _internet_config_rx: [wreg-fsr1h+status,2+status,0+pclath+cstack]
	movlb 0	; select bank0
	movwf	(internet_config_rx@payload)
	line	181
	
l2660:	
	movf	(internet_config_rx@payload),w
	movwf	(??_internet_config_rx+0)+0
	movf	(??_internet_config_rx+0)+0,w
	movwf	(internet_config_rx@confPacket)
	line	182
	
l2662:	
	movf	(internet_config_rx@confPacket),w
	addlw	05h
	movwf	(internet_setNetworkPipe@pipe)
	movlw	0x1

	movwf	(internet_setNetworkPipe@pipe+1)
	fcall	_internet_setNetworkPipe
	line	183
	
l2664:	
	movlb 0	; select bank0
	movf	(internet_config_rx@confPacket),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	fcall	_internet_setAddress
	line	184
	
l2666:	
	movlb 0	; select bank0
	clrf	(_isConfigerd)
	incf	(_isConfigerd),f
	line	185
	
l114:	
	return
	callstack 0
GLOBAL	__end_of_internet_config_rx
	__end_of_internet_config_rx:
	signat	_internet_config_rx,8313
	global	_internet_setAddress

;; *************** function _internet_setAddress *****************
;; Defined at:
;;		line 127 in file "F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/internet.c"
;; Parameters:    Size  Location     Type
;;  address         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  address         1    3[BANK0 ] unsigned char 
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
;; Hardware stack levels required when called: 6
;; This function calls:
;;		_internet_calculateMask
;;		_internet_setNetworkPipe
;; This function is called by:
;;		_main
;;		_internet_config_rx
;; This function uses a non-reentrant model
;;
psect	text17,local,class=CODE,delta=2,merge=1,group=1
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/internet.c"
	line	127
global __ptext17
__ptext17:	;psect for function _internet_setAddress
psect	text17
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/internet.c"
	line	127
	
_internet_setAddress:	
;incstack = 0
	callstack 5
; Regs used in _internet_setAddress: [wreg-fsr1h+status,2+status,0+pclath+cstack]
	movlb 0	; select bank0
	movwf	(internet_setAddress@address)
	line	129
	
l2026:	
	movf	(internet_setAddress@address),w
	movwf	(??_internet_setAddress+0)+0
	movf	(??_internet_setAddress+0)+0,w
	movlb 1	; select bank1
	movwf	(_node)^080h
	line	130
	
l2028:	
	movlb 0	; select bank0
	movf	(internet_setAddress@address),w
	fcall	_internet_calculateMask
	movlb 0	; select bank0
	movwf	(??_internet_setAddress+0)+0
	movf	(??_internet_setAddress+0)+0,w
	movlb 1	; select bank1
	movwf	0+(_node)^080h+01h
	line	131
	
l2030:	
	movf	0+(_node)^080h+01h,w
	addlw	01h
	movlb 0	; select bank0
	movwf	(??_internet_setAddress+0)+0
	movf	(??_internet_setAddress+0)+0,w
	movlb 1	; select bank1
	movwf	0+(_node)^080h+02h
	line	132
	
l2032:	
	movf	0+(_node)^080h+02h,w
	movlb 0	; select bank0
	movwf	(??_internet_setAddress+0)+0
	movlw	01h
u725:
	lslf	(??_internet_setAddress+0)+0,f
	decfsz	wreg,f
	goto	u725
	movlb 1	; select bank1
	movf	0+(_node)^080h+01h,w
	andwf	(_node)^080h,w
	movlb 0	; select bank0
	iorwf	0+(??_internet_setAddress+0)+0,w
	movwf	(??_internet_setAddress+1)+0
	movf	(??_internet_setAddress+1)+0,w
	movlb 1	; select bank1
	movwf	0+(_node)^080h+03h
	line	133
	
l2034:	
	movf	0+(_node)^080h+02h,w
	movlb 0	; select bank0
	movwf	(??_internet_setAddress+0)+0
	movlw	01h
u735:
	lslf	(??_internet_setAddress+0)+0,f
	decfsz	wreg,f
	goto	u735
	movlb 1	; select bank1
	movf	0+(_node)^080h+01h,w
	andwf	(_node)^080h,w
	movlb 0	; select bank0
	iorwf	0+(??_internet_setAddress+0)+0,w
	movlb 1	; select bank1
	iorwf	0+(_node)^080h+02h,w
	movlb 0	; select bank0
	movwf	(??_internet_setAddress+1)+0
	movf	(??_internet_setAddress+1)+0,w
	movlb 1	; select bank1
	movwf	0+(_node)^080h+04h
	line	134
	
l2036:	
	movlw	low(_networkInfo)
	movwf	(internet_setNetworkPipe@pipe)
	movlw	high(_networkInfo)
	movwf	(internet_setNetworkPipe@pipe+1)
	fcall	_internet_setNetworkPipe
	line	135
	
l367:	
	return
	callstack 0
GLOBAL	__end_of_internet_setAddress
	__end_of_internet_setAddress:
	signat	_internet_setAddress,4217
	global	_internet_setNetworkPipe

;; *************** function _internet_setNetworkPipe *****************
;; Defined at:
;;		line 23 in file "F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/internet.c"
;; Parameters:    Size  Location     Type
;;  pipe            2   12[COMMON] PTR unsigned char 
;;		 -> networkInfo(6), buffer_rx(32), network_pipe(5), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         2       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       1       0       0
;;      Totals:         2       1       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 5
;; This function calls:
;;		_RF24_openReadingPipe
;;		_memcpy
;; This function is called by:
;;		_main
;;		_internet_config_rx
;;		_internet_setAddress
;; This function uses a non-reentrant model
;;
psect	text18,local,class=CODE,delta=2,merge=1,group=1
	line	23
global __ptext18
__ptext18:	;psect for function _internet_setNetworkPipe
psect	text18
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/internet.c"
	line	23
	
_internet_setNetworkPipe:	
;incstack = 0
	callstack 6
; Regs used in _internet_setNetworkPipe: [wreg-fsr1h+status,2+status,0+pclath+cstack]
	line	25
	
l2008:	
	movlw	low(_networkInfo)
	movwf	(memcpy@d1)
	movlw	high(_networkInfo)
	movwf	(memcpy@d1+1)
	movf	(internet_setNetworkPipe@pipe+1),w
	movwf	(memcpy@s1+1)
	movf	(internet_setNetworkPipe@pipe),w
	movwf	(memcpy@s1)
	movlw	05h
	movwf	(memcpy@n)
	movlw	0
	movwf	((memcpy@n))+1
	fcall	_memcpy
	line	26
	
l2010:	
	movlb 1	; select bank1
	movf	(_node)^080h,w
	movlb 0	; select bank0
	movwf	(??_internet_setNetworkPipe+0)+0
	movf	(??_internet_setNetworkPipe+0)+0,w
	movlb 1	; select bank1
	movwf	(_networkInfo)^080h
	line	27
	
l2012:	
	movlw	low(_networkInfo)
	movwf	(RF24_openReadingPipe@address)
	movlw	high(_networkInfo)
	movwf	(RF24_openReadingPipe@address+1)
	movlw	low(01h)
	fcall	_RF24_openReadingPipe
	line	28
	
l336:	
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
;;  d1              2    0[COMMON] PTR void 
;;		 -> networkInfo(6), OXPSTASTS(35), buffer_tx(32), 
;;  s1              2    2[COMMON] PTR const void 
;;		 -> networkInfo(6), buffer_rx(32), network_pipe(5), props(4), 
;;  n               2    4[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  s               2    9[COMMON] PTR const unsigned char 
;;		 -> networkInfo(6), buffer_rx(32), network_pipe(5), props(4), 
;;  d               2    7[COMMON] PTR unsigned char 
;;		 -> networkInfo(6), OXPSTASTS(35), buffer_tx(32), 
;;  tmp             1   11[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] PTR void 
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         6       0       0       0
;;      Locals:         5       0       0       0
;;      Temps:          1       0       0       0
;;      Totals:        12       0       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_transport_udp_process
;;		_oxp_post
;;		_internet_setNetworkPipe
;; This function uses a non-reentrant model
;;
psect	text19,local,class=CODE,delta=2,merge=1,group=3
	file	"C:\Program Files\Microchip\xc8\v2.35\pic\sources\c99\common\memcpy.c"
	line	4
global __ptext19
__ptext19:	;psect for function _memcpy
psect	text19
	file	"C:\Program Files\Microchip\xc8\v2.35\pic\sources\c99\common\memcpy.c"
	line	4
	
_memcpy:	
;incstack = 0
	callstack 12
; Regs used in _memcpy: [wreg+fsr1l+fsr1h+status,2+status,0]
	line	11
	
l1990:	
	movf	(memcpy@s1+1),w
	movwf	(memcpy@s+1)
	movf	(memcpy@s1),w
	movwf	(memcpy@s)
	line	12
	movf	(memcpy@d1+1),w
	movwf	(memcpy@d+1)
	movf	(memcpy@d1),w
	movwf	(memcpy@d)
	line	13
	goto	l1998
	line	14
	
l1992:	
	movf	(memcpy@s),w
	movwf	fsr1l
	movf	(memcpy@s+1),w
	movwf	fsr1h

	movf	indf1,w
	movwf	(??_memcpy+0)+0
	movf	(??_memcpy+0)+0,w
	movwf	(memcpy@tmp)
	
l1994:	
	movlw	01h
	addwf	(memcpy@s),f
	movlw	0
	addwfc	(memcpy@s+1),f
	line	15
	
l1996:	
	movf	(memcpy@d),w
	movwf	fsr1l
	movf	(memcpy@d+1),w
	movwf	fsr1h
	movf	(memcpy@tmp),w
	movwf	indf1
	movlw	01h
	addwf	(memcpy@d),f
	movlw	0
	addwfc	(memcpy@d+1),f
	line	13
	
l1998:	
	movlw	01h
	subwf	(memcpy@n),f
	movlw	0
	subwfb	(memcpy@n+1),f
		incf	(((memcpy@n))),w
	skipz
	goto	u711
	incf	(((memcpy@n+1))),w
	btfss	status,2
	goto	u711
	goto	u710
u711:
	goto	l1992
u710:
	line	18
	
l1168:	
	return
	callstack 0
GLOBAL	__end_of_memcpy
	__end_of_memcpy:
	signat	_memcpy,12409
	global	_internet_calculateMask

;; *************** function _internet_calculateMask *****************
;; Defined at:
;;		line 116 in file "F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/internet.c"
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
;; Hardware stack levels required when called: 2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_internet_relay
;;		_internet_setAddress
;; This function uses a non-reentrant model
;;
psect	text20,local,class=CODE,delta=2,merge=1,group=1
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/internet.c"
	line	116
global __ptext20
__ptext20:	;psect for function _internet_calculateMask
psect	text20
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/internet.c"
	line	116
	
_internet_calculateMask:	
;incstack = 0
	callstack 10
; Regs used in _internet_calculateMask: [wreg+status,2+status,0]
	movwf	(internet_calculateMask@address)
	line	118
	
l1890:	
	clrf	(internet_calculateMask@mask)
	line	119
	goto	l1896
	line	121
	
l1892:	
	setc
	rlf	(internet_calculateMask@mask),f
	line	122
	
l1894:	
	clrc
	rrf	(internet_calculateMask@address),f

	line	119
	
l1896:	
	movlw	low(02h)
	subwf	(internet_calculateMask@address),w
	skipnc
	goto	u611
	goto	u610
u611:
	goto	l1892
u610:
	line	124
	
l1898:	
	movf	(internet_calculateMask@mask),w
	line	125
	
l364:	
	return
	callstack 0
GLOBAL	__end_of_internet_calculateMask
	__end_of_internet_calculateMask:
	signat	_internet_calculateMask,4217
	global	_RF24_read

;; *************** function _RF24_read *****************
;; Defined at:
;;		line 290 in file "F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/rf24.c"
;; Parameters:    Size  Location     Type
;;  buf             1    wreg     PTR void 
;;		 -> buffer_rx(32), 
;;  len             1    7[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  buf             1    9[COMMON] PTR void 
;;		 -> buffer_rx(32), 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
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
;; Hardware stack levels required when called: 4
;; This function calls:
;;		_RF24_read_n_register
;;		_RF24_write_register
;; This function is called by:
;;		_internet_process
;; This function uses a non-reentrant model
;;
psect	text21,local,class=CODE,delta=2,merge=1,group=1
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/rf24.c"
	line	290
global __ptext21
__ptext21:	;psect for function _RF24_read
psect	text21
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/rf24.c"
	line	290
	
_RF24_read:	
;incstack = 0
	callstack 9
; Regs used in _RF24_read: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	movwf	(RF24_read@buf)
	line	294
	
l2672:	
	movf	(RF24_read@buf),w
	movwf	(RF24_read_n_register@buf)
	movlw	0x1

	movwf	(RF24_read_n_register@buf+1)
	movf	(RF24_read@len),w
	movwf	(??_RF24_read+0)+0
	movf	(??_RF24_read+0)+0,w
	movwf	(RF24_read_n_register@len)
	movlw	low(061h)
	fcall	_RF24_read_n_register
	line	296
	
l2674:	
	movlw	low(040h)
	movwf	(??_RF24_read+0)+0
	movf	(??_RF24_read+0)+0,w
	movwf	(RF24_write_register@value)
	movlw	low(07h)
	fcall	_RF24_write_register
	line	297
	
l515:	
	return
	callstack 0
GLOBAL	__end_of_RF24_read
	__end_of_RF24_read:
	signat	_RF24_read,8313
	global	_RF24_read_n_register

;; *************** function _RF24_read_n_register *****************
;; Defined at:
;;		line 6 in file "F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/rf24.c"
;; Parameters:    Size  Location     Type
;;  mnemonic_add    1    wreg     unsigned char 
;;  buf             2    1[COMMON] PTR unsigned char 
;;		 -> RF24_printDetails@buffer(5), buffer_rx(32), 
;;  len             1    3[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  mnemonic_add    1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
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
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_SPI_exchangeByte
;; This function is called by:
;;		_RF24_read
;; This function uses a non-reentrant model
;;
psect	text22,local,class=CODE,delta=2,merge=1,group=1
	line	6
global __ptext22
__ptext22:	;psect for function _RF24_read_n_register
psect	text22
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/rf24.c"
	line	6
	
_RF24_read_n_register:	
;incstack = 0
	callstack 9
; Regs used in _RF24_read_n_register: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	movwf	(RF24_read_n_register@mnemonic_addr)
	line	8
	
l2120:	
	movlb 0	; select bank0
	bcf	(117/8),(117)&7	;volatile
	line	9
	
l2122:	
	movf	(RF24_read_n_register@mnemonic_addr),w
	fcall	_SPI_exchangeByte
	movwf	(??_RF24_read_n_register+0)+0
	movf	(??_RF24_read_n_register+0)+0,w
	movlb 0	; select bank0
	movwf	(_RF24_attr_status)
	line	10
	goto	l2128
	line	12
	
l2124:	
	movlw	low(0FFh)
	fcall	_SPI_exchangeByte
	movwf	(??_RF24_read_n_register+0)+0
	movf	(RF24_read_n_register@buf),w
	movwf	fsr1l
	movf	(RF24_read_n_register@buf+1),w
	movwf	fsr1h
	movf	(??_RF24_read_n_register+0)+0,w
	movwf	indf1
	
l2126:	
	movlw	01h
	addwf	(RF24_read_n_register@buf),f
	movlw	0
	addwfc	(RF24_read_n_register@buf+1),f
	line	10
	
l2128:	
	movlw	01h
	subwf	(RF24_read_n_register@len),f
		incf	(((RF24_read_n_register@len))),w
	btfss	status,2
	goto	u821
	goto	u820
u821:
	goto	l2124
u820:
	
l433:	
	line	14
	movlb 0	; select bank0
	bsf	(117/8),(117)&7	;volatile
	line	15
	
l434:	
	return
	callstack 0
GLOBAL	__end_of_RF24_read_n_register
	__end_of_RF24_read_n_register:
	signat	_RF24_read_n_register,12409
	global	_RF24_getDynamicPayloadSize

;; *************** function _RF24_getDynamicPayloadSize *****************
;; Defined at:
;;		line 263 in file "F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/rf24.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  result          1    9[COMMON] unsigned char 
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
;; Hardware stack levels required when called: 5
;; This function calls:
;;		_RF24_flush_rx
;;		_RF24_read_register
;; This function is called by:
;;		_internet_process
;; This function uses a non-reentrant model
;;
psect	text23,local,class=CODE,delta=2,merge=1,group=1
	line	263
global __ptext23
__ptext23:	;psect for function _RF24_getDynamicPayloadSize
psect	text23
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/rf24.c"
	line	263
	
_RF24_getDynamicPayloadSize:	
;incstack = 0
	callstack 8
; Regs used in _RF24_getDynamicPayloadSize: [wreg+status,2+status,0+pclath+cstack]
	line	265
	
l2134:	
	movlw	low(060h)
	fcall	_RF24_read_register
	movwf	(??_RF24_getDynamicPayloadSize+0)+0
	movf	(??_RF24_getDynamicPayloadSize+0)+0,w
	movwf	(RF24_getDynamicPayloadSize@result)
	line	267
	
l2136:	
	movlw	low(021h)
	subwf	(RF24_getDynamicPayloadSize@result),w
	skipc
	goto	u831
	goto	u830
u831:
	goto	l2146
u830:
	line	269
	
l2138:	
	fcall	_RF24_flush_rx
	line	270
	
l2140:	
	asmopt push
asmopt off
movlw	11
movwf	((??_RF24_getDynamicPayloadSize+0)+0)
	movlw	98
u1427:
decfsz	wreg
	goto	u1427
	decfsz	((??_RF24_getDynamicPayloadSize+0)+0),f
	goto	u1427
	nop2
asmopt pop

	line	271
	
l2142:	
	movlw	low(0)
	goto	l508
	line	273
	
l2146:	
	movf	(RF24_getDynamicPayloadSize@result),w
	line	274
	
l508:	
	return
	callstack 0
GLOBAL	__end_of_RF24_getDynamicPayloadSize
	__end_of_RF24_getDynamicPayloadSize:
	signat	_RF24_getDynamicPayloadSize,89
	global	_RF24_available

;; *************** function _RF24_available *****************
;; Defined at:
;;		line 276 in file "F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/rf24.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  pipe            1    3[COMMON] unsigned char 
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
;; Hardware stack levels required when called: 4
;; This function calls:
;;		_RF24_get_status
;; This function is called by:
;;		_internet_process
;; This function uses a non-reentrant model
;;
psect	text24,local,class=CODE,delta=2,merge=1,group=1
	line	276
global __ptext24
__ptext24:	;psect for function _RF24_available
psect	text24
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/rf24.c"
	line	276
	
_RF24_available:	
;incstack = 0
	callstack 9
; Regs used in _RF24_available: [wreg+status,2+status,0+pclath+cstack]
	line	279
	
l2174:	
	fcall	_RF24_get_status
	lsrf	wreg,f
	andlw	07h
	movwf	(??_RF24_available+0)+0
	movf	(??_RF24_available+0)+0,w
	movwf	(RF24_available@pipe)
	line	280
	
l2176:	
	movlw	low(06h)
	subwf	(RF24_available@pipe),w
	skipc
	goto	u851
	goto	u850
u851:
	goto	l2182
u850:
	line	281
	
l2178:	
	movlw	low(0)
	goto	l512
	line	287
	
l2182:	
	movlw	low(01h)
	line	288
	
l512:	
	return
	callstack 0
GLOBAL	__end_of_RF24_available
	__end_of_RF24_available:
	signat	_RF24_available,89
	global	_RF24_get_status

;; *************** function _RF24_get_status *****************
;; Defined at:
;;		line 50 in file "F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/rf24.c"
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
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_SPI_exchangeByte
;; This function is called by:
;;		_RF24_write
;;		_RF24_available
;; This function uses a non-reentrant model
;;
psect	text25,local,class=CODE,delta=2,merge=1,group=1
	line	50
global __ptext25
__ptext25:	;psect for function _RF24_get_status
psect	text25
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/rf24.c"
	line	50
	
_RF24_get_status:	
;incstack = 0
	callstack 8
; Regs used in _RF24_get_status: [wreg+pclath+cstack]
	line	52
	
l1870:	
	movlb 0	; select bank0
	bcf	(117/8),(117)&7	;volatile
	line	53
	
l1872:	
	movlw	low(0FFh)
	fcall	_SPI_exchangeByte
	movwf	(??_RF24_get_status+0)+0
	movf	(??_RF24_get_status+0)+0,w
	movlb 0	; select bank0
	movwf	(_RF24_attr_status)
	line	54
	
l1874:	
	bsf	(117/8),(117)&7	;volatile
	line	55
	
l1876:	
	movf	(_RF24_attr_status),w
	line	56
	
l449:	
	return
	callstack 0
GLOBAL	__end_of_RF24_get_status
	__end_of_RF24_get_status:
	signat	_RF24_get_status,89
	global	_internet_setChannel

;; *************** function _internet_setChannel *****************
;; Defined at:
;;		line 9 in file "F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/internet.c"
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
;; Hardware stack levels required when called: 5
;; This function calls:
;;		_RF24_setChannel
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text26,local,class=CODE,delta=2,merge=1,group=1
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/internet.c"
	line	9
global __ptext26
__ptext26:	;psect for function _internet_setChannel
psect	text26
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/internet.c"
	line	9
	
_internet_setChannel:	
;incstack = 0
	callstack 10
; Regs used in _internet_setChannel: [wreg+status,2+status,0+pclath+cstack]
	movwf	(internet_setChannel@channel)
	line	11
	
l2346:	
	movf	(internet_setChannel@channel),w
	fcall	_RF24_setChannel
	line	12
	
l327:	
	return
	callstack 0
GLOBAL	__end_of_internet_setChannel
	__end_of_internet_setChannel:
	signat	_internet_setChannel,4217
	global	_SPI_initialize

;; *************** function _SPI_initialize *****************
;; Defined at:
;;		line 3 in file "F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/spi_master.c"
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
;; Hardware stack levels required when called: 2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text27,local,class=CODE,delta=2,merge=1,group=1
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/spi_master.c"
	line	3
global __ptext27
__ptext27:	;psect for function _SPI_initialize
psect	text27
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/spi_master.c"
	line	3
	
_SPI_initialize:	
;incstack = 0
	callstack 13
; Regs used in _SPI_initialize: [wreg+status,2]
	line	5
	
l2320:	
	movlb 4	; select bank4
	bcf	(4269/8)^0200h,(4269)&7	;volatile
	line	6
	
l2322:	
	movlw	low(040h)
	movwf	(532)^0200h	;volatile
	line	7
	
l2324:	
	movlb 1	; select bank1
	bsf	(1132/8)^080h,(1132)&7	;volatile
	line	8
	
l2326:	
	bcf	(1143/8)^080h,(1143)&7	;volatile
	line	9
	
l2328:	
	bcf	(1134/8)^080h,(1134)&7	;volatile
	line	10
	
l2330:	
	movlb 3	; select bank3
	clrf	(397)^0180h	;volatile
	line	11
	movlb 4	; select bank4
	movf	(533)^0200h,w	;volatile
	andlw	0F0h
	iorlw	02h
	movwf	(533)^0200h	;volatile
	line	12
	
l2332:	
	bsf	(4269/8)^0200h,(4269)&7	;volatile
	line	24
	
l616:	
	return
	callstack 0
GLOBAL	__end_of_SPI_initialize
	__end_of_SPI_initialize:
	signat	_SPI_initialize,89
	global	_RF24_isChipConnected

;; *************** function _RF24_isChipConnected *****************
;; Defined at:
;;		line 128 in file "F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/rf24.c"
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
;; Hardware stack levels required when called: 4
;; This function calls:
;;		_RF24_read_register
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text28,local,class=CODE,delta=2,merge=1,group=1
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/rf24.c"
	line	128
global __ptext28
__ptext28:	;psect for function _RF24_isChipConnected
psect	text28
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/rf24.c"
	line	128
	
_RF24_isChipConnected:	
;incstack = 0
	callstack 11
; Regs used in _RF24_isChipConnected: [wreg+status,2+status,0+pclath+cstack]
	line	130
	
l2380:	
	movlw	low(03h)
	fcall	_RF24_read_register
	andlw	03h
	movwf	(??_RF24_isChipConnected+0)+0
	movf	(??_RF24_isChipConnected+0)+0,w
	movwf	(RF24_isChipConnected@width)
	line	131
	
l2382:	
	movf	((RF24_isChipConnected@width)),w
	btfsc	status,2
	goto	u1041
	goto	u1040
u1041:
	goto	l2390
u1040:
	
l2384:	
	movlw	low(04h)
	subwf	(RF24_isChipConnected@width),w
	skipnc
	goto	u1051
	goto	u1050
u1051:
	goto	l2390
u1050:
	line	133
	
l2386:	
	movlw	low(01h)
	goto	l463
	line	135
	
l2390:	
	movlw	low(0)
	line	136
	
l463:	
	return
	callstack 0
GLOBAL	__end_of_RF24_isChipConnected
	__end_of_RF24_isChipConnected:
	signat	_RF24_isChipConnected,89
	global	_Network_begin

;; *************** function _Network_begin *****************
;; Defined at:
;;		line 142 in file "F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/internet.c"
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
psect	text29,local,class=CODE,delta=2,merge=1,group=1
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/internet.c"
	line	142
global __ptext29
__ptext29:	;psect for function _Network_begin
psect	text29
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/internet.c"
	line	142
	
_Network_begin:	
;incstack = 0
	callstack 9
; Regs used in _Network_begin: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	145
	
l2334:	
	fcall	_RF24_begin
	line	146
	movlw	low(05h)
	fcall	_RF24_setAddressWidth
	line	147
	fcall	_RF24_enableDynamicPayloads
	line	148
	movlw	low(0)
	fcall	_RF24_setDataRate
	line	149
	movlw	low(01h)
	fcall	_RF24_setCRCLength
	line	150
	
l2336:	
	movlw	low(((_BASE_PIPE)|8000h))
	movwf	(RF24_openReadingPipe@address)
	movlw	high(((_BASE_PIPE)|8000h))
	movwf	((RF24_openReadingPipe@address))+1
	movlw	low(0)
	fcall	_RF24_openReadingPipe
	line	151
	
l2338:	
	movlw	low(01h)
	fcall	_RF24_setAutoAck
	line	152
	
l2340:	
	movlw	low(03h)
	movlb 0	; select bank0
	movwf	(??_Network_begin+0)+0
	movf	(??_Network_begin+0)+0,w
	movwf	(?_RF24_getPALevel)
	fcall	_RF24_getPALevel
	line	153
	
l2342:	
	movlw	low(020h)
	fcall	_RF24_setPayloadSize
	line	154
	
l2344:	
	fcall	_RF24_startListening
	line	155
	
l373:	
	return
	callstack 0
GLOBAL	__end_of_Network_begin
	__end_of_Network_begin:
	signat	_Network_begin,89
	global	_RF24_startListening

;; *************** function _RF24_startListening *****************
;; Defined at:
;;		line 138 in file "F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/rf24.c"
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
;; Hardware stack levels required when called: 4
;; This function calls:
;;		_RF24_read_register
;;		_RF24_write_register
;; This function is called by:
;;		_internet_relay
;;		_Network_begin
;; This function uses a non-reentrant model
;;
psect	text30,local,class=CODE,delta=2,merge=1,group=1
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/rf24.c"
	line	138
global __ptext30
__ptext30:	;psect for function _RF24_startListening
psect	text30
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/rf24.c"
	line	138
	
_RF24_startListening:	
;incstack = 0
	callstack 8
; Regs used in _RF24_startListening: [wreg+status,2+status,0+pclath+cstack]
	line	140
	
l1934:	
	movlw	low(0)
	fcall	_RF24_read_register
	iorlw	01h
	movwf	(??_RF24_startListening+0)+0
	movf	(??_RF24_startListening+0)+0,w
	movwf	(RF24_write_register@value)
	movlw	low(0)
	fcall	_RF24_write_register
	line	141
	movlw	low(070h)
	movwf	(??_RF24_startListening+0)+0
	movf	(??_RF24_startListening+0)+0,w
	movwf	(RF24_write_register@value)
	movlw	low(07h)
	fcall	_RF24_write_register
	line	142
	
l1936:	
	movlb 0	; select bank0
	bsf	(118/8),(118)&7	;volatile
	line	153
	
l466:	
	return
	callstack 0
GLOBAL	__end_of_RF24_startListening
	__end_of_RF24_startListening:
	signat	_RF24_startListening,89
	global	_RF24_setCRCLength

;; *************** function _RF24_setCRCLength *****************
;; Defined at:
;;		line 410 in file "F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/rf24.c"
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
;; Hardware stack levels required when called: 4
;; This function calls:
;;		_RF24_write_register
;; This function is called by:
;;		_Network_begin
;; This function uses a non-reentrant model
;;
psect	text31,local,class=CODE,delta=2,merge=1,group=1
	line	410
global __ptext31
__ptext31:	;psect for function _RF24_setCRCLength
psect	text31
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/rf24.c"
	line	410
	
_RF24_setCRCLength:	
;incstack = 0
	callstack 10
; Regs used in _RF24_setCRCLength: [wreg+status,2+status,0+pclath+cstack]
	movwf	(RF24_setCRCLength@length)
	line	412
	
l2276:	
	movlb 0	; select bank0
	movf	(_RF24_attr_config),w
	andlw	0F3h
	movwf	(??_RF24_setCRCLength+0)+0
	movf	(??_RF24_setCRCLength+0)+0,w
	movwf	(_RF24_attr_config)
	line	415
	
l2278:	
	movf	((RF24_setCRCLength@length)),w
	btfss	status,2
	goto	u911
	goto	u910
u911:
	goto	l2282
u910:
	goto	l2286
	line	419
	
l2282:	
		decf	((RF24_setCRCLength@length)),w
	btfss	status,2
	goto	u921
	goto	u920
u921:
	goto	l557
u920:
	line	421
	
l2284:	
	bsf	(_RF24_attr_config)+(3/8),(3)&7
	line	422
	goto	l2286
	line	423
	
l557:	
	line	425
	bsf	(_RF24_attr_config)+(3/8),(3)&7
	line	426
	bsf	(_RF24_attr_config)+(2/8),(2)&7
	line	428
	
l2286:	
	movf	(_RF24_attr_config),w
	movwf	(??_RF24_setCRCLength+0)+0
	movf	(??_RF24_setCRCLength+0)+0,w
	movwf	(RF24_write_register@value)
	movlw	low(0)
	fcall	_RF24_write_register
	line	429
	
l559:	
	return
	callstack 0
GLOBAL	__end_of_RF24_setCRCLength
	__end_of_RF24_setCRCLength:
	signat	_RF24_setCRCLength,4217
	global	_RF24_setAutoAck

;; *************** function _RF24_setAutoAck *****************
;; Defined at:
;;		line 341 in file "F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/rf24.c"
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
;; Hardware stack levels required when called: 4
;; This function calls:
;;		_RF24_write_register
;; This function is called by:
;;		_Network_begin
;; This function uses a non-reentrant model
;;
psect	text32,local,class=CODE,delta=2,merge=1,group=1
	line	341
global __ptext32
__ptext32:	;psect for function _RF24_setAutoAck
psect	text32
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/rf24.c"
	line	341
	
_RF24_setAutoAck:	
;incstack = 0
	callstack 10
; Regs used in _RF24_setAutoAck: [wreg+status,2+status,0+pclath+cstack]
	movwf	(RF24_setAutoAck@enable)
	line	343
	
l2288:	
	movf	((RF24_setAutoAck@enable)),w
	btfsc	status,2
	goto	u931
	goto	u930
u931:
	goto	l2292
u930:
	line	345
	
l2290:	
	movlw	low(03Fh)
	movwf	(??_RF24_setAutoAck+0)+0
	movf	(??_RF24_setAutoAck+0)+0,w
	movwf	(RF24_write_register@value)
	movlw	low(01h)
	fcall	_RF24_write_register
	line	346
	goto	l534
	line	349
	
l2292:	
	clrf	(RF24_write_register@value)
	movlw	low(01h)
	fcall	_RF24_write_register
	line	351
	
l534:	
	return
	callstack 0
GLOBAL	__end_of_RF24_setAutoAck
	__end_of_RF24_setAutoAck:
	signat	_RF24_setAutoAck,4217
	global	_RF24_openReadingPipe

;; *************** function _RF24_openReadingPipe *****************
;; Defined at:
;;		line 311 in file "F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/rf24.c"
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
psect	text33,local,class=CODE,delta=2,merge=1,group=1
	line	311
global __ptext33
__ptext33:	;psect for function _RF24_openReadingPipe
psect	text33
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/rf24.c"
	line	311
	
_RF24_openReadingPipe:	
;incstack = 0
	callstack 8
; Regs used in _RF24_openReadingPipe: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	movwf	(RF24_openReadingPipe@child)
	line	313
	
l1882:	
	movlw	low(02h)
	subwf	(RF24_openReadingPipe@child),w
	skipnc
	goto	u591
	goto	u590
u591:
	goto	l1886
u590:
	line	315
	
l1884:	
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
	line	316
	goto	l1888
	line	319
	
l1886:	
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
	line	321
	
l1888:	
	movlw	low(01h)
	movwf	(??_RF24_openReadingPipe+0)+0
	incf	(RF24_openReadingPipe@child),w
	goto	u604
u605:
	lslf	(??_RF24_openReadingPipe+0)+0,f
u604:
	decfsz	wreg,f
	goto	u605
	movlw	low(02h)
	fcall	_RF24_read_register
	iorwf	0+(??_RF24_openReadingPipe+0)+0,w
	movwf	(??_RF24_openReadingPipe+1)+0
	movf	(??_RF24_openReadingPipe+1)+0,w
	movwf	(RF24_write_register@value)
	movlw	low(02h)
	fcall	_RF24_write_register
	line	322
	
l520:	
	return
	callstack 0
GLOBAL	__end_of_RF24_openReadingPipe
	__end_of_RF24_openReadingPipe:
	signat	_RF24_openReadingPipe,8313
	global	_RF24_write_n_register

;; *************** function _RF24_write_n_register *****************
;; Defined at:
;;		line 28 in file "F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/rf24.c"
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
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_SPI_exchangeByte
;; This function is called by:
;;		_RF24_openReadingPipe
;;		_RF24_openWritingPipe
;; This function uses a non-reentrant model
;;
psect	text34,local,class=CODE,delta=2,merge=1,group=1
	line	28
global __ptext34
__ptext34:	;psect for function _RF24_write_n_register
psect	text34
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/rf24.c"
	line	28
	
_RF24_write_n_register:	
;incstack = 0
	callstack 8
; Regs used in _RF24_write_n_register: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	movwf	(RF24_write_n_register@mnemonic_addr)
	line	30
	
l1858:	
	movlb 0	; select bank0
	bcf	(117/8),(117)&7	;volatile
	line	31
	
l1860:	
	movf	(RF24_write_n_register@mnemonic_addr),w
	iorlw	020h
	fcall	_SPI_exchangeByte
	movwf	(??_RF24_write_n_register+0)+0
	movf	(??_RF24_write_n_register+0)+0,w
	movlb 0	; select bank0
	movwf	(_RF24_attr_status)
	line	32
	goto	l1868
	line	34
	
l1862:	
	movf	(RF24_write_n_register@buffer),w
	movwf	fsr0l
	movf	((RF24_write_n_register@buffer+1)),w
	movwf	fsr0h
	movf	indf0,w ;code access
	fcall	_SPI_exchangeByte
	
l1864:	
	movlw	01h
	addwf	(RF24_write_n_register@buffer),f
	movlw	0
	addwfc	(RF24_write_n_register@buffer+1),f
	line	35
	
l1866:	
	movlw	01h
	subwf	(RF24_write_n_register@length),f
	line	32
	
l1868:	
	movf	((RF24_write_n_register@length)),w
	btfss	status,2
	goto	u581
	goto	u580
u581:
	goto	l1862
u580:
	
l442:	
	line	37
	movlb 0	; select bank0
	bsf	(117/8),(117)&7	;volatile
	line	38
	
l443:	
	return
	callstack 0
GLOBAL	__end_of_RF24_write_n_register
	__end_of_RF24_write_n_register:
	signat	_RF24_write_n_register,12409
	global	_RF24_getPALevel

;; *************** function _RF24_getPALevel *****************
;; Defined at:
;;		line 464 in file "F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/rf24.c"
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
;; Hardware stack levels required when called: 4
;; This function calls:
;;		_RF24_read_register
;; This function is called by:
;;		_Network_begin
;; This function uses a non-reentrant model
;;
psect	text35,local,class=CODE,delta=2,merge=1,group=1
	line	464
global __ptext35
__ptext35:	;psect for function _RF24_getPALevel
psect	text35
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/rf24.c"
	line	464
	
_RF24_getPALevel:	
;incstack = 0
	callstack 10
; Regs used in _RF24_getPALevel: [wreg+status,2+status,0+pclath+cstack]
	line	466
	
l2294:	
;	Return value of _RF24_getPALevel is never used
	movlw	low(06h)
	fcall	_RF24_read_register
	line	467
	
l586:	
	return
	callstack 0
GLOBAL	__end_of_RF24_getPALevel
	__end_of_RF24_getPALevel:
	signat	_RF24_getPALevel,89
	global	_RF24_enableDynamicPayloads

;; *************** function _RF24_enableDynamicPayloads *****************
;; Defined at:
;;		line 329 in file "F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/rf24.c"
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
;; Hardware stack levels required when called: 4
;; This function calls:
;;		_RF24_read_register
;;		_RF24_write_register
;; This function is called by:
;;		_Network_begin
;; This function uses a non-reentrant model
;;
psect	text36,local,class=CODE,delta=2,merge=1,group=1
	line	329
global __ptext36
__ptext36:	;psect for function _RF24_enableDynamicPayloads
psect	text36
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/rf24.c"
	line	329
	
_RF24_enableDynamicPayloads:	
;incstack = 0
	callstack 10
; Regs used in _RF24_enableDynamicPayloads: [wreg+status,2+status,0+pclath+cstack]
	line	331
	
l2274:	
	movlw	low(01Dh)
	fcall	_RF24_read_register
	iorlw	04h
	movwf	(??_RF24_enableDynamicPayloads+0)+0
	movf	(??_RF24_enableDynamicPayloads+0)+0,w
	movwf	(RF24_write_register@value)
	movlw	low(01Dh)
	fcall	_RF24_write_register
	line	332
	movlw	low(01Ch)
	fcall	_RF24_read_register
	iorlw	03Fh
	movwf	(??_RF24_enableDynamicPayloads+0)+0
	movf	(??_RF24_enableDynamicPayloads+0)+0,w
	movwf	(RF24_write_register@value)
	movlw	low(01Ch)
	fcall	_RF24_write_register
	line	333
	
l526:	
	return
	callstack 0
GLOBAL	__end_of_RF24_enableDynamicPayloads
	__end_of_RF24_enableDynamicPayloads:
	signat	_RF24_enableDynamicPayloads,89
	global	_RF24_begin

;; *************** function _RF24_begin *****************
;; Defined at:
;;		line 58 in file "F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/rf24.c"
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
psect	text37,local,class=CODE,delta=2,merge=1,group=1
	line	58
global __ptext37
__ptext37:	;psect for function _RF24_begin
psect	text37
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/rf24.c"
	line	58
	
_RF24_begin:	
;incstack = 0
	callstack 9
; Regs used in _RF24_begin: [wreg+status,2+status,0+pclath+cstack]
	line	61
	
l2236:	
	movlb 1	; select bank1
	bcf	(1142/8)^080h,(1142)&7	;volatile
	line	62
	bcf	(1141/8)^080h,(1141)&7	;volatile
	line	63
	movlb 0	; select bank0
	bcf	(118/8),(118)&7	;volatile
	line	64
	bsf	(117/8),(117)&7	;volatile
	line	65
	
l2238:	
	asmopt push
asmopt off
movlw  3
movwf	((??_RF24_begin+0)+0+1)
movlw	8
movwf	((??_RF24_begin+0)+0)
	movlw	119
u1437:
decfsz	wreg
	goto	u1437
	decfsz	((??_RF24_begin+0)+0),f
	goto	u1437
	decfsz	((??_RF24_begin+0)+0+1),f
	goto	u1437
	nop
asmopt pop

	line	75
	asmopt push
asmopt off
movlw	26
movwf	((??_RF24_begin+0)+0)
	movlw	248
u1447:
decfsz	wreg
	goto	u1447
	decfsz	((??_RF24_begin+0)+0),f
	goto	u1447
	nop2
asmopt pop

	line	79
	
l2240:	
	movlw	low(0Fh)
	movwf	(??_RF24_begin+0)+0
	movf	(??_RF24_begin+0)+0,w
	movwf	(RF24_setRetries@count)
	movlw	low(05h)
	fcall	_RF24_setRetries
	line	84
	
l2242:	
	movlw	low(03h)
	fcall	_RF24_setPALevel
	line	85
	
l2244:	
	movlw	low(0)
	fcall	_RF24_setDataRate
	line	88
	
l2246:	
	clrf	(RF24_write_register@value)
	movlw	low(01Dh)
	fcall	_RF24_write_register
	line	89
	
l2248:	
	clrf	(RF24_write_register@value)
	movlw	low(01Ch)
	fcall	_RF24_write_register
	line	90
	
l2250:	
	movlw	low(03Fh)
	movwf	(??_RF24_begin+0)+0
	movf	(??_RF24_begin+0)+0,w
	movwf	(RF24_write_register@value)
	movlw	low(01h)
	fcall	_RF24_write_register
	line	91
	
l2252:	
	movlw	low(03h)
	movwf	(??_RF24_begin+0)+0
	movf	(??_RF24_begin+0)+0,w
	movwf	(RF24_write_register@value)
	movlw	low(02h)
	fcall	_RF24_write_register
	line	92
	
l2254:	
	movlw	low(020h)
	fcall	_RF24_setPayloadSize
	line	93
	
l2256:	
	movlw	low(05h)
	fcall	_RF24_setAddressWidth
	line	98
	
l2258:	
	movlw	low(04Ch)
	fcall	_RF24_setChannel
	line	102
	
l2260:	
	movlw	low(070h)
	movwf	(??_RF24_begin+0)+0
	movf	(??_RF24_begin+0)+0,w
	movwf	(RF24_write_register@value)
	movlw	low(07h)
	fcall	_RF24_write_register
	line	105
	
l2262:	
	fcall	_RF24_flush_rx
	line	106
	
l2264:	
	fcall	_RF24_flush_tx
	line	115
	
l2266:	
	movlw	low(0Ch)
	movwf	(??_RF24_begin+0)+0
	movf	(??_RF24_begin+0)+0,w
	movwf	(RF24_write_register@value)
	movlw	low(0)
	fcall	_RF24_write_register
	line	116
	
l2268:	
	fcall	_RF24_powerUp
	line	117
	
l2270:	
	movlw	low(0)
	fcall	_RF24_read_register
	movwf	(??_RF24_begin+0)+0
	movf	(??_RF24_begin+0)+0,w
	movlb 0	; select bank0
	movwf	(_RF24_attr_config)
	line	119
	
l452:	
	return
	callstack 0
GLOBAL	__end_of_RF24_begin
	__end_of_RF24_begin:
	signat	_RF24_begin,89
	global	_RF24_setRetries

;; *************** function _RF24_setRetries *****************
;; Defined at:
;;		line 468 in file "F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/rf24.c"
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
;; Hardware stack levels required when called: 4
;; This function calls:
;;		_RF24_write_register
;; This function is called by:
;;		_RF24_begin
;; This function uses a non-reentrant model
;;
psect	text38,local,class=CODE,delta=2,merge=1,group=1
	line	468
global __ptext38
__ptext38:	;psect for function _RF24_setRetries
psect	text38
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/rf24.c"
	line	468
	
_RF24_setRetries:	
;incstack = 0
	callstack 9
; Regs used in _RF24_setRetries: [wreg+status,2+status,0+pclath+cstack]
	movwf	(RF24_setRetries@delay)
	line	470
	
l2204:	
	movlw	low(0Fh)
	andwf	(RF24_setRetries@count),w
	movwf	(??_RF24_setRetries+0)+0
	movf	(RF24_setRetries@delay),w
	andlw	0Fh
	movwf	(??_RF24_setRetries+1)+0
	movlw	(04h)-1
u885:
	lslf	(??_RF24_setRetries+1)+0,f
	addlw	-1
	skipz
	goto	u885
	lslf	(??_RF24_setRetries+1)+0,w
	iorwf	0+(??_RF24_setRetries+0)+0,w
	movwf	(??_RF24_setRetries+2)+0
	movf	(??_RF24_setRetries+2)+0,w
	movwf	(RF24_write_register@value)
	movlw	low(04h)
	fcall	_RF24_write_register
	line	471
	
l589:	
	return
	callstack 0
GLOBAL	__end_of_RF24_setRetries
	__end_of_RF24_setRetries:
	signat	_RF24_setRetries,8313
	global	_RF24_setPayloadSize

;; *************** function _RF24_setPayloadSize *****************
;; Defined at:
;;		line 182 in file "F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/rf24.c"
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
;; Hardware stack levels required when called: 4
;; This function calls:
;;		_RF24_write_register
;; This function is called by:
;;		_Network_begin
;;		_RF24_begin
;; This function uses a non-reentrant model
;;
psect	text39,local,class=CODE,delta=2,merge=1,group=1
	line	182
global __ptext39
__ptext39:	;psect for function _RF24_setPayloadSize
psect	text39
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/rf24.c"
	line	182
	
_RF24_setPayloadSize:	
;incstack = 0
	callstack 10
; Regs used in _RF24_setPayloadSize: [wreg+status,2+status,0+pclath+cstack]
	movwf	(RF24_setPayloadSize@size)
	line	184
	
l2202:	
	movf	(RF24_setPayloadSize@size),w
	movwf	(??_RF24_setPayloadSize+0)+0
	movf	(??_RF24_setPayloadSize+0)+0,w
	movwf	(RF24_write_register@value)
	movlw	low(011h)
	fcall	_RF24_write_register
	line	185
	movf	(RF24_setPayloadSize@size),w
	movwf	(??_RF24_setPayloadSize+0)+0
	movf	(??_RF24_setPayloadSize+0)+0,w
	movwf	(RF24_write_register@value)
	movlw	low(012h)
	fcall	_RF24_write_register
	line	186
	movf	(RF24_setPayloadSize@size),w
	movwf	(??_RF24_setPayloadSize+0)+0
	movf	(??_RF24_setPayloadSize+0)+0,w
	movwf	(RF24_write_register@value)
	movlw	low(013h)
	fcall	_RF24_write_register
	line	187
	movf	(RF24_setPayloadSize@size),w
	movwf	(??_RF24_setPayloadSize+0)+0
	movf	(??_RF24_setPayloadSize+0)+0,w
	movwf	(RF24_write_register@value)
	movlw	low(014h)
	fcall	_RF24_write_register
	line	188
	movf	(RF24_setPayloadSize@size),w
	movwf	(??_RF24_setPayloadSize+0)+0
	movf	(??_RF24_setPayloadSize+0)+0,w
	movwf	(RF24_write_register@value)
	movlw	low(015h)
	fcall	_RF24_write_register
	line	189
	movf	(RF24_setPayloadSize@size),w
	movwf	(??_RF24_setPayloadSize+0)+0
	movf	(??_RF24_setPayloadSize+0)+0,w
	movwf	(RF24_write_register@value)
	movlw	low(016h)
	fcall	_RF24_write_register
	line	190
	
l478:	
	return
	callstack 0
GLOBAL	__end_of_RF24_setPayloadSize
	__end_of_RF24_setPayloadSize:
	signat	_RF24_setPayloadSize,4217
	global	_RF24_setPALevel

;; *************** function _RF24_setPALevel *****************
;; Defined at:
;;		line 121 in file "F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/rf24.c"
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
;; Hardware stack levels required when called: 4
;; This function calls:
;;		_RF24_read_register
;;		_RF24_write_register
;; This function is called by:
;;		_RF24_begin
;; This function uses a non-reentrant model
;;
psect	text40,local,class=CODE,delta=2,merge=1,group=1
	line	121
global __ptext40
__ptext40:	;psect for function _RF24_setPALevel
psect	text40
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/rf24.c"
	line	121
	
_RF24_setPALevel:	
;incstack = 0
	callstack 9
; Regs used in _RF24_setPALevel: [wreg+status,2+status,0+pclath+cstack]
	movwf	(RF24_setPALevel@level)
	line	123
	
l2206:	
	movlw	low(06h)
	fcall	_RF24_read_register
	andlw	0F8h
	movwf	(??_RF24_setPALevel+0)+0
	movf	(??_RF24_setPALevel+0)+0,w
	movwf	(RF24_setPALevel@setup)
	line	124
	
l2208:	
	movlw	low(04h)
	subwf	(RF24_setPALevel@level),w
	skipnc
	goto	u891
	goto	u890
u891:
	goto	l2212
u890:
	
l2210:	
	movf	(RF24_setPALevel@level),w
	movwf	(??_RF24_setPALevel+0)+0
	movf	(??_RF24_setPALevel+0)+0,w
	movwf	(_RF24_setPALevel$779)
	goto	l2214
	
l2212:	
	movlw	low(03h)
	movwf	(??_RF24_setPALevel+0)+0
	movf	(??_RF24_setPALevel+0)+0,w
	movwf	(_RF24_setPALevel$779)
	
l2214:	
	lslf	(_RF24_setPALevel$779),w
	movwf	(??_RF24_setPALevel+0)+0
	movf	(??_RF24_setPALevel+0)+0,w
	iorwf	(RF24_setPALevel@setup),f
	line	125
	
l2216:	
	movf	(RF24_setPALevel@setup),w
	movwf	(??_RF24_setPALevel+0)+0
	movf	(??_RF24_setPALevel+0)+0,w
	movwf	(RF24_write_register@value)
	movlw	low(06h)
	fcall	_RF24_write_register
	line	126
	
l459:	
	return
	callstack 0
GLOBAL	__end_of_RF24_setPALevel
	__end_of_RF24_setPALevel:
	signat	_RF24_setPALevel,4217
	global	_RF24_setDataRate

;; *************** function _RF24_setDataRate *****************
;; Defined at:
;;		line 369 in file "F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/rf24.c"
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
;; Hardware stack levels required when called: 4
;; This function calls:
;;		_RF24_read_register
;;		_RF24_write_register
;; This function is called by:
;;		_Network_begin
;;		_RF24_begin
;; This function uses a non-reentrant model
;;
psect	text41,local,class=CODE,delta=2,merge=1,group=1
	line	369
global __ptext41
__ptext41:	;psect for function _RF24_setDataRate
psect	text41
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/rf24.c"
	line	369
	
_RF24_setDataRate:	
;incstack = 0
	callstack 10
; Regs used in _RF24_setDataRate: [wreg+status,2+status,0+pclath+cstack]
	movwf	(RF24_setDataRate@speed)
	line	371
	
l2188:	
	movlw	low(06h)
	fcall	_RF24_read_register
	movwf	(??_RF24_setDataRate+0)+0
	movf	(??_RF24_setDataRate+0)+0,w
	movwf	(RF24_setDataRate@setup)
	line	373
	
l2190:	
	movf	(RF24_setDataRate@setup),w
	andlw	0D7h
	movwf	(??_RF24_setDataRate+0)+0
	movf	(??_RF24_setDataRate+0)+0,w
	movwf	(RF24_setDataRate@setup)
	line	374
	
l2192:	
		movlw	2
	xorwf	((RF24_setDataRate@speed)),w
	btfss	status,2
	goto	u861
	goto	u860
u861:
	goto	l2196
u860:
	line	376
	
l2194:	
	bsf	(RF24_setDataRate@setup)+(5/8),(5)&7
	line	377
	goto	l2200
	line	378
	
l2196:	
		decf	((RF24_setDataRate@speed)),w
	btfss	status,2
	goto	u871
	goto	u870
u871:
	goto	l2200
u870:
	line	380
	
l2198:	
	bsf	(RF24_setDataRate@setup)+(3/8),(3)&7
	line	382
	
l2200:	
	movf	(RF24_setDataRate@setup),w
	movwf	(??_RF24_setDataRate+0)+0
	movf	(??_RF24_setDataRate+0)+0,w
	movwf	(RF24_write_register@value)
	movlw	low(06h)
	fcall	_RF24_write_register
	line	383
	
l545:	
	return
	callstack 0
GLOBAL	__end_of_RF24_setDataRate
	__end_of_RF24_setDataRate:
	signat	_RF24_setDataRate,4217
	global	_RF24_setChannel

;; *************** function _RF24_setChannel *****************
;; Defined at:
;;		line 448 in file "F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/rf24.c"
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
;; Hardware stack levels required when called: 4
;; This function calls:
;;		_RF24_write_register
;; This function is called by:
;;		_internet_setChannel
;;		_RF24_begin
;; This function uses a non-reentrant model
;;
psect	text42,local,class=CODE,delta=2,merge=1,group=1
	line	448
global __ptext42
__ptext42:	;psect for function _RF24_setChannel
psect	text42
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/rf24.c"
	line	448
	
_RF24_setChannel:	
;incstack = 0
	callstack 10
; Regs used in _RF24_setChannel: [wreg+status,2+status,0+pclath+cstack]
	movwf	(RF24_setChannel@channel)
	line	450
	
l2132:	
	movf	(RF24_setChannel@channel),w
	movwf	(??_RF24_setChannel+0)+0
	movf	(??_RF24_setChannel+0)+0,w
	movwf	(RF24_write_register@value)
	movlw	low(05h)
	fcall	_RF24_write_register
	line	451
	
l574:	
	return
	callstack 0
GLOBAL	__end_of_RF24_setChannel
	__end_of_RF24_setChannel:
	signat	_RF24_setChannel,4217
	global	_RF24_setAddressWidth

;; *************** function _RF24_setAddressWidth *****************
;; Defined at:
;;		line 472 in file "F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/rf24.c"
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
;; Hardware stack levels required when called: 4
;; This function calls:
;;		_RF24_write_register
;; This function is called by:
;;		_Network_begin
;;		_RF24_begin
;; This function uses a non-reentrant model
;;
psect	text43,local,class=CODE,delta=2,merge=1,group=1
	line	472
global __ptext43
__ptext43:	;psect for function _RF24_setAddressWidth
psect	text43
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/rf24.c"
	line	472
	
_RF24_setAddressWidth:	
;incstack = 0
	callstack 10
; Regs used in _RF24_setAddressWidth: [wreg+status,2+status,0+pclath+cstack]
	movwf	(RF24_setAddressWidth@w)
	line	474
	
l2186:	
	movf	(RF24_setAddressWidth@w),w
	addlw	0FEh
	andlw	03h
	movwf	(??_RF24_setAddressWidth+0)+0
	movf	(??_RF24_setAddressWidth+0)+0,w
	movwf	(RF24_write_register@value)
	movlw	low(03h)
	fcall	_RF24_write_register
	line	475
	
l592:	
	return
	callstack 0
GLOBAL	__end_of_RF24_setAddressWidth
	__end_of_RF24_setAddressWidth:
	signat	_RF24_setAddressWidth,4217
	global	_RF24_powerUp

;; *************** function _RF24_powerUp *****************
;; Defined at:
;;		line 176 in file "F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/rf24.c"
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
;; Hardware stack levels required when called: 4
;; This function calls:
;;		_RF24_read_register
;;		_RF24_write_register
;; This function is called by:
;;		_RF24_begin
;; This function uses a non-reentrant model
;;
psect	text44,local,class=CODE,delta=2,merge=1,group=1
	line	176
global __ptext44
__ptext44:	;psect for function _RF24_powerUp
psect	text44
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/rf24.c"
	line	176
	
_RF24_powerUp:	
;incstack = 0
	callstack 9
; Regs used in _RF24_powerUp: [wreg+status,2+status,0+pclath+cstack]
	line	178
	
l2218:	
	movlw	low(0)
	fcall	_RF24_read_register
	iorlw	02h
	movwf	(??_RF24_powerUp+0)+0
	movf	(??_RF24_powerUp+0)+0,w
	movwf	(RF24_write_register@value)
	movlw	low(0)
	fcall	_RF24_write_register
	line	179
	
l2220:	
	asmopt push
asmopt off
movlw	26
movwf	((??_RF24_powerUp+0)+0)
	movlw	248
u1457:
decfsz	wreg
	goto	u1457
	decfsz	((??_RF24_powerUp+0)+0),f
	goto	u1457
	nop2
asmopt pop

	line	180
	
l475:	
	return
	callstack 0
GLOBAL	__end_of_RF24_powerUp
	__end_of_RF24_powerUp:
	signat	_RF24_powerUp,89
	global	_RF24_read_register

;; *************** function _RF24_read_register *****************
;; Defined at:
;;		line 17 in file "F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/rf24.c"
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
;; Hardware stack levels required when called: 3
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
psect	text45,local,class=CODE,delta=2,merge=1,group=1
	line	17
global __ptext45
__ptext45:	;psect for function _RF24_read_register
psect	text45
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/rf24.c"
	line	17
	
_RF24_read_register:	
;incstack = 0
	callstack 8
; Regs used in _RF24_read_register: [wreg+pclath+cstack]
	movwf	(RF24_read_register@mnemonic_addr)
	line	19
	
l1848:	
	movlb 0	; select bank0
	bcf	(117/8),(117)&7	;volatile
	line	21
	
l1850:	
	movf	(RF24_read_register@mnemonic_addr),w
	fcall	_SPI_exchangeByte
	movwf	(??_RF24_read_register+0)+0
	movf	(??_RF24_read_register+0)+0,w
	movlb 0	; select bank0
	movwf	(_RF24_attr_status)
	line	22
	movlw	low(0FFh)
	fcall	_SPI_exchangeByte
	movwf	(??_RF24_read_register+0)+0
	movf	(??_RF24_read_register+0)+0,w
	movwf	(RF24_read_register@result)
	line	23
	
l1852:	
	movlb 0	; select bank0
	bsf	(117/8),(117)&7	;volatile
	line	25
	
l1854:	
	movf	(RF24_read_register@result),w
	line	26
	
l437:	
	return
	callstack 0
GLOBAL	__end_of_RF24_read_register
	__end_of_RF24_read_register:
	signat	_RF24_read_register,4217
	global	_RF24_flush_tx

;; *************** function _RF24_flush_tx *****************
;; Defined at:
;;		line 436 in file "F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/rf24.c"
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
;; Hardware stack levels required when called: 4
;; This function calls:
;;		_RF24_write_register
;; This function is called by:
;;		_RF24_begin
;;		_RF24_write
;; This function uses a non-reentrant model
;;
psect	text46,local,class=CODE,delta=2,merge=1,group=1
	line	436
global __ptext46
__ptext46:	;psect for function _RF24_flush_tx
psect	text46
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/rf24.c"
	line	436
	
_RF24_flush_tx:	
;incstack = 0
	callstack 7
; Regs used in _RF24_flush_tx: [wreg+status,2+status,0+pclath+cstack]
	line	438
	
l1880:	
	movlw	low(0FFh)
	movwf	(??_RF24_flush_tx+0)+0
	movf	(??_RF24_flush_tx+0)+0,w
	movwf	(RF24_write_register@value)
	movlw	low(0E1h)
	fcall	_RF24_write_register
	line	439
	
l565:	
	return
	callstack 0
GLOBAL	__end_of_RF24_flush_tx
	__end_of_RF24_flush_tx:
	signat	_RF24_flush_tx,89
	global	_RF24_flush_rx

;; *************** function _RF24_flush_rx *****************
;; Defined at:
;;		line 440 in file "F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/rf24.c"
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
;; Hardware stack levels required when called: 4
;; This function calls:
;;		_RF24_write_register
;; This function is called by:
;;		_RF24_begin
;;		_RF24_getDynamicPayloadSize
;; This function uses a non-reentrant model
;;
psect	text47,local,class=CODE,delta=2,merge=1,group=1
	line	440
global __ptext47
__ptext47:	;psect for function _RF24_flush_rx
psect	text47
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/rf24.c"
	line	440
	
_RF24_flush_rx:	
;incstack = 0
	callstack 8
; Regs used in _RF24_flush_rx: [wreg+status,2+status,0+pclath+cstack]
	line	442
	
l2130:	
	movlw	low(0FFh)
	movwf	(??_RF24_flush_rx+0)+0
	movf	(??_RF24_flush_rx+0)+0,w
	movwf	(RF24_write_register@value)
	movlw	low(0E2h)
	fcall	_RF24_write_register
	line	443
	
l568:	
	return
	callstack 0
GLOBAL	__end_of_RF24_flush_rx
	__end_of_RF24_flush_rx:
	signat	_RF24_flush_rx,89
	global	_RF24_write_register

;; *************** function _RF24_write_register *****************
;; Defined at:
;;		line 41 in file "F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/rf24.c"
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
psect	text48,local,class=CODE,delta=2,merge=1,group=1
	line	41
global __ptext48
__ptext48:	;psect for function _RF24_write_register
psect	text48
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/rf24.c"
	line	41
	
_RF24_write_register:	
;incstack = 0
	callstack 8
; Regs used in _RF24_write_register: [wreg+status,2+status,0+pclath+cstack]
	movwf	(RF24_write_register@mnemonic_addr)
	line	44
	
l1840:	
	movlb 0	; select bank0
	bcf	(117/8),(117)&7	;volatile
	line	45
	
l1842:	
	movf	(RF24_write_register@mnemonic_addr),w
	iorlw	020h
	fcall	_SPI_exchangeByte
	movwf	(??_RF24_write_register+0)+0
	movf	(??_RF24_write_register+0)+0,w
	movlb 0	; select bank0
	movwf	(_RF24_attr_status)
	line	46
	
l1844:	
	movf	(RF24_write_register@value),w
	fcall	_SPI_exchangeByte
	line	47
	
l1846:	
	movlb 0	; select bank0
	bsf	(117/8),(117)&7	;volatile
	line	48
	
l446:	
	return
	callstack 0
GLOBAL	__end_of_RF24_write_register
	__end_of_RF24_write_register:
	signat	_RF24_write_register,8313
	global	_SPI_exchangeByte

;; *************** function _SPI_exchangeByte *****************
;; Defined at:
;;		line 26 in file "F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/spi_master.c"
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
psect	text49,local,class=CODE,delta=2,merge=1,group=1
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/spi_master.c"
	line	26
global __ptext49
__ptext49:	;psect for function _SPI_exchangeByte
psect	text49
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/spi_master.c"
	line	26
	
_SPI_exchangeByte:	
;incstack = 0
	callstack 9
; Regs used in _SPI_exchangeByte: [wreg]
	movwf	(SPI_exchangeByte@byte)
	line	29
	
l1834:	
	movf	(SPI_exchangeByte@byte),w
	movlb 4	; select bank4
	movwf	(529)^0200h	;volatile
	line	31
	
l619:	
	line	30
	movlb 0	; select bank0
	btfss	(139/8),(139)&7	;volatile
	goto	u571
	goto	u570
u571:
	goto	l619
u570:
	
l621:	
	line	32
	bcf	(139/8),(139)&7	;volatile
	line	33
	
l1836:	
	movlb 4	; select bank4
	movf	(529)^0200h,w	;volatile
	line	34
	
l622:	
	return
	callstack 0
GLOBAL	__end_of_SPI_exchangeByte
	__end_of_SPI_exchangeByte:
	signat	_SPI_exchangeByte,4217
	global	_ISR

;; *************** function _ISR *****************
;; Defined at:
;;		line 125 in file "F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/app/src/main.c"
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
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		_timeISR
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
psect	intentry
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/app/src/main.c"
	line	125
	
_ISR:	
;incstack = 0
	callstack 2
	bsf int$flags,0 ;set compiler interrupt flag (level 1)
; Regs used in _ISR: [wreg+status,2+status,0+pclath+cstack]
psect	intentry
	pagesel	$
	line	127
	
i1l2446:	
	fcall	_timeISR
	line	128
	
i1l93:	
	bcf int$flags,0 ;clear compiler interrupt flag (level 1)
	retfie
	callstack 0
GLOBAL	__end_of_ISR
	__end_of_ISR:
	signat	_ISR,89
	global	_timeISR

;; *************** function _timeISR *****************
;; Defined at:
;;		line 47 in file "F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/timer.c"
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
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text51,local,class=CODE,delta=2,merge=1,group=1
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/timer.c"
	line	47
global __ptext51
__ptext51:	;psect for function _timeISR
psect	text51
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/timer.c"
	line	47
	
_timeISR:	
;incstack = 0
	callstack 2
; Regs used in _timeISR: [wreg]
	line	49
	
i1l2394:	
	movlb 0	; select bank0
	btfss	(136/8),(136)&7	;volatile
	goto	u106_21
	goto	u106_20
u106_21:
	goto	i1l661
u106_20:
	line	51
	
i1l2396:	
	movlw	0
	movlb 1	; select bank1
	addwf	(__microsMSB)^080h,f
	movlw	0
	addwfc	(__microsMSB+1)^080h,f
	movlw	01h
	addwfc	(__microsMSB+2)^080h,f
	movlw	0
	addwfc	(__microsMSB+3)^080h,f
	line	52
	
i1l2398:	
	movlb 0	; select bank0
	bcf	(136/8),(136)&7	;volatile
	line	54
	
i1l661:	
	return
	callstack 0
GLOBAL	__end_of_timeISR
	__end_of_timeISR:
	signat	_timeISR,89
global	___latbits
___latbits	equ	1
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	int$flags
	int$flags	set btemp
	global	wtemp0
	wtemp0 set btemp+0
	end

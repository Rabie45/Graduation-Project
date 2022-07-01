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
	FNCALL	_main,_RF24_printDetails
	FNCALL	_main,_SPI_initialize
	FNCALL	_main,_Serial_begin
	FNCALL	_main,_Serial_write
	FNCALL	_main,__$_logline_str
	FNCALL	_main,_checkRF24Connection
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
	FNCALL	_RF24_getDynamicPayloadSize,_RF24_flush_rx
	FNCALL	_RF24_getDynamicPayloadSize,_RF24_read_register
	FNCALL	_RF24_available,_RF24_get_status
	FNCALL	_RF24_get_status,_SPI_exchangeByte
	FNCALL	_internet_setChannel,_RF24_setChannel
	FNCALL	_checkRF24Connection,_Network_begin
	FNCALL	_checkRF24Connection,_RF24_isChipConnected
	FNCALL	_checkRF24Connection,_RF24_printDetails
	FNCALL	_checkRF24Connection,_Serial_write
	FNCALL	_checkRF24Connection,__$_logline_str
	FNCALL	_RF24_printDetails,_RF24_read_n_register
	FNCALL	_RF24_printDetails,_RF24_read_register
	FNCALL	_RF24_printDetails,_Serial_write
	FNCALL	_RF24_printDetails,__$_logline_bin
	FNCALL	_RF24_printDetails,__$_logline_hex
	FNCALL	_RF24_printDetails,__$_logline_int
	FNCALL	_RF24_printDetails,__$_logline_n_hex
	FNCALL	_RF24_printDetails,__$_logline_str
	FNCALL	__$_logline_str,_Serial_write
	FNCALL	__$_logline_n_hex,_Serial_write
	FNCALL	__$_logline_int,_Serial_write
	FNCALL	__$_logline_int,___awdiv
	FNCALL	__$_logline_int,___awmod
	FNCALL	__$_logline_int,___lbdiv
	FNCALL	__$_logline_hex,_Serial_write
	FNCALL	__$_logline_bin,_Serial_write
	FNCALL	_RF24_read_n_register,_SPI_exchangeByte
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
	FNCALL	_Serial_begin,___aldiv
	FNCALL	_Serial_begin,___lmul
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
	global	_LOGLINE_CONVERSION_TABLE
psect	stringtext1,class=STRCODE,delta=2,noexec
global __pstringtext1
__pstringtext1:
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/logline.c"
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
psect	stringtext3,class=STRCODE,delta=2,noexec
global __pstringtext3
__pstringtext3:
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/include/logline.h"
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
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/include/logline.h"
	line	16
_LOGLINE_OK:
	retlw	04Fh
	retlw	04Bh
	retlw	low(0)
	global __end_of_LOGLINE_OK
__end_of_LOGLINE_OK:
	global	_BASE_PIPE
psect	stringtext5,class=STRCODE,delta=2,noexec
global __pstringtext5
__pstringtext5:
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/include\internet.h"
	line	12
_BASE_PIPE:
	retlw	0E9h
	retlw	070h
	retlw	09Dh
	retlw	06Bh
	retlw	0C5h
	global __end_of_BASE_PIPE
__end_of_BASE_PIPE:
	global	_LOGLINE_CONVERSION_TABLE
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
	global	_RC4
_RC4	set	0x74
	global	_RC3
_RC3	set	0x73
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
	global	_TRISB5
_TRISB5	set	0x46D
	global	_TRISC1
_TRISC1	set	0x471
	global	_TRISC4
_TRISC4	set	0x474
	global	_TRISC3
_TRISC3	set	0x473
	global	_TXCKSEL
_TXCKSEL	set	0x8EA
	global	_RXDTSEL
_RXDTSEL	set	0x8EF
	global	_TXREG
_TXREG	set	0x19A
	global	_ANSELBbits
_ANSELBbits	set	0x18D
	global	_SPBRG
_SPBRG	set	0x19B
	global	_ANSELC
_ANSELC	set	0x18E
	global	_ANSELB
_ANSELB	set	0x18D
	global	_ANSELA
_ANSELA	set	0x18C
	global	_TRMT
_TRMT	set	0xCF1
	global	_TXEN
_TXEN	set	0xCF5
	global	_CREN
_CREN	set	0xCEC
	global	_SENDB
_SENDB	set	0xCF3
	global	_SPEN
_SPEN	set	0xCEF
	global	_SYNC
_SYNC	set	0xCF4
	global	_BRGH
_BRGH	set	0xCF2
	global	_SSP1BUF
_SSP1BUF	set	0x211
	global	_SSP1CON1
_SSP1CON1	set	0x215
	global	_SSP1STAT
_SSP1STAT	set	0x214
	global	_SSPEN
_SSPEN	set	0x10AD
	
STR_1:	
	retlw	119	;'w'
	retlw	97	;'a'
	retlw	105	;'i'
	retlw	116	;'t'
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	103	;'g'
	retlw	32	;' '
	retlw	102	;'f'
	retlw	111	;'o'
	retlw	114	;'r'
	retlw	32	;' '
	retlw	99	;'c'
	retlw	111	;'o'
	retlw	110	;'n'
	retlw	102	;'f'
	retlw	105	;'i'
	retlw	103	;'g'
	retlw	117	;'u'
	retlw	114	;'r'
	retlw	97	;'a'
	retlw	116	;'t'
	retlw	105	;'i'
	retlw	111	;'o'
	retlw	110	;'n'
	retlw	32	;' '
	retlw	109	;'m'
	retlw	101	;'e'
	retlw	115	;'s'
	retlw	115	;'s'
	retlw	97	;'a'
	retlw	103	;'g'
	retlw	101	;'e'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	0
psect	stringtext6,class=STRCODE,delta=2,noexec
global __pstringtext6
__pstringtext6:
	
STR_22:	
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
psect	stringtext7,class=STRCODE,delta=2,noexec
global __pstringtext7
__pstringtext7:
	
STR_5:	
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
psect	stringtext8,class=STRCODE,delta=2,noexec
global __pstringtext8
__pstringtext8:
	
STR_3:	
	retlw	82	;'R'
	retlw	70	;'F'
	retlw	50	;'2'
	retlw	52	;'4'
	retlw	32	;' '
	retlw	100	;'d'
	retlw	105	;'i'
	retlw	115	;'s'
	retlw	99	;'c'
	retlw	111	;'o'
	retlw	110	;'n'
	retlw	110	;'n'
	retlw	101	;'e'
	retlw	99	;'c'
	retlw	116	;'t'
	retlw	101	;'e'
	retlw	100	;'d'
	retlw	33	;'!'
	retlw	0
psect	stringtext9,class=STRCODE,delta=2,noexec
global __pstringtext9
__pstringtext9:
	
STR_4:	
	retlw	82	;'R'
	retlw	70	;'F'
	retlw	50	;'2'
	retlw	52	;'4'
	retlw	32	;' '
	retlw	99	;'c'
	retlw	111	;'o'
	retlw	110	;'n'
	retlw	110	;'n'
	retlw	101	;'e'
	retlw	99	;'c'
	retlw	116	;'t'
	retlw	101	;'e'
	retlw	100	;'d'
	retlw	0
psect	stringtext10,class=STRCODE,delta=2,noexec
global __pstringtext10
__pstringtext10:
	
STR_10:	
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
psect	stringtext11,class=STRCODE,delta=2,noexec
global __pstringtext11
__pstringtext11:
	
STR_14:	
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
psect	stringtext12,class=STRCODE,delta=2,noexec
global __pstringtext12
__pstringtext12:
	
STR_8:	
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
psect	stringtext13,class=STRCODE,delta=2,noexec
global __pstringtext13
__pstringtext13:
	
STR_12:	
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
	
STR_9:	
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
	
STR_6:	
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
	
STR_13:	
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
	
STR_15:	
	retlw	82	;'R'
	retlw	88	;'X'
	retlw	95	;'_'
	retlw	80	;'P'
	retlw	48	;'0'
	retlw	0
psect	stringtext18,class=STRCODE,delta=2,noexec
global __pstringtext18
__pstringtext18:
	
STR_16:	
	retlw	82	;'R'
	retlw	88	;'X'
	retlw	95	;'_'
	retlw	80	;'P'
	retlw	49	;'1'
	retlw	0
psect	stringtext19,class=STRCODE,delta=2,noexec
global __pstringtext19
__pstringtext19:
	
STR_17:	
	retlw	82	;'R'
	retlw	88	;'X'
	retlw	95	;'_'
	retlw	80	;'P'
	retlw	50	;'2'
	retlw	0
psect	stringtext20,class=STRCODE,delta=2,noexec
global __pstringtext20
__pstringtext20:
	
STR_18:	
	retlw	82	;'R'
	retlw	88	;'X'
	retlw	95	;'_'
	retlw	80	;'P'
	retlw	51	;'3'
	retlw	0
psect	stringtext21,class=STRCODE,delta=2,noexec
global __pstringtext21
__pstringtext21:
	
STR_19:	
	retlw	82	;'R'
	retlw	88	;'X'
	retlw	95	;'_'
	retlw	80	;'P'
	retlw	52	;'4'
	retlw	0
psect	stringtext22,class=STRCODE,delta=2,noexec
global __pstringtext22
__pstringtext22:
	
STR_20:	
	retlw	82	;'R'
	retlw	88	;'X'
	retlw	95	;'_'
	retlw	80	;'P'
	retlw	53	;'5'
	retlw	0
psect	stringtext23,class=STRCODE,delta=2,noexec
global __pstringtext23
__pstringtext23:
	
STR_7:	
	retlw	69	;'E'
	retlw	78	;'N'
	retlw	95	;'_'
	retlw	65	;'A'
	retlw	65	;'A'
	retlw	0
psect	stringtext24,class=STRCODE,delta=2,noexec
global __pstringtext24
__pstringtext24:
	
STR_11:	
	retlw	82	;'R'
	retlw	70	;'F'
	retlw	95	;'_'
	retlw	67	;'C'
	retlw	72	;'H'
	retlw	0
psect	stringtext25,class=STRCODE,delta=2,noexec
global __pstringtext25
__pstringtext25:
	
STR_2:	
	retlw	35	;'#'
	retlw	0
psect	stringtext26,class=STRCODE,delta=2,noexec
global __pstringtext26
__pstringtext26:
STR_21	equ	STR_14+8
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
?_RF24_printDetails:	; 1 bytes @ 0x0
?_checkRF24Connection:	; 1 bytes @ 0x0
?_Serial_write:	; 1 bytes @ 0x0
??_Serial_write:	; 1 bytes @ 0x0
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
?__$_logline_int:	; 1 bytes @ 0x0
?__$_logline_bin:	; 1 bytes @ 0x0
?__$_logline_hex:	; 1 bytes @ 0x0
?_RF24_read_register:	; 1 bytes @ 0x0
?_RF24_get_status:	; 1 bytes @ 0x0
?_timerInit:	; 1 bytes @ 0x0
??_timerInit:	; 1 bytes @ 0x0
?___lbdiv:	; 1 bytes @ 0x0
?_memcpy:	; 2 bytes @ 0x0
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x0
	global	?_micros
?_micros:	; 4 bytes @ 0x0
	global	?___lmul
?___lmul:	; 4 bytes @ 0x0
	global	internet_calculateMask@address
internet_calculateMask@address:	; 1 bytes @ 0x0
	global	Serial_write@data
Serial_write@data:	; 1 bytes @ 0x0
	global	SPI_exchangeByte@byte
SPI_exchangeByte@byte:	; 1 bytes @ 0x0
	global	___lbdiv@divisor
___lbdiv@divisor:	; 1 bytes @ 0x0
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x0
	global	memcpy@d1
memcpy@d1:	; 2 bytes @ 0x0
	global	___lmul@multiplier
___lmul@multiplier:	; 4 bytes @ 0x0
	ds	1
?__$_logline_str:	; 1 bytes @ 0x1
??__$_logline_bin:	; 1 bytes @ 0x1
??__$_logline_hex:	; 1 bytes @ 0x1
?__$_logline_n_hex:	; 1 bytes @ 0x1
?_RF24_read_n_register:	; 1 bytes @ 0x1
??_RF24_read_register:	; 1 bytes @ 0x1
?_RF24_write_n_register:	; 1 bytes @ 0x1
??_RF24_get_status:	; 1 bytes @ 0x1
??___lbdiv:	; 1 bytes @ 0x1
	global	internet_calculateMask@mask
internet_calculateMask@mask:	; 1 bytes @ 0x1
	global	__$_logline_n_hex@n
__$_logline_n_hex@n:	; 1 bytes @ 0x1
	global	timerInit@mhz
timerInit@mhz:	; 1 bytes @ 0x1
	global	__$_logline_str@string
__$_logline_str@string:	; 2 bytes @ 0x1
	global	RF24_read_n_register@buf
RF24_read_n_register@buf:	; 2 bytes @ 0x1
	global	RF24_write_n_register@buffer
RF24_write_n_register@buffer:	; 2 bytes @ 0x1
	ds	1
??_RF24_available:	; 1 bytes @ 0x2
??__$_logline_n_hex:	; 1 bytes @ 0x2
	global	internet_hasChild@address
internet_hasChild@address:	; 1 bytes @ 0x2
	global	__$_logline_hex@v
__$_logline_hex@v:	; 1 bytes @ 0x2
	global	RF24_read_register@mnemonic_addr
RF24_read_register@mnemonic_addr:	; 1 bytes @ 0x2
	global	timerInit@prescaler
timerInit@prescaler:	; 1 bytes @ 0x2
	global	___lbdiv@dividend
___lbdiv@dividend:	; 1 bytes @ 0x2
	global	__$_logline_bin$772
__$_logline_bin$772:	; 2 bytes @ 0x2
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x2
	global	memcpy@s1
memcpy@s1:	; 2 bytes @ 0x2
	ds	1
??_wait_init:	; 1 bytes @ 0x3
??__$_logline_str:	; 1 bytes @ 0x3
	global	__$_logline_n_hex@v
__$_logline_n_hex@v:	; 1 bytes @ 0x3
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
	global	___lbdiv@counter
___lbdiv@counter:	; 1 bytes @ 0x3
	ds	1
??_RF24_isChipConnected:	; 1 bytes @ 0x4
??_micros:	; 1 bytes @ 0x4
	global	?_RF24_getPALevel
?_RF24_getPALevel:	; 1 bytes @ 0x4
??_RF24_read_n_register:	; 1 bytes @ 0x4
??_RF24_write_n_register:	; 1 bytes @ 0x4
?_RF24_write_register:	; 1 bytes @ 0x4
??___awdiv:	; 1 bytes @ 0x4
	global	__$_logline_str@limit
__$_logline_str@limit:	; 1 bytes @ 0x4
	global	__$_logline_bin@v
__$_logline_bin@v:	; 1 bytes @ 0x4
	global	__$_logline_n_hex@ptr
__$_logline_n_hex@ptr:	; 1 bytes @ 0x4
	global	RF24_write_register@value
RF24_write_register@value:	; 1 bytes @ 0x4
	global	___lbdiv@quotient
___lbdiv@quotient:	; 1 bytes @ 0x4
	global	memcpy@n
memcpy@n:	; 2 bytes @ 0x4
	global	___lmul@multiplicand
___lmul@multiplicand:	; 4 bytes @ 0x4
	ds	1
??_RF24_getPALevel:	; 1 bytes @ 0x5
??_RF24_write_register:	; 1 bytes @ 0x5
	global	?___awmod
?___awmod:	; 2 bytes @ 0x5
	global	__$_logline_bin@i
__$_logline_bin@i:	; 1 bytes @ 0x5
	global	RF24_read_n_register@mnemonic_addr
RF24_read_n_register@mnemonic_addr:	; 1 bytes @ 0x5
	global	RF24_write_n_register@mnemonic_addr
RF24_write_n_register@mnemonic_addr:	; 1 bytes @ 0x5
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x5
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x5
	ds	1
??_memcpy:	; 1 bytes @ 0x6
??_RF24_openWritingPipe:	; 1 bytes @ 0x6
	global	RF24_write_register@mnemonic_addr
RF24_write_register@mnemonic_addr:	; 1 bytes @ 0x6
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x6
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
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x7
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x7
	global	memcpy@d
memcpy@d:	; 2 bytes @ 0x7
	ds	1
??_RF24_getDynamicPayloadSize:	; 1 bytes @ 0x8
??_RF24_read:	; 1 bytes @ 0x8
?_RF24_write:	; 1 bytes @ 0x8
??_RF24_setRetries:	; 1 bytes @ 0x8
??___lmul:	; 1 bytes @ 0x8
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
	global	___lmul@product
___lmul@product:	; 4 bytes @ 0x8
	ds	1
??_internet_setChannel:	; 1 bytes @ 0x9
??_RF24_openReadingPipe:	; 1 bytes @ 0x9
??_RF24_write:	; 1 bytes @ 0x9
??___awmod:	; 1 bytes @ 0x9
	global	internet_setChannel@channel
internet_setChannel@channel:	; 1 bytes @ 0x9
	global	_RF24_setPALevel$909
_RF24_setPALevel$909:	; 1 bytes @ 0x9
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
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0xA
	ds	1
	global	RF24_openReadingPipe@child
RF24_openReadingPipe@child:	; 1 bytes @ 0xB
	global	RF24_setRetries@delay
RF24_setRetries@delay:	; 1 bytes @ 0xB
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0xB
	global	memcpy@tmp
memcpy@tmp:	; 1 bytes @ 0xB
	ds	1
?_internet_setNetworkPipe:	; 1 bytes @ 0xC
??_RF24_printDetails:	; 1 bytes @ 0xC
??_internet_relay:	; 1 bytes @ 0xC
??_RF24_begin:	; 1 bytes @ 0xC
??___aldiv:	; 1 bytes @ 0xC
	global	internet_setNetworkPipe@pipe
internet_setNetworkPipe@pipe:	; 2 bytes @ 0xC
	ds	1
??_internet_tx:	; 1 bytes @ 0xD
	ds	1
??_checkRF24Connection:	; 1 bytes @ 0xE
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
??_Network_begin:	; 1 bytes @ 0x0
??_internet_setNetworkPipe:	; 1 bytes @ 0x0
?_internet_relay:	; 1 bytes @ 0x0
??__$_logline_int:	; 1 bytes @ 0x0
	global	?___aldiv
?___aldiv:	; 4 bytes @ 0x0
	global	internet_relay@size
internet_relay@size:	; 1 bytes @ 0x0
	global	___aldiv@divisor
___aldiv@divisor:	; 4 bytes @ 0x0
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
	global	__$_logline_int$767
__$_logline_int$767:	; 2 bytes @ 0x3
	ds	1
?_internet_config_rx:	; 1 bytes @ 0x4
?_internet_tx:	; 1 bytes @ 0x4
	global	internet_config_rx@size
internet_config_rx@size:	; 1 bytes @ 0x4
	global	internet_tx@size
internet_tx@size:	; 1 bytes @ 0x4
	global	___aldiv@dividend
___aldiv@dividend:	; 4 bytes @ 0x4
	ds	1
??_internet_config_rx:	; 1 bytes @ 0x5
	global	internet_tx@packetHeader
internet_tx@packetHeader:	; 1 bytes @ 0x5
	global	__$_logline_int$768
__$_logline_int$768:	; 2 bytes @ 0x5
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
	global	__$_logline_int@v
__$_logline_int@v:	; 1 bytes @ 0x7
	ds	1
	global	transport_udp_tx@destination
transport_udp_tx@destination:	; 1 bytes @ 0x8
	global	__$_logline_int@t
__$_logline_int@t:	; 1 bytes @ 0x8
	global	___aldiv@counter
___aldiv@counter:	; 1 bytes @ 0x8
	ds	1
	global	transport_udp_tx@sourcePort
transport_udp_tx@sourcePort:	; 1 bytes @ 0x9
	global	___aldiv@sign
___aldiv@sign:	; 1 bytes @ 0x9
	global	RF24_printDetails@buffer
RF24_printDetails@buffer:	; 5 bytes @ 0x9
	ds	1
	global	transport_udp_tx@destinationPort
transport_udp_tx@destinationPort:	; 1 bytes @ 0xA
	global	___aldiv@quotient
___aldiv@quotient:	; 4 bytes @ 0xA
	ds	1
??_transport_udp_tx:	; 1 bytes @ 0xB
	ds	1
	global	transport_udp_tx@packetHeader
transport_udp_tx@packetHeader:	; 1 bytes @ 0xC
	ds	1
	global	transport_udp_tx@payload
transport_udp_tx@payload:	; 1 bytes @ 0xD
	ds	1
?_Serial_begin:	; 1 bytes @ 0xE
?_transport_udp_process:	; 1 bytes @ 0xE
	global	transport_udp_process@size
transport_udp_process@size:	; 1 bytes @ 0xE
	global	Serial_begin@baudrate
Serial_begin@baudrate:	; 4 bytes @ 0xE
	ds	1
	global	transport_udp_process@port
transport_udp_process@port:	; 1 bytes @ 0xF
	ds	1
??_transport_udp_process:	; 1 bytes @ 0x10
	ds	2
??_Serial_begin:	; 1 bytes @ 0x12
	ds	1
	global	transport_udp_process@i
transport_udp_process@i:	; 1 bytes @ 0x13
	ds	1
	global	transport_udp_process@payload
transport_udp_process@payload:	; 1 bytes @ 0x14
	ds	1
	global	transport_udp_process@prop
transport_udp_process@prop:	; 2 bytes @ 0x15
	ds	2
	global	transport_udp_process@response_229
transport_udp_process@response_229:	; 1 bytes @ 0x17
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
	global	Serial_begin@x
Serial_begin@x:	; 2 bytes @ 0x1A
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
;!    Strings     231
;!    Constant    34
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
;!		 -> RF24_printDetails@buffer(BANK0[5]), buffer_rx(BANK2[32]), 
;!
;!    _$_logline_n_hex@ptr	PTR unsigned char  size(1) Largest target is 5
;!		 -> RF24_printDetails@buffer(BANK0[5]), 
;!
;!    _$_logline_str@string	PTR unsigned char  size(2) Largest target is 37
;!		 -> STR_22(CODE[23]), STR_21(CODE[3]), STR_20(CODE[6]), STR_19(CODE[6]), 
;!		 -> STR_18(CODE[6]), STR_17(CODE[6]), STR_16(CODE[6]), STR_15(CODE[6]), 
;!		 -> STR_14(CODE[11]), STR_13(CODE[7]), STR_12(CODE[9]), STR_11(CODE[6]), 
;!		 -> STR_10(CODE[11]), STR_9(CODE[9]), STR_8(CODE[10]), STR_7(CODE[6]), 
;!		 -> STR_6(CODE[7]), STR_5(CODE[23]), STR_4(CODE[15]), STR_3(CODE[19]), 
;!		 -> STR_2(CODE[2]), STR_1(CODE[37]), 
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
;!    transport_udp_process@response_229	PTR struct . size(1) Largest target is 32
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
;!    _RF24_getDynamicPayloadSize->_RF24_flush_rx
;!    _RF24_available->_RF24_get_status
;!    _RF24_get_status->_SPI_exchangeByte
;!    _internet_setChannel->_RF24_setChannel
;!    __$_logline_str->_Serial_write
;!    __$_logline_n_hex->_Serial_write
;!    __$_logline_int->___awmod
;!    ___awmod->___lbdiv
;!    __$_logline_hex->_Serial_write
;!    __$_logline_bin->_Serial_write
;!    _RF24_read_n_register->_SPI_exchangeByte
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
;!    _Serial_begin->___aldiv
;!    ___aldiv->___lmul
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
;!    _checkRF24Connection->_RF24_printDetails
;!    _RF24_printDetails->__$_logline_int
;!    _Serial_begin->___aldiv
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
;! (0) _main                                                11    11      0  308955
;!                                             51 BANK0      3     3      0
;!                      _Network_begin
;!                  _RF24_printDetails
;!                     _SPI_initialize
;!                       _Serial_begin
;!                       _Serial_write
;!                     __$_logline_str
;!                _checkRF24Connection
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
;! (1) _oxp_post                                            14    11      3   84564
;!                                             38 BANK0     13    10      3
;!                   _internet_process
;!                             _memcpy
;!                             _micros
;!                   _transport_udp_tx
;! ---------------------------------------------------------------------------------
;! (2) _micros                                               8     4      4       0
;!                                              0 COMMON     8     4      4
;! ---------------------------------------------------------------------------------
;! (2) _internet_process                                     2     2      0   61445
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
;! (3) _RF24_read                                            3     2      1    3950
;!                                              7 COMMON     3     2      1
;!               _RF24_read_n_register
;!                _RF24_write_register
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
;! (1) _checkRF24Connection                                  0     0      0   63296
;!                      _Network_begin
;!               _RF24_isChipConnected
;!                  _RF24_printDetails
;!                       _Serial_write
;!                     __$_logline_str
;! ---------------------------------------------------------------------------------
;! (2) _RF24_printDetails                                    6     6      0    4646
;!                                             12 COMMON     1     1      0
;!                                              9 BANK0      5     5      0
;!               _RF24_read_n_register
;!                 _RF24_read_register
;!                       _Serial_write
;!                     __$_logline_bin
;!                     __$_logline_hex
;!                     __$_logline_int
;!                   __$_logline_n_hex
;!                     __$_logline_str
;! ---------------------------------------------------------------------------------
;! (2) __$_logline_str                                       4     2      2    1762
;!                                              1 COMMON     4     2      2
;!                       _Serial_write
;! ---------------------------------------------------------------------------------
;! (3) __$_logline_n_hex                                     4     3      1     463
;!                                              1 COMMON     4     3      1
;!                       _Serial_write
;! ---------------------------------------------------------------------------------
;! (3) __$_logline_int                                       9     9      0    1342
;!                                              0 BANK0      9     9      0
;!                       _Serial_write
;!                            ___awdiv
;!                            ___awmod
;!                            ___lbdiv
;! ---------------------------------------------------------------------------------
;! (4) ___lbdiv                                              5     4      1     238
;!                                              0 COMMON     5     4      1
;! ---------------------------------------------------------------------------------
;! (4) ___awmod                                              7     3      4     448
;!                                              5 COMMON     7     3      4
;!                            ___lbdiv (ARG)
;! ---------------------------------------------------------------------------------
;! (4) ___awdiv                                              9     5      4     452
;!                                              0 COMMON     9     5      4
;! ---------------------------------------------------------------------------------
;! (3) __$_logline_hex                                       2     2      0      66
;!                                              1 COMMON     2     2      0
;!                       _Serial_write
;! ---------------------------------------------------------------------------------
;! (3) __$_logline_bin                                       5     5      0      92
;!                                              1 COMMON     5     5      0
;!                       _Serial_write
;! ---------------------------------------------------------------------------------
;! (3) _Serial_write                                         1     1      0      22
;!                                              0 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (4) _RF24_read_n_register                                 5     2      3     697
;!                                              1 COMMON     5     2      3
;!                   _SPI_exchangeByte
;! ---------------------------------------------------------------------------------
;! (2) _RF24_isChipConnected                                 0     0      0      67
;!                 _RF24_read_register
;! ---------------------------------------------------------------------------------
;! (2) _Network_begin                                        1     1      0   56799
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
;! (3) _RF24_setCRCLength                                    2     2      0    3059
;!                                              7 COMMON     2     2      0
;!                _RF24_write_register
;! ---------------------------------------------------------------------------------
;! (3) _RF24_setAutoAck                                      2     2      0    3037
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
;! (3) _RF24_getPALevel                                      1     0      1      67
;!                                              4 COMMON     1     0      1
;!                 _RF24_read_register
;! ---------------------------------------------------------------------------------
;! (3) _RF24_enableDynamicPayloads                           1     1      0    3082
;!                                              7 COMMON     1     1      0
;!                 _RF24_read_register
;!                _RF24_write_register
;! ---------------------------------------------------------------------------------
;! (3) _RF24_begin                                           2     2      0   30898
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
;! (4) _RF24_setRetries                                      5     4      1    3135
;!                                              7 COMMON     5     4      1
;!                _RF24_write_register
;! ---------------------------------------------------------------------------------
;! (3) _RF24_setPayloadSize                                  2     2      0    3147
;!                                              7 COMMON     2     2      0
;!                _RF24_write_register
;! ---------------------------------------------------------------------------------
;! (4) _RF24_setPALevel                                      4     4      0    3174
;!                                              7 COMMON     4     4      0
;!                 _RF24_read_register
;!                _RF24_write_register
;! ---------------------------------------------------------------------------------
;! (3) _RF24_setDataRate                                     3     3      0    3174
;!                                              7 COMMON     3     3      0
;!                 _RF24_read_register
;!                _RF24_write_register
;! ---------------------------------------------------------------------------------
;! (2) _RF24_setChannel                                      2     2      0    3037
;!                                              7 COMMON     2     2      0
;!                _RF24_write_register
;! ---------------------------------------------------------------------------------
;! (3) _RF24_setAddressWidth                                 2     2      0    3037
;!                                              7 COMMON     2     2      0
;!                _RF24_write_register
;! ---------------------------------------------------------------------------------
;! (4) _RF24_powerUp                                         1     1      0    3082
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
;! (1) _Serial_begin                                        14    10      4     861
;!                                             14 BANK0     14    10      4
;!                            ___aldiv
;!                             ___lmul
;! ---------------------------------------------------------------------------------
;! (2) ___lmul                                              12     4      8     244
;!                                              0 COMMON    12     4      8
;! ---------------------------------------------------------------------------------
;! (2) ___aldiv                                             15     7      8     452
;!                                             12 COMMON     1     1      0
;!                                              0 BANK0     14     6      8
;!                             ___lmul (ARG)
;! ---------------------------------------------------------------------------------
;! (1) _SPI_initialize                                       0     0      0       0
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
;!   _RF24_printDetails
;!     _RF24_read_n_register
;!       _SPI_exchangeByte
;!     _RF24_read_register
;!     _Serial_write
;!     __$_logline_bin
;!       _Serial_write
;!     __$_logline_hex
;!       _Serial_write
;!     __$_logline_int
;!       _Serial_write
;!       ___awdiv
;!       ___awmod
;!         ___lbdiv (ARG)
;!       ___lbdiv
;!     __$_logline_n_hex
;!       _Serial_write
;!     __$_logline_str
;!       _Serial_write
;!   _SPI_initialize
;!   _Serial_begin
;!     ___aldiv
;!       ___lmul (ARG)
;!     ___lmul
;!   _Serial_write
;!   __$_logline_str
;!   _checkRF24Connection
;!     _Network_begin
;!     _RF24_isChipConnected
;!       _RF24_read_register
;!     _RF24_printDetails
;!     _Serial_write
;!     __$_logline_str
;!   _internet_process
;!     _RF24_available
;!       _RF24_get_status
;!         _SPI_exchangeByte
;!     _RF24_getDynamicPayloadSize
;!       _RF24_flush_rx
;!       _RF24_read_register
;!     _RF24_read
;!       _RF24_read_n_register
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
;;		_RF24_printDetails
;;		_SPI_initialize
;;		_Serial_begin
;;		_Serial_write
;;		__$_logline_str
;;		_checkRF24Connection
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
	
l3636:	
	movlw	low(07Ah)
	movlb 1	; select bank1
	movwf	(153)^080h	;volatile
	line	39
	
l3638:	
	bcf	(1139/8)^080h,(1139)&7	;volatile
	line	40
	
l3640:	
	bcf	(1140/8)^080h,(1140)&7	;volatile
	line	41
	
l3642:	
	bsf	(1137/8)^080h,(1137)&7	;volatile
	line	42
	
l3644:	
	movlb 3	; select bank3
	clrf	(396)^0180h	;volatile
	line	43
	
l3646:	
	clrf	(397)^0180h	;volatile
	line	44
	
l3648:	
	clrf	(398)^0180h	;volatile
	line	46
	
l3650:	
	movlw	low(010h)
	fcall	_wait_init
	line	47
	
l3652:	
	fcall	_SPI_initialize
	line	48
	
l3654:	
	movlw	0
	movlb 0	; select bank0
	movwf	(Serial_begin@baudrate+3)
	movlw	0
	movwf	(Serial_begin@baudrate+2)
	movlw	025h
	movwf	(Serial_begin@baudrate+1)
	movlw	080h
	movwf	(Serial_begin@baudrate)

	fcall	_Serial_begin
	line	49
	
l3656:	
	fcall	_Network_begin
	line	50
	
l3658:	
	movlw	low(073h)
	fcall	_internet_setChannel
	line	51
	
l3660:	
	movlw	low(_network_pipe)
	movwf	(internet_setNetworkPipe@pipe)
	movlw	high(_network_pipe)
	movwf	(internet_setNetworkPipe@pipe+1)
	fcall	_internet_setNetworkPipe
	line	52
	
l3662:	
	movlw	low(0)
	fcall	_internet_setAddress
	line	53
	
l3664:	
	fcall	_RF24_printDetails
	line	55
	
l3666:	
	fcall	_checkRF24Connection
	line	56
	
l3668:	
	movlb 0	; select bank0
	bsf	(115/8),(115)&7	;volatile
	line	57
	
l3670:	
	movlw	low(((STR_1)|8000h))
	movwf	(__$_logline_str@string)
	movlw	high(((STR_1)|8000h))
	movwf	((__$_logline_str@string))+1
	fcall	__$_logline_str
	
l3672:	
	movlw	low(0Ah)
	fcall	_Serial_write
	line	58
	goto	l3684
	line	60
	
l3674:	
	fcall	_internet_process
	line	61
	
l3676:	
	movlw	low(((STR_2)|8000h))
	movwf	(__$_logline_str@string)
	movlw	high(((STR_2)|8000h))
	movwf	((__$_logline_str@string))+1
	fcall	__$_logline_str
	line	62
	
l3678:	
	fcall	_checkRF24Connection
	line	63
	
l3680:	
	movlw	1<<((116)&7)
	movlb 0	; select bank0
	xorwf	((116)/8),f
	line	64
	
l3682:	
	asmopt push
asmopt off
movlw  7
	movlb 0	; select bank0
movwf	((??_main+0)+0+1)
movlw	23
movwf	((??_main+0)+0)
	movlw	106
u2387:
decfsz	wreg
	goto	u2387
	decfsz	((??_main+0)+0),f
	goto	u2387
	decfsz	((??_main+0)+0+1),f
	goto	u2387
	nop
asmopt pop

	line	58
	
l3684:	
	movlb 0	; select bank0
	movf	((_isConfigerd)),w
	btfsc	status,2
	goto	u2331
	goto	u2330
u2331:
	goto	l3674
u2330:
	
l87:	
	line	66
	bsf	(116/8),(116)&7	;volatile
	line	67
	
l3686:	
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
	line	70
	
l88:	
	line	72
	fcall	_internet_process
	line	73
	
l3688:	
	line	74
	
l3690:	
	movlb 0	; select bank0
	bcf	(115/8),(115)&7	;volatile
	line	75
	
l3692:	
	fcall	_checkRF24Connection
	line	82
	
l3694:	
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
	line	83
	
l3696:	
	movlb 0	; select bank0
	btfss	(113/8),(113)&7	;volatile
	goto	u2341
	goto	u2340
u2341:
	goto	l88
u2340:
	line	85
	
l3698:	
	comf	0+(_props)+01h,w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(_props)+01h
	line	86
	
l3700:	
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
	goto	l88
	global	start
	ljmp	start
	callstack 0
	line	89
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
	
l3176:	
	movf	(wait_init@megaHertez),w
	fcall	_timerInit
	line	6
	
l824:	
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
	
l3102:	
	clrc
	rrf	(timerInit@mhz),f
	clrc
	rrf	(timerInit@mhz),f

	line	6
	
l3104:	
	clrf	(timerInit@prescaler)
	line	7
	goto	l3110
	line	9
	
l3106:	
	movlw	low(01h)
	movwf	(??_timerInit+0)+0
	movf	(??_timerInit+0)+0,w
	addwf	(timerInit@prescaler),f
	line	10
	
l3108:	
	clrc
	rrf	(timerInit@mhz),f

	line	7
	
l3110:	
	movf	((timerInit@mhz)),w
	btfsc	status,2
	goto	u1801
	goto	u1800
u1801:
	goto	l809
u1800:
	
l3112:	
	btfss	(timerInit@mhz),(0)&7
	goto	u1811
	goto	u1810
u1811:
	goto	l3106
u1810:
	
l809:	
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
	
l3114:	
	movf	(timerInit@prescaler),w
	movwf	(??_timerInit+0)+0
	movlw	01h
u1825:
	lsrf	(??_timerInit+0)+0,f
	decfsz	wreg,f
	goto	u1825
	btfsc	0+(??_timerInit+0)+0,0
	goto	u1831
	goto	u1830
	
u1831:
	movlb 0	; select bank0
	bsf	(197/8),(197)&7	;volatile
	goto	u1844
u1830:
	movlb 0	; select bank0
	bcf	(197/8),(197)&7	;volatile
u1844:
	line	33
	
l3116:	
	btfsc	(timerInit@prescaler),0
	goto	u1851
	goto	u1850
	
u1851:
	movlb 0	; select bank0
	bsf	(196/8),(196)&7	;volatile
	goto	u1864
u1850:
	movlb 0	; select bank0
	bcf	(196/8),(196)&7	;volatile
u1864:
	line	34
	
l3118:	
	bsf	(192/8),(192)&7	;volatile
	line	35
	
l3120:	
	clrf	(22)	;volatile
	clrf	(22+1)	;volatile
	line	40
	
l810:	
	return
	callstack 0
GLOBAL	__end_of_timerInit
	__end_of_timerInit:
	signat	_timerInit,4217
	global	_oxp_post

;; *************** function _oxp_post *****************
;; Defined at:
;;		line 157 in file "F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/app/src/main.c"
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
	line	157
global __ptext3
__ptext3:	;psect for function _oxp_post
psect	text3
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/app/src/main.c"
	line	157
	
_oxp_post:	
;incstack = 0
	callstack 2
; Regs used in _oxp_post: [wreg-fsr1h+status,2+status,0+pclath+cstack]
	movlb 0	; select bank0
	movwf	(oxp_post@destination)
	line	160
	
l3604:	
	movlw	(low(_buffer_tx|((0x1)<<8)))&0ffh
	movwf	(??_oxp_post+0)+0
	movf	(??_oxp_post+0)+0,w
	movwf	(oxp_post@packet)
	line	161
	
l3606:	
	movf	(oxp_post@packet),w
	addlw	06h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,2
	line	162
	
l3608:	
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
	line	163
	
l3610:	
	movf	(oxp_post@packet),w
	addlw	06h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	andlw	not (((1<<2)-1)<<0)
	iorlw	(01h & ((1<<2)-1))<<0
	movwf	indf1
	line	164
	
l3612:	
	movlb 1	; select bank1
	movf	0+(_OXPSTASTS)^080h+01h,w
	movlb 0	; select bank0
	movwf	(??_oxp_post+0)+0
	movf	(??_oxp_post+0)+0,w
	movlb 1	; select bank1
	movwf	0+(_OXPSTASTS)^080h+02h
	line	165
	
l3614:	
	bsf	(_OXPSTASTS)^080h,0
	line	166
	
l3616:	
	bcf	(_OXPSTASTS)^080h,1
	line	167
	
l3618:	
	movlw	low(01h)
	movlb 0	; select bank0
	movwf	(??_oxp_post+0)+0
	movf	(??_oxp_post+0)+0,w
	movlb 1	; select bank1
	addwf	0+(_OXPSTASTS)^080h+01h,f
	line	168
	
l3620:	
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
	line	170
	
l3622:	
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
	line	171
	
l3624:	
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
	line	172
	goto	l3628
	line	174
	
l3626:	
	fcall	_internet_process
	line	172
	
l3628:	
	fcall	_micros
	movlb 0	; select bank0
	movf	(oxp_post@timeoutTime+3),w
	subwf	(3+(?_micros)),w
	skipz
	goto	u2305
	movf	(oxp_post@timeoutTime+2),w
	subwf	(2+(?_micros)),w
	skipz
	goto	u2305
	movf	(oxp_post@timeoutTime+1),w
	subwf	(1+(?_micros)),w
	skipz
	goto	u2305
	movf	(oxp_post@timeoutTime),w
	subwf	(0+(?_micros)),w
u2305:
	skipnc
	goto	u2301
	goto	u2300
u2301:
	goto	l124
u2300:
	
l3630:	
	movlb 1	; select bank1
	btfss	(_OXPSTASTS)^080h,1
	goto	u2311
	goto	u2310
u2311:
	goto	l3626
u2310:
	
l124:	
	line	176
	movlb 1	; select bank1
	btfss	(_OXPSTASTS)^080h,1
	goto	u2321
	goto	u2320
u2321:
	goto	l126
u2320:
	line	178
	
l3632:	
	line	182
	
l126:	
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
	
l3098:	
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
	
l813:	
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
	
l3594:	
	goto	l3602
	line	18
	
l3596:	
	fcall	_RF24_getDynamicPayloadSize
	movlb 0	; select bank0
	movwf	(??_internet_process+0)+0
	movf	(??_internet_process+0)+0,w
	movwf	(internet_process@size)
	line	19
	
l3598:	
	movf	(internet_process@size),w
	movwf	(??_internet_process+0)+0
	movf	(??_internet_process+0)+0,w
	movwf	(RF24_read@len)
	movlw	(low(_buffer_rx|((0x1)<<8)))&0ffh
	fcall	_RF24_read
	line	20
	
l3600:	
	movlb 0	; select bank0
	movf	(internet_process@size),w
	movwf	(??_internet_process+0)+0
	movf	(??_internet_process+0)+0,w
	movwf	(internet_rx@size)
	movlw	(low(_buffer_rx|((0x1)<<8)))&0ffh
	fcall	_internet_rx
	line	15
	
l3602:	
	fcall	_RF24_available
	xorlw	low(0)&0ffh
	skipz
	goto	u2291
	goto	u2290
u2291:
	goto	l3596
u2290:
	line	22
	
l361:	
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
	
l3574:	
	movf	(internet_rx@payload),w
	movwf	(??_internet_rx+0)+0
	movf	(??_internet_rx+0)+0,w
	movwf	(internet_rx@packetHeader)
	line	40
	
l3576:	
	movf	(internet_rx@packetHeader),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movlb 1	; select bank1
	xorwf	(_node)^080h,w
	skipnz
	goto	u2281
	goto	u2280
u2281:
	goto	l3588
u2280:
	line	43
	
l3578:	
	movlb 0	; select bank0
	movf	(internet_rx@size),w
	movwf	(??_internet_rx+0)+0
	movf	(??_internet_rx+0)+0,w
	movwf	(internet_relay@size)
	movf	(internet_rx@payload),w
	fcall	_internet_relay
	goto	l371
	line	55
	
l3582:	
	movf	(internet_rx@size),w
	movwf	(??_internet_rx+0)+0
	movf	(??_internet_rx+0)+0,w
	movwf	(transport_udp_rx@size)
	movf	(internet_rx@payload),w
	fcall	_transport_udp_rx
	line	56
	goto	l371
	line	58
	
l3584:	
	movf	(internet_rx@size),w
	movwf	(??_internet_rx+0)+0
	movf	(??_internet_rx+0)+0,w
	movwf	(internet_config_rx@size)
	movf	(internet_rx@payload),w
	fcall	_internet_config_rx
	line	59
	goto	l371
	line	63
	
l3588:	
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
	goto	l3752
	goto	l371
	asmopt pop
	
l3752:	
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
	goto	l371
	xorlw	1^0	; case 1
	skipnz
	goto	l3582
	xorlw	2^1	; case 2
	skipnz
	goto	l371
	xorlw	3^2	; case 3
	skipnz
	goto	l3584
	goto	l371
	asmopt pop

	line	64
	
l371:	
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
	
l3566:	
	movf	(transport_udp_rx@payload),w
	movwf	(??_transport_udp_rx+0)+0
	movf	(??_transport_udp_rx+0)+0,w
	movwf	(transport_udp_rx@packetHeader)
	line	15
	
l3568:	
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
	
l432:	
	return
	callstack 0
GLOBAL	__end_of_transport_udp_rx
	__end_of_transport_udp_rx:
	signat	_transport_udp_rx,8313
	global	_transport_udp_process

;; *************** function _transport_udp_process *****************
;; Defined at:
;;		line 105 in file "F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/app/src/main.c"
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
	line	105
global __ptext8
__ptext8:	;psect for function _transport_udp_process
psect	text8
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/app/src/main.c"
	line	105
	
_transport_udp_process:	
;incstack = 0
	callstack 2
; Regs used in _transport_udp_process: [wreg-fsr1h+status,2+status,0+pclath+cstack]
	movlb 0	; select bank0
	movwf	(transport_udp_process@payload)
	line	108
	
l3488:	
		movlw	3
	xorwf	((transport_udp_process@port)),w
	btfss	status,2
	goto	u2201
	goto	u2200
u2201:
	goto	l104
u2200:
	line	111
	
l3490:	
	movlw	low(07h)
	subwf	(transport_udp_process@size),w
	skipnc
	goto	u2211
	goto	u2210
u2211:
	goto	l3494
u2210:
	goto	l104
	line	113
	
l3494:	
	movf	(transport_udp_process@payload),w
	movwf	(??_transport_udp_process+0)+0
	movf	(??_transport_udp_process+0)+0,w
	movwf	(transport_udp_process@packet)
	line	114
	
l3496:	
	movf	(transport_udp_process@packet),w
	addlw	06h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	andlw	(1<<2)-1
	xorlw	0
	skipz
	goto	u2221
	goto	u2220
u2221:
	goto	l3516
u2220:
	line	116
	
l3498:	
	movlw	(low(_buffer_tx|((0x1)<<8)))&0ffh
	movwf	(??_transport_udp_process+0)+0
	movf	(??_transport_udp_process+0)+0,w
	movwf	(transport_udp_process@response)
	line	117
	
l3500:	
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
	line	118
	
l3502:	
	movf	(transport_udp_process@response),w
	addlw	06h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,2
	line	119
	
l3504:	
	movf	(transport_udp_process@response),w
	addlw	06h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	andlw	not (((1<<2)-1)<<0)
	iorlw	(02h & ((1<<2)-1))<<0
	movwf	indf1
	line	120
	
l3506:	
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
	line	121
	
l3508:	
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
	line	122
	
l3510:	
	movlw	low(020h)
	movwf	(??_transport_udp_process+0)+0
	movf	(transport_udp_process@response),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_transport_udp_process+0)+0,w
	movwf	indf1
	line	123
	
l3512:	
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
	line	124
	
l3514:	
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
	line	125
	goto	l3546
	line	126
	
l3516:	
	movf	(transport_udp_process@packet),w
	addlw	06h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	andlw	(1<<2)-1
	xorlw	01h
	skipz
	goto	u2231
	goto	u2230
u2231:
	goto	l3546
u2230:
	line	128
	
l3518:	
	clrf	(transport_udp_process@i)
	goto	l3528
	line	130
	
l3520:	
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
	line	131
	
l3522:	
	movlw	low(04h)
	subwf	(transport_udp_process@prop),w
	skipnc
	goto	u2241
	goto	u2240
u2241:
	goto	l3526
u2240:
	line	132
	
l3524:	
	movf	0+(transport_udp_process@prop)+01h,w
	movwf	(??_transport_udp_process+0)+0
	lslf	(transport_udp_process@prop),w
	addlw	low(_props|((0x0)<<8)+01h)&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_transport_udp_process+0)+0,w
	movwf	indf1
	line	133
	
l3526:	
	movlw	low(01h)
	movwf	(??_transport_udp_process+0)+0
	movf	(??_transport_udp_process+0)+0,w
	addwf	(transport_udp_process@i),f
	
l3528:	
	movlb 1	; select bank1
	rrf	(_OXPSTASTS)^080h,w
	rrf	wreg,f
	andlw	(1<<4)-1
	movlb 0	; select bank0
	subwf	(transport_udp_process@i),w
	skipc
	goto	u2251
	goto	u2250
u2251:
	goto	l3520
u2250:
	line	134
	
l3530:	
	movlw	(low(_buffer_tx|((0x1)<<8)))&0ffh
	movwf	(??_transport_udp_process+0)+0
	movf	(??_transport_udp_process+0)+0,w
	movwf	(transport_udp_process@response_229)
	line	135
	
l3532:	
	movf	(transport_udp_process@packet),w
	addlw	05h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_transport_udp_process+0)+0
	movf	(transport_udp_process@response_229),w
	addlw	05h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_transport_udp_process+0)+0,w
	movwf	indf1
	line	136
	
l3534:	
	movf	(transport_udp_process@response_229),w
	addlw	06h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,2
	line	137
	
l3536:	
	movf	(transport_udp_process@response_229),w
	addlw	06h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	andlw	not (((1<<2)-1)<<0)
	iorlw	(02h & ((1<<2)-1))<<0
	movwf	indf1
	line	138
	
l3538:	
	movf	(transport_udp_process@packet),w
	addlw	02h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_transport_udp_process+0)+0
	movf	(transport_udp_process@response_229),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_transport_udp_process+0)+0,w
	movwf	indf1
	line	139
	
l3540:	
	movf	(transport_udp_process@packet),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	andlw	(1<<4)-1
	movwf	(??_transport_udp_process+0)+0
	movf	(transport_udp_process@response_229),w
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
	line	140
	
l3542:	
	movlw	low(020h)
	movwf	(??_transport_udp_process+0)+0
	movf	(transport_udp_process@response_229),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_transport_udp_process+0)+0,w
	movwf	indf1
	line	141
	
l3544:	
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
	line	143
	
l3546:	
	movlb 1	; select bank1
	btfss	(_OXPSTASTS)^080h,0
	goto	u2261
	goto	u2260
u2261:
	goto	l104
u2260:
	
l3548:	
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
	goto	u2271
	goto	u2270
u2271:
	goto	l104
u2270:
	line	145
	
l3550:	
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
	line	146
	
l3552:	
	movlb 1	; select bank1
	bcf	(_OXPSTASTS)^080h,0
	line	147
	
l3554:	
	bsf	(_OXPSTASTS)^080h,1
	line	151
	
l104:	
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
	
l3476:	
	movf	(transport_udp_tx@payload),w
	movwf	(??_transport_udp_tx+0)+0
	movf	(??_transport_udp_tx+0)+0,w
	movwf	(transport_udp_tx@packetHeader)
	line	6
	
l3478:	
	incf	(transport_udp_tx@packetHeader),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	incf	indf1,f
	line	7
	
l3480:	
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
	
l3482:	
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
	
l3484:	
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
	
l3486:	
	movf	(transport_udp_tx@size),w
	movwf	(??_transport_udp_tx+0)+0
	movf	(??_transport_udp_tx+0)+0,w
	movwf	(internet_tx@size)
	movf	(transport_udp_tx@payload),w
	fcall	_internet_tx
	line	11
	
l429:	
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
	
l3468:	
	movf	(internet_tx@payload),w
	movwf	(??_internet_tx+0)+0
	movf	(??_internet_tx+0)+0,w
	movwf	(internet_tx@packetHeader)
	line	33
	
l3470:	
	movlw	low(020h)
	movwf	(??_internet_tx+0)+0
	movf	(internet_tx@packetHeader),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_internet_tx+0)+0,w
	movwf	indf1
	line	34
	
l3472:	
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
	
l3474:	
	movf	(internet_tx@size),w
	movwf	(??_internet_tx+0)+0
	movf	(??_internet_tx+0)+0,w
	movwf	(internet_relay@size)
	movf	(internet_tx@payload),w
	fcall	_internet_relay
	line	36
	
l367:	
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
	
l3416:	
	movf	(internet_relay@payload),w
	movwf	(??_internet_relay+0)+0
	movf	(??_internet_relay+0)+0,w
	movwf	(internet_relay@packetHeader)
	line	69
	
l3418:	
	movlb 1	; select bank1
	movf	((_node)^080h),w
	btfss	status,2
	goto	u2161
	goto	u2160
u2161:
	goto	l3422
u2160:
	goto	l382
	line	76
	
l3422:	
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
	
l3424:	
	movf	(internet_relay@dstMask),w
	movlb 1	; select bank1
	subwf	0+(_node)^080h+01h,w
	skipnc
	goto	u2171
	goto	u2170
u2171:
	goto	l3454
u2170:
	
l3426:	
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
	goto	u2181
	goto	u2180
u2181:
	goto	l3454
u2180:
	line	80
	
l3428:	
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
	goto	u2191
	goto	u2190
u2191:
	goto	l3442
u2190:
	line	83
	
l3430:	
	movf	0+(_node)^080h+04h,w
	movwf	(??_internet_relay+0)+0
	movf	(??_internet_relay+0)+0,w
	movwf	(_networkInfo)^080h
	line	84
	
l3432:	
	movlw	low(_networkInfo)
	movwf	(RF24_openReadingPipe@address)
	movlw	high(_networkInfo)
	movwf	(RF24_openReadingPipe@address+1)
	movlw	low(0)
	fcall	_RF24_openReadingPipe
	line	85
	
l3434:	
	movlw	(low(_networkInfo|((0x0)<<8)))&0ffh
	fcall	_RF24_openWritingPipe
	line	86
	
l3436:	
	fcall	_RF24_stopListening
	line	87
	
l3438:	
	movlb 0	; select bank0
	movf	(internet_relay@size),w
	movwf	(??_internet_relay+0)+0
	movf	(??_internet_relay+0)+0,w
	movwf	(RF24_write@len)
	movf	(internet_relay@payload),w
	fcall	_RF24_write
	line	88
	
l3440:	
	movlw	low(((_BASE_PIPE)|8000h))
	movwf	(RF24_openReadingPipe@address)
	movlw	high(((_BASE_PIPE)|8000h))
	movwf	((RF24_openReadingPipe@address))+1
	movlw	low(0)
	fcall	_RF24_openReadingPipe
	line	89
	goto	l3466
	line	93
	
l3442:	
	movf	0+(_node)^080h+03h,w
	movwf	(??_internet_relay+0)+0
	movf	(??_internet_relay+0)+0,w
	movwf	(_networkInfo)^080h
	line	94
	
l3444:	
	movlw	low(_networkInfo)
	movwf	(RF24_openReadingPipe@address)
	movlw	high(_networkInfo)
	movwf	(RF24_openReadingPipe@address+1)
	movlw	low(0)
	fcall	_RF24_openReadingPipe
	line	95
	
l3446:	
	movlw	(low(_networkInfo|((0x0)<<8)))&0ffh
	fcall	_RF24_openWritingPipe
	line	96
	
l3448:	
	fcall	_RF24_stopListening
	line	97
	
l3450:	
	movlb 0	; select bank0
	movf	(internet_relay@size),w
	movwf	(??_internet_relay+0)+0
	movf	(??_internet_relay+0)+0,w
	movwf	(RF24_write@len)
	movf	(internet_relay@payload),w
	fcall	_RF24_write
	line	98
	
l3452:	
	movlw	low(((_BASE_PIPE)|8000h))
	movwf	(RF24_openReadingPipe@address)
	movlw	high(((_BASE_PIPE)|8000h))
	movwf	((RF24_openReadingPipe@address))+1
	movlw	low(0)
	fcall	_RF24_openReadingPipe
	goto	l3466
	line	104
	
l3454:	
	movlb 1	; select bank1
	movf	(_node)^080h,w
	movwf	(??_internet_relay+0)+0
	movf	(??_internet_relay+0)+0,w
	movwf	(_networkInfo)^080h
	line	105
	
l3456:	
	movlw	low(_networkInfo)
	movwf	(RF24_openReadingPipe@address)
	movlw	high(_networkInfo)
	movwf	(RF24_openReadingPipe@address+1)
	movlw	low(0)
	fcall	_RF24_openReadingPipe
	line	106
	
l3458:	
	movlw	(low(_networkInfo|((0x0)<<8)))&0ffh
	fcall	_RF24_openWritingPipe
	line	107
	
l3460:	
	fcall	_RF24_stopListening
	line	110
	
l3462:	
	movlb 0	; select bank0
	movf	(internet_relay@size),w
	movwf	(??_internet_relay+0)+0
	movf	(??_internet_relay+0)+0,w
	movwf	(RF24_write@len)
	movf	(internet_relay@payload),w
	fcall	_RF24_write
	line	112
	
l3464:	
	movlw	low(((_BASE_PIPE)|8000h))
	movwf	(RF24_openReadingPipe@address)
	movlw	high(((_BASE_PIPE)|8000h))
	movwf	((RF24_openReadingPipe@address))+1
	movlw	low(0)
	fcall	_RF24_openReadingPipe
	line	114
	
l3466:	
	fcall	_RF24_startListening
	line	115
	
l382:	
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
	
l2418:	
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
	goto	u1121
	goto	u1120
u1121:
	movlw	1
	goto	u1130
u1120:
	movlw	0
u1130:
	line	140
	
l398:	
	return
	callstack 0
GLOBAL	__end_of_internet_hasChild
	__end_of_internet_hasChild:
	signat	_internet_hasChild,4217
	global	_RF24_write

;; *************** function _RF24_write *****************
;; Defined at:
;;		line 192 in file "F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/rf24.c"
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
	line	192
global __ptext13
__ptext13:	;psect for function _RF24_write
psect	text13
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/rf24.c"
	line	192
	
_RF24_write:	
;incstack = 0
	callstack 7
; Regs used in _RF24_write: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	movwf	(RF24_write@buf)
	line	196
	
l3396:	
	movlb 0	; select bank0
	bcf	(117/8),(117)&7	;volatile
	line	197
	
l3398:	
	movlw	low(0A0h)
	fcall	_SPI_exchangeByte
	movwf	(??_RF24_write+0)+0
	movf	(??_RF24_write+0)+0,w
	movlb 0	; select bank0
	movwf	(_RF24_attr_status)
	line	198
	goto	l3404
	line	200
	
l3400:	
	movf	(RF24_write@buf),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	fcall	_SPI_exchangeByte
	
l3402:	
	movlw	low(01h)
	movwf	(??_RF24_write+0)+0
	movf	(??_RF24_write+0)+0,w
	addwf	(RF24_write@buf),f
	line	198
	
l3404:	
	movlw	01h
	subwf	(RF24_write@len),f
		incf	(((RF24_write@len))),w
	btfss	status,2
	goto	u2131
	goto	u2130
u2131:
	goto	l3400
u2130:
	
l644:	
	line	202
	movlb 0	; select bank0
	bsf	(117/8),(117)&7	;volatile
	line	204
	bsf	(118/8),(118)&7	;volatile
	line	205
	
l3406:	
	fcall	_RF24_get_status
	andlw	030h
	btfsc	status,2
	goto	u2141
	goto	u2140
u2141:
	goto	l3406
u2140:
	
l647:	
	line	210
	movlb 0	; select bank0
	bcf	(118/8),(118)&7	;volatile
	line	211
	
l3408:	
	movlw	low(070h)
	movwf	(??_RF24_write+0)+0
	movf	(??_RF24_write+0)+0,w
	movwf	(RF24_write_register@value)
	movlw	low(07h)
	fcall	_RF24_write_register
	line	214
	
l3410:	
	movlb 0	; select bank0
	btfss	(_RF24_attr_status),(4)&7
	goto	u2151
	goto	u2150
u2151:
	goto	l649
u2150:
	line	216
	
l3412:	
	fcall	_RF24_flush_tx
	line	220
	
l649:	
	return
	callstack 0
GLOBAL	__end_of_RF24_write
	__end_of_RF24_write:
	signat	_RF24_write,8313
	global	_RF24_stopListening

;; *************** function _RF24_stopListening *****************
;; Defined at:
;;		line 150 in file "F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/rf24.c"
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
	line	150
global __ptext14
__ptext14:	;psect for function _RF24_stopListening
psect	text14
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/rf24.c"
	line	150
	
_RF24_stopListening:	
;incstack = 0
	callstack 8
; Regs used in _RF24_stopListening: [wreg+status,2+status,0+pclath+cstack]
	line	152
	
l2424:	
	movlb 0	; select bank0
	bcf	(118/8),(118)&7	;volatile
	line	159
	
l2426:	
	movlw	low(0)
	fcall	_RF24_read_register
	andlw	0FEh
	movwf	(??_RF24_stopListening+0)+0
	movf	(??_RF24_stopListening+0)+0,w
	movwf	(RF24_write_register@value)
	movlw	low(0)
	fcall	_RF24_write_register
	line	160
	movlw	low(02h)
	fcall	_RF24_read_register
	iorlw	01h
	movwf	(??_RF24_stopListening+0)+0
	movf	(??_RF24_stopListening+0)+0,w
	movwf	(RF24_write_register@value)
	movlw	low(02h)
	fcall	_RF24_write_register
	line	161
	
l2428:	
	asmopt push
asmopt off
	movlw	173
u2397:
decfsz	wreg
	goto	u2397
	nop
asmopt pop

	line	162
	
l627:	
	return
	callstack 0
GLOBAL	__end_of_RF24_stopListening
	__end_of_RF24_stopListening:
	signat	_RF24_stopListening,89
	global	_RF24_openWritingPipe

;; *************** function _RF24_openWritingPipe *****************
;; Defined at:
;;		line 451 in file "F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/rf24.c"
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
	line	451
global __ptext15
__ptext15:	;psect for function _RF24_openWritingPipe
psect	text15
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/rf24.c"
	line	451
	
_RF24_openWritingPipe:	
;incstack = 0
	callstack 8
; Regs used in _RF24_openWritingPipe: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	movwf	(RF24_openWritingPipe@address)
	line	453
	
l2422:	
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
	line	454
	
l738:	
	return
	callstack 0
GLOBAL	__end_of_RF24_openWritingPipe
	__end_of_RF24_openWritingPipe:
	signat	_RF24_openWritingPipe,4217
	global	_internet_config_rx

;; *************** function _internet_config_rx *****************
;; Defined at:
;;		line 207 in file "F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/app/src/main.c"
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
	line	207
global __ptext16
__ptext16:	;psect for function _internet_config_rx
psect	text16
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/app/src/main.c"
	line	207
	
_internet_config_rx:	
;incstack = 0
	callstack 5
; Regs used in _internet_config_rx: [wreg-fsr1h+status,2+status,0+pclath+cstack]
	movlb 0	; select bank0
	movwf	(internet_config_rx@payload)
	line	209
	
l3558:	
	movf	(internet_config_rx@payload),w
	movwf	(??_internet_config_rx+0)+0
	movf	(??_internet_config_rx+0)+0,w
	movwf	(internet_config_rx@confPacket)
	line	210
	
l3560:	
	movf	(internet_config_rx@confPacket),w
	addlw	05h
	movwf	(internet_setNetworkPipe@pipe)
	movlw	0x1

	movwf	(internet_setNetworkPipe@pipe+1)
	fcall	_internet_setNetworkPipe
	line	211
	
l3562:	
	movlb 0	; select bank0
	movf	(internet_config_rx@confPacket),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	fcall	_internet_setAddress
	line	212
	
l3564:	
	movlb 0	; select bank0
	clrf	(_isConfigerd)
	incf	(_isConfigerd),f
	line	213
	
l138:	
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
	
l2542:	
	movf	(internet_setAddress@address),w
	movwf	(??_internet_setAddress+0)+0
	movf	(??_internet_setAddress+0)+0,w
	movlb 1	; select bank1
	movwf	(_node)^080h
	line	130
	
l2544:	
	movlb 0	; select bank0
	movf	(internet_setAddress@address),w
	fcall	_internet_calculateMask
	movlb 0	; select bank0
	movwf	(??_internet_setAddress+0)+0
	movf	(??_internet_setAddress+0)+0,w
	movlb 1	; select bank1
	movwf	0+(_node)^080h+01h
	line	131
	
l2546:	
	movf	0+(_node)^080h+01h,w
	addlw	01h
	movlb 0	; select bank0
	movwf	(??_internet_setAddress+0)+0
	movf	(??_internet_setAddress+0)+0,w
	movlb 1	; select bank1
	movwf	0+(_node)^080h+02h
	line	132
	
l2548:	
	movf	0+(_node)^080h+02h,w
	movlb 0	; select bank0
	movwf	(??_internet_setAddress+0)+0
	movlw	01h
u1225:
	lslf	(??_internet_setAddress+0)+0,f
	decfsz	wreg,f
	goto	u1225
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
	
l2550:	
	movf	0+(_node)^080h+02h,w
	movlb 0	; select bank0
	movwf	(??_internet_setAddress+0)+0
	movlw	01h
u1235:
	lslf	(??_internet_setAddress+0)+0,f
	decfsz	wreg,f
	goto	u1235
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
	
l2552:	
	movlw	low(_networkInfo)
	movwf	(internet_setNetworkPipe@pipe)
	movlw	high(_networkInfo)
	movwf	(internet_setNetworkPipe@pipe+1)
	fcall	_internet_setNetworkPipe
	line	135
	
l395:	
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
	
l2524:	
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
	
l2526:	
	movlb 1	; select bank1
	movf	(_node)^080h,w
	movlb 0	; select bank0
	movwf	(??_internet_setNetworkPipe+0)+0
	movf	(??_internet_setNetworkPipe+0)+0,w
	movlb 1	; select bank1
	movwf	(_networkInfo)^080h
	line	27
	
l2528:	
	movlw	low(_networkInfo)
	movwf	(RF24_openReadingPipe@address)
	movlw	high(_networkInfo)
	movwf	(RF24_openReadingPipe@address+1)
	movlw	low(01h)
	fcall	_RF24_openReadingPipe
	line	28
	
l364:	
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
	
l2506:	
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
	goto	l2514
	line	14
	
l2508:	
	movf	(memcpy@s),w
	movwf	fsr1l
	movf	(memcpy@s+1),w
	movwf	fsr1h

	movf	indf1,w
	movwf	(??_memcpy+0)+0
	movf	(??_memcpy+0)+0,w
	movwf	(memcpy@tmp)
	
l2510:	
	movlw	01h
	addwf	(memcpy@s),f
	movlw	0
	addwfc	(memcpy@s+1),f
	line	15
	
l2512:	
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
	
l2514:	
	movlw	01h
	subwf	(memcpy@n),f
	movlw	0
	subwfb	(memcpy@n+1),f
		incf	(((memcpy@n))),w
	skipz
	goto	u1211
	incf	(((memcpy@n+1))),w
	btfss	status,2
	goto	u1211
	goto	u1210
u1211:
	goto	l2508
u1210:
	line	18
	
l1302:	
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
	
l2406:	
	clrf	(internet_calculateMask@mask)
	line	119
	goto	l2412
	line	121
	
l2408:	
	setc
	rlf	(internet_calculateMask@mask),f
	line	122
	
l2410:	
	clrc
	rrf	(internet_calculateMask@address),f

	line	119
	
l2412:	
	movlw	low(02h)
	subwf	(internet_calculateMask@address),w
	skipnc
	goto	u1111
	goto	u1110
u1111:
	goto	l2408
u1110:
	line	124
	
l2414:	
	movf	(internet_calculateMask@mask),w
	line	125
	
l392:	
	return
	callstack 0
GLOBAL	__end_of_internet_calculateMask
	__end_of_internet_calculateMask:
	signat	_internet_calculateMask,4217
	global	_RF24_read

;; *************** function _RF24_read *****************
;; Defined at:
;;		line 285 in file "F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/rf24.c"
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
	line	285
global __ptext21
__ptext21:	;psect for function _RF24_read
psect	text21
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/rf24.c"
	line	285
	
_RF24_read:	
;incstack = 0
	callstack 9
; Regs used in _RF24_read: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	movwf	(RF24_read@buf)
	line	289
	
l3570:	
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
	line	291
	
l3572:	
	movlw	low(040h)
	movwf	(??_RF24_read+0)+0
	movf	(??_RF24_read+0)+0,w
	movwf	(RF24_write_register@value)
	movlw	low(07h)
	fcall	_RF24_write_register
	line	292
	
l673:	
	return
	callstack 0
GLOBAL	__end_of_RF24_read
	__end_of_RF24_read:
	signat	_RF24_read,8313
	global	_RF24_getDynamicPayloadSize

;; *************** function _RF24_getDynamicPayloadSize *****************
;; Defined at:
;;		line 258 in file "F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/rf24.c"
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
psect	text22,local,class=CODE,delta=2,merge=1,group=1
	line	258
global __ptext22
__ptext22:	;psect for function _RF24_getDynamicPayloadSize
psect	text22
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/rf24.c"
	line	258
	
_RF24_getDynamicPayloadSize:	
;incstack = 0
	callstack 8
; Regs used in _RF24_getDynamicPayloadSize: [wreg+status,2+status,0+pclath+cstack]
	line	260
	
l2808:	
	movlw	low(060h)
	fcall	_RF24_read_register
	movwf	(??_RF24_getDynamicPayloadSize+0)+0
	movf	(??_RF24_getDynamicPayloadSize+0)+0,w
	movwf	(RF24_getDynamicPayloadSize@result)
	line	262
	
l2810:	
	movlw	low(021h)
	subwf	(RF24_getDynamicPayloadSize@result),w
	skipc
	goto	u1631
	goto	u1630
u1631:
	goto	l2820
u1630:
	line	264
	
l2812:	
	fcall	_RF24_flush_rx
	line	265
	
l2814:	
	asmopt push
asmopt off
movlw	11
movwf	((??_RF24_getDynamicPayloadSize+0)+0)
	movlw	98
u2407:
decfsz	wreg
	goto	u2407
	decfsz	((??_RF24_getDynamicPayloadSize+0)+0),f
	goto	u2407
	nop2
asmopt pop

	line	266
	
l2816:	
	movlw	low(0)
	goto	l666
	line	268
	
l2820:	
	movf	(RF24_getDynamicPayloadSize@result),w
	line	269
	
l666:	
	return
	callstack 0
GLOBAL	__end_of_RF24_getDynamicPayloadSize
	__end_of_RF24_getDynamicPayloadSize:
	signat	_RF24_getDynamicPayloadSize,89
	global	_RF24_available

;; *************** function _RF24_available *****************
;; Defined at:
;;		line 271 in file "F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/rf24.c"
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
psect	text23,local,class=CODE,delta=2,merge=1,group=1
	line	271
global __ptext23
__ptext23:	;psect for function _RF24_available
psect	text23
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/rf24.c"
	line	271
	
_RF24_available:	
;incstack = 0
	callstack 9
; Regs used in _RF24_available: [wreg+status,2+status,0+pclath+cstack]
	line	274
	
l2848:	
	fcall	_RF24_get_status
	lsrf	wreg,f
	andlw	07h
	movwf	(??_RF24_available+0)+0
	movf	(??_RF24_available+0)+0,w
	movwf	(RF24_available@pipe)
	line	275
	
l2850:	
	movlw	low(06h)
	subwf	(RF24_available@pipe),w
	skipc
	goto	u1651
	goto	u1650
u1651:
	goto	l2856
u1650:
	line	276
	
l2852:	
	movlw	low(0)
	goto	l670
	line	282
	
l2856:	
	movlw	low(01h)
	line	283
	
l670:	
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
psect	text24,local,class=CODE,delta=2,merge=1,group=1
	line	50
global __ptext24
__ptext24:	;psect for function _RF24_get_status
psect	text24
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/rf24.c"
	line	50
	
_RF24_get_status:	
;incstack = 0
	callstack 8
; Regs used in _RF24_get_status: [wreg+pclath+cstack]
	line	52
	
l2386:	
	movlb 0	; select bank0
	bcf	(117/8),(117)&7	;volatile
	line	53
	
l2388:	
	movlw	low(0FFh)
	fcall	_SPI_exchangeByte
	movwf	(??_RF24_get_status+0)+0
	movf	(??_RF24_get_status+0)+0,w
	movlb 0	; select bank0
	movwf	(_RF24_attr_status)
	line	54
	
l2390:	
	bsf	(117/8),(117)&7	;volatile
	line	55
	
l2392:	
	movf	(_RF24_attr_status),w
	line	56
	
l608:	
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
psect	text25,local,class=CODE,delta=2,merge=1,group=1
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/internet.c"
	line	9
global __ptext25
__ptext25:	;psect for function _internet_setChannel
psect	text25
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/internet.c"
	line	9
	
_internet_setChannel:	
;incstack = 0
	callstack 10
; Regs used in _internet_setChannel: [wreg+status,2+status,0+pclath+cstack]
	movwf	(internet_setChannel@channel)
	line	11
	
l3222:	
	movf	(internet_setChannel@channel),w
	fcall	_RF24_setChannel
	line	12
	
l355:	
	return
	callstack 0
GLOBAL	__end_of_internet_setChannel
	__end_of_internet_setChannel:
	signat	_internet_setChannel,4217
	global	_checkRF24Connection

;; *************** function _checkRF24Connection *****************
;; Defined at:
;;		line 90 in file "F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/app/src/main.c"
;; Parameters:    Size  Location     Type
;;		None
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
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 7
;; This function calls:
;;		_Network_begin
;;		_RF24_isChipConnected
;;		_RF24_printDetails
;;		_Serial_write
;;		__$_logline_str
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text26,local,class=CODE,delta=2,merge=1,group=0
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/app/src/main.c"
	line	90
global __ptext26
__ptext26:	;psect for function _checkRF24Connection
psect	text26
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/app/src/main.c"
	line	90
	
_checkRF24Connection:	
;incstack = 0
	callstack 8
; Regs used in _checkRF24Connection: [wreg-fsr1h+status,2+status,0+pclath+cstack]
	line	92
	
l3224:	
	fcall	_RF24_isChipConnected
	xorlw	low(0)&0ffh
	skipz
	goto	u2021
	goto	u2020
u2021:
	goto	l99
u2020:
	line	95
	
l3226:	
	movlw	low(((STR_3)|8000h))
	movwf	(__$_logline_str@string)
	movlw	high(((STR_3)|8000h))
	movwf	((__$_logline_str@string))+1
	fcall	__$_logline_str
	
l3228:	
	movlw	low(0Ah)
	fcall	_Serial_write
	line	96
	
l3230:	
	fcall	_RF24_isChipConnected
	xorlw	low(0)&0ffh
	skipnz
	goto	u2031
	goto	u2030
u2031:
	goto	l3230
u2030:
	line	98
	
l3232:	
	movlw	low(((STR_4)|8000h))
	movwf	(__$_logline_str@string)
	movlw	high(((STR_4)|8000h))
	movwf	((__$_logline_str@string))+1
	fcall	__$_logline_str
	
l3234:	
	movlw	low(0Ah)
	fcall	_Serial_write
	line	99
	
l3236:	
	fcall	_Network_begin
	line	100
	
l3238:	
	fcall	_RF24_printDetails
	line	103
	
l99:	
	return
	callstack 0
GLOBAL	__end_of_checkRF24Connection
	__end_of_checkRF24Connection:
	signat	_checkRF24Connection,89
	global	_RF24_printDetails

;; *************** function _RF24_printDetails *****************
;; Defined at:
;;		line 481 in file "F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/rf24.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  buffer          5    9[BANK0 ] unsigned char [5]
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
;;      Locals:         0       5       0       0
;;      Temps:          1       0       0       0
;;      Totals:         1       5       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		_RF24_read_n_register
;;		_RF24_read_register
;;		_Serial_write
;;		__$_logline_bin
;;		__$_logline_hex
;;		__$_logline_int
;;		__$_logline_n_hex
;;		__$_logline_str
;; This function is called by:
;;		_main
;;		_checkRF24Connection
;; This function uses a non-reentrant model
;;
psect	text27,local,class=CODE,delta=2,merge=1,group=1
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/rf24.c"
	line	481
global __ptext27
__ptext27:	;psect for function _RF24_printDetails
psect	text27
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/rf24.c"
	line	481
	
_RF24_printDetails:	
;incstack = 0
	callstack 10
; Regs used in _RF24_printDetails: [wreg-fsr1h+status,2+status,0+pclath+cstack]
	line	484
	
l2978:	
	movlw	low(((STR_5)|8000h))
	movwf	(__$_logline_str@string)
	movlw	high(((STR_5)|8000h))
	movwf	((__$_logline_str@string))+1
	fcall	__$_logline_str
	
l2980:	
	movlw	low(0Ah)
	fcall	_Serial_write
	line	485
	
l2982:	
	movlw	low(((STR_6)|8000h))
	movwf	(__$_logline_str@string)
	movlw	high(((STR_6)|8000h))
	movwf	((__$_logline_str@string))+1
	fcall	__$_logline_str
	movlw	low(03Dh)
	fcall	_Serial_write
	movlw	low(0)
	fcall	_RF24_read_register
	fcall	__$_logline_bin
	movlw	low(0Ah)
	fcall	_Serial_write
	line	486
	
l2984:	
	movlw	low(((STR_7)|8000h))
	movwf	(__$_logline_str@string)
	movlw	high(((STR_7)|8000h))
	movwf	((__$_logline_str@string))+1
	fcall	__$_logline_str
	
l2986:	
	movlw	low(03Dh)
	fcall	_Serial_write
	
l2988:	
	movlw	low(01h)
	fcall	_RF24_read_register
	fcall	__$_logline_bin
	
l2990:	
	movlw	low(0Ah)
	fcall	_Serial_write
	line	487
	movlw	low(((STR_8)|8000h))
	movwf	(__$_logline_str@string)
	movlw	high(((STR_8)|8000h))
	movwf	((__$_logline_str@string))+1
	fcall	__$_logline_str
	
l2992:	
	movlw	low(03Dh)
	fcall	_Serial_write
	
l2994:	
	movlw	low(02h)
	fcall	_RF24_read_register
	fcall	__$_logline_bin
	
l2996:	
	movlw	low(0Ah)
	fcall	_Serial_write
	line	488
	
l2998:	
	movlw	low(((STR_9)|8000h))
	movwf	(__$_logline_str@string)
	movlw	high(((STR_9)|8000h))
	movwf	((__$_logline_str@string))+1
	fcall	__$_logline_str
	movlw	low(03Dh)
	fcall	_Serial_write
	movlw	low(03h)
	fcall	_RF24_read_register
	fcall	__$_logline_int
	movlw	low(0Ah)
	fcall	_Serial_write
	line	489
	
l3000:	
	movlw	low(((STR_10)|8000h))
	movwf	(__$_logline_str@string)
	movlw	high(((STR_10)|8000h))
	movwf	((__$_logline_str@string))+1
	fcall	__$_logline_str
	
l3002:	
	movlw	low(03Dh)
	fcall	_Serial_write
	
l3004:	
	movlw	low(04h)
	fcall	_RF24_read_register
	fcall	__$_logline_bin
	
l3006:	
	movlw	low(0Ah)
	fcall	_Serial_write
	line	490
	movlw	low(((STR_11)|8000h))
	movwf	(__$_logline_str@string)
	movlw	high(((STR_11)|8000h))
	movwf	((__$_logline_str@string))+1
	fcall	__$_logline_str
	
l3008:	
	movlw	low(03Dh)
	fcall	_Serial_write
	
l3010:	
	movlw	low(05h)
	fcall	_RF24_read_register
	fcall	__$_logline_int
	
l3012:	
	movlw	low(0Ah)
	fcall	_Serial_write
	line	491
	
l3014:	
	movlw	low(((STR_12)|8000h))
	movwf	(__$_logline_str@string)
	movlw	high(((STR_12)|8000h))
	movwf	((__$_logline_str@string))+1
	fcall	__$_logline_str
	movlw	low(03Dh)
	fcall	_Serial_write
	movlw	low(06h)
	fcall	_RF24_read_register
	fcall	__$_logline_bin
	movlw	low(0Ah)
	fcall	_Serial_write
	line	492
	
l3016:	
	movlw	low(((STR_13)|8000h))
	movwf	(__$_logline_str@string)
	movlw	high(((STR_13)|8000h))
	movwf	((__$_logline_str@string))+1
	fcall	__$_logline_str
	
l3018:	
	movlw	low(03Dh)
	fcall	_Serial_write
	
l3020:	
	movlw	low(07h)
	fcall	_RF24_read_register
	fcall	__$_logline_bin
	
l3022:	
	movlw	low(0Ah)
	fcall	_Serial_write
	line	493
	movlw	low(((STR_14)|8000h))
	movwf	(__$_logline_str@string)
	movlw	high(((STR_14)|8000h))
	movwf	((__$_logline_str@string))+1
	fcall	__$_logline_str
	
l3024:	
	movlw	low(03Dh)
	fcall	_Serial_write
	
l3026:	
	movlw	low(08h)
	fcall	_RF24_read_register
	fcall	__$_logline_bin
	
l3028:	
	movlw	low(0Ah)
	fcall	_Serial_write
	line	494
	
l3030:	
	movlw	low(RF24_printDetails@buffer)
	movwf	(RF24_read_n_register@buf)
	movlw	high(RF24_printDetails@buffer)
	movwf	(RF24_read_n_register@buf+1)
	movlw	low(05h)
	movwf	(??_RF24_printDetails+0)+0
	movf	(??_RF24_printDetails+0)+0,w
	movwf	(RF24_read_n_register@len)
	movlw	low(0Ah)
	fcall	_RF24_read_n_register
	line	495
	
l3032:	
	movlw	low(((STR_15)|8000h))
	movwf	(__$_logline_str@string)
	movlw	high(((STR_15)|8000h))
	movwf	((__$_logline_str@string))+1
	fcall	__$_logline_str
	
l3034:	
	movlw	low(03Dh)
	fcall	_Serial_write
	
l3036:	
	movlw	low(05h)
	movwf	(??_RF24_printDetails+0)+0
	movf	(??_RF24_printDetails+0)+0,w
	movwf	(__$_logline_n_hex@n)
	movlw	(low(RF24_printDetails@buffer|((0x0)<<8)))&0ffh
	fcall	__$_logline_n_hex
	
l3038:	
	movlw	low(0Ah)
	fcall	_Serial_write
	line	496
	
l3040:	
	movlw	low(RF24_printDetails@buffer)
	movwf	(RF24_read_n_register@buf)
	movlw	high(RF24_printDetails@buffer)
	movwf	(RF24_read_n_register@buf+1)
	movlw	low(05h)
	movwf	(??_RF24_printDetails+0)+0
	movf	(??_RF24_printDetails+0)+0,w
	movwf	(RF24_read_n_register@len)
	movlw	low(0Bh)
	fcall	_RF24_read_n_register
	line	497
	
l3042:	
	movlw	low(((STR_16)|8000h))
	movwf	(__$_logline_str@string)
	movlw	high(((STR_16)|8000h))
	movwf	((__$_logline_str@string))+1
	fcall	__$_logline_str
	
l3044:	
	movlw	low(03Dh)
	fcall	_Serial_write
	
l3046:	
	movlw	low(05h)
	movwf	(??_RF24_printDetails+0)+0
	movf	(??_RF24_printDetails+0)+0,w
	movwf	(__$_logline_n_hex@n)
	movlw	(low(RF24_printDetails@buffer|((0x0)<<8)))&0ffh
	fcall	__$_logline_n_hex
	
l3048:	
	movlw	low(0Ah)
	fcall	_Serial_write
	line	498
	
l3050:	
	movlw	low(((STR_17)|8000h))
	movwf	(__$_logline_str@string)
	movlw	high(((STR_17)|8000h))
	movwf	((__$_logline_str@string))+1
	fcall	__$_logline_str
	movlw	low(03Dh)
	fcall	_Serial_write
	
l3052:	
	movlw	low(0Ch)
	fcall	_RF24_read_register
	fcall	__$_logline_hex
	
l3054:	
	movlw	low(0Ah)
	fcall	_Serial_write
	line	499
	movlw	low(((STR_18)|8000h))
	movwf	(__$_logline_str@string)
	movlw	high(((STR_18)|8000h))
	movwf	((__$_logline_str@string))+1
	fcall	__$_logline_str
	
l3056:	
	movlw	low(03Dh)
	fcall	_Serial_write
	
l3058:	
	movlw	low(0Dh)
	fcall	_RF24_read_register
	fcall	__$_logline_hex
	movlw	low(0Ah)
	fcall	_Serial_write
	line	500
	
l3060:	
	movlw	low(((STR_19)|8000h))
	movwf	(__$_logline_str@string)
	movlw	high(((STR_19)|8000h))
	movwf	((__$_logline_str@string))+1
	fcall	__$_logline_str
	
l3062:	
	movlw	low(03Dh)
	fcall	_Serial_write
	movlw	low(0Eh)
	fcall	_RF24_read_register
	fcall	__$_logline_hex
	
l3064:	
	movlw	low(0Ah)
	fcall	_Serial_write
	line	501
	
l3066:	
	movlw	low(((STR_20)|8000h))
	movwf	(__$_logline_str@string)
	movlw	high(((STR_20)|8000h))
	movwf	((__$_logline_str@string))+1
	fcall	__$_logline_str
	movlw	low(03Dh)
	fcall	_Serial_write
	
l3068:	
	movlw	low(0Fh)
	fcall	_RF24_read_register
	fcall	__$_logline_hex
	
l3070:	
	movlw	low(0Ah)
	fcall	_Serial_write
	line	502
	
l3072:	
	movlw	low(RF24_printDetails@buffer)
	movwf	(RF24_read_n_register@buf)
	movlw	high(RF24_printDetails@buffer)
	movwf	(RF24_read_n_register@buf+1)
	movlw	low(05h)
	movwf	(??_RF24_printDetails+0)+0
	movf	(??_RF24_printDetails+0)+0,w
	movwf	(RF24_read_n_register@len)
	movlw	low(010h)
	fcall	_RF24_read_n_register
	line	503
	
l3074:	
	movlw	low(((STR_21)|8000h))
	movwf	(__$_logline_str@string)
	movlw	high(((STR_21)|8000h))
	movwf	((__$_logline_str@string))+1
	fcall	__$_logline_str
	
l3076:	
	movlw	low(03Dh)
	fcall	_Serial_write
	
l3078:	
	movlw	low(05h)
	movwf	(??_RF24_printDetails+0)+0
	movf	(??_RF24_printDetails+0)+0,w
	movwf	(__$_logline_n_hex@n)
	movlw	(low(RF24_printDetails@buffer|((0x0)<<8)))&0ffh
	fcall	__$_logline_n_hex
	
l3080:	
	movlw	low(0Ah)
	fcall	_Serial_write
	line	504
	
l3082:	
	movlw	low(((STR_22)|8000h))
	movwf	(__$_logline_str@string)
	movlw	high(((STR_22)|8000h))
	movwf	((__$_logline_str@string))+1
	fcall	__$_logline_str
	movlw	low(0Ah)
	fcall	_Serial_write
	line	505
	
l753:	
	return
	callstack 0
GLOBAL	__end_of_RF24_printDetails
	__end_of_RF24_printDetails:
	signat	_RF24_printDetails,89
	global	__$_logline_str

;; *************** function __$_logline_str *****************
;; Defined at:
;;		line 5 in file "F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/logline.c"
;; Parameters:    Size  Location     Type
;;  string          2    1[COMMON] PTR unsigned char 
;;		 -> STR_22(23), STR_21(3), STR_20(6), STR_19(6), 
;;		 -> STR_18(6), STR_17(6), STR_16(6), STR_15(6), 
;;		 -> STR_14(11), STR_13(7), STR_12(9), STR_11(6), 
;;		 -> STR_10(11), STR_9(9), STR_8(10), STR_7(6), 
;;		 -> STR_6(7), STR_5(23), STR_4(15), STR_3(19), 
;;		 -> STR_2(2), STR_1(37), 
;; Auto vars:     Size  Location     Type
;;  limit           1    4[COMMON] unsigned char 
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
;;      Temps:          1       0       0       0
;;      Totals:         4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_Serial_write
;; This function is called by:
;;		_main
;;		_checkRF24Connection
;;		_RF24_printDetails
;; This function uses a non-reentrant model
;;
psect	text28,local,class=CODE,delta=2,merge=1,group=1
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/logline.c"
	line	5
global __ptext28
__ptext28:	;psect for function __$_logline_str
psect	text28
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/logline.c"
	line	5
	
__$_logline_str:	
;incstack = 0
	callstack 11
; Regs used in __$_logline_str: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	7
	
l2798:	
	movlw	low(064h)
	movwf	(??__$_logline_str+0)+0
	movf	(??__$_logline_str+0)+0,w
	movwf	(__$_logline_str@limit)
	line	8
	goto	l2804
	line	10
	
l2800:	
	movf	(__$_logline_str@string),w
	movwf	fsr0l
	movf	((__$_logline_str@string+1)),w
	movwf	fsr0h
	movf	indf0,w ;code access
	fcall	_Serial_write
	line	11
	
l2802:	
	movlw	01h
	addwf	(__$_logline_str@string),f
	movlw	0
	addwfc	(__$_logline_str@string+1),f
	line	8
	
l2804:	
	movf	(__$_logline_str@string),w
	movwf	fsr0l
	movf	((__$_logline_str@string+1)),w
	movwf	fsr0h
	moviw	fsr0++
	btfsc	status,2
	goto	u1611
	goto	u1610
u1611:
	goto	l452
u1610:
	
l2806:	
	movlw	01h
	subwf	(__$_logline_str@limit),f
		incf	(((__$_logline_str@limit))),w
	btfss	status,2
	goto	u1621
	goto	u1620
u1621:
	goto	l2800
u1620:
	line	13
	
l452:	
	return
	callstack 0
GLOBAL	__end_of__$_logline_str
	__end_of__$_logline_str:
	signat	__$_logline_str,4217
	global	__$_logline_n_hex

;; *************** function __$_logline_n_hex *****************
;; Defined at:
;;		line 43 in file "F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/logline.c"
;; Parameters:    Size  Location     Type
;;  ptr             1    wreg     PTR unsigned char 
;;		 -> RF24_printDetails@buffer(5), 
;;  n               1    1[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  ptr             1    4[COMMON] PTR unsigned char 
;;		 -> RF24_printDetails@buffer(5), 
;;  v               1    3[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         1       0       0       0
;;      Locals:         2       0       0       0
;;      Temps:          1       0       0       0
;;      Totals:         4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_Serial_write
;; This function is called by:
;;		_RF24_printDetails
;; This function uses a non-reentrant model
;;
psect	text29,local,class=CODE,delta=2,merge=1,group=1
	line	43
global __ptext29
__ptext29:	;psect for function __$_logline_n_hex
psect	text29
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/logline.c"
	line	43
	
__$_logline_n_hex:	
;incstack = 0
	callstack 10
; Regs used in __$_logline_n_hex: [wreg-fsr1h+status,2+status,0+pclath+cstack]
	movwf	(__$_logline_n_hex@ptr)
	line	45
	
l2952:	
	movf	(__$_logline_n_hex@n),w
	addlw	-1
	movwf	(??__$_logline_n_hex+0)+0
	movf	(??__$_logline_n_hex+0)+0,w
	addwf	(__$_logline_n_hex@ptr),f
	line	46
	goto	l2964
	line	48
	
l2954:	
	movf	(__$_logline_n_hex@ptr),w
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	movwf	(??__$_logline_n_hex+0)+0
	movf	(??__$_logline_n_hex+0)+0,w
	movwf	(__$_logline_n_hex@v)
	line	49
	
l2956:	
	movf	(__$_logline_n_hex@v),w
	movwf	(??__$_logline_n_hex+0)+0
	movlw	04h
u1755:
	lsrf	(??__$_logline_n_hex+0)+0,f
	decfsz	wreg,f
	goto	u1755
	movf	0+(??__$_logline_n_hex+0)+0,w
	addlw	low(((_LOGLINE_CONVERSION_TABLE)|8000h))
	movwf	fsr0l
	movlw	high(((_LOGLINE_CONVERSION_TABLE)|8000h))
	skipnc
	addlw	1
	movwf	fsr0h
	movf	indf0,w ;code access
	fcall	_Serial_write
	line	50
	
l2958:	
	movf	(__$_logline_n_hex@v),w
	andlw	0Fh
	addlw	low(((_LOGLINE_CONVERSION_TABLE)|8000h))
	movwf	fsr0l
	movlw	high(((_LOGLINE_CONVERSION_TABLE)|8000h))
	skipnc
	addlw	1
	movwf	fsr0h
	movf	indf0,w ;code access
	fcall	_Serial_write
	line	51
	
l2960:	
	movlw	01h
	subwf	(__$_logline_n_hex@ptr),f
	line	52
	
l2962:	
	movlw	01h
	subwf	(__$_logline_n_hex@n),f
	line	46
	
l2964:	
	movf	((__$_logline_n_hex@n)),w
	btfss	status,2
	goto	u1761
	goto	u1760
u1761:
	goto	l2954
u1760:
	line	54
	
l484:	
	return
	callstack 0
GLOBAL	__end_of__$_logline_n_hex
	__end_of__$_logline_n_hex:
	signat	__$_logline_n_hex,8313
	global	__$_logline_int

;; *************** function __$_logline_int *****************
;; Defined at:
;;		line 15 in file "F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/logline.c"
;; Parameters:    Size  Location     Type
;;  v               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  v               1    7[BANK0 ] unsigned char 
;;  t               1    8[BANK0 ] unsigned char 
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
;;      Locals:         0       6       0       0
;;      Temps:          0       3       0       0
;;      Totals:         0       9       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_Serial_write
;;		___awdiv
;;		___awmod
;;		___lbdiv
;; This function is called by:
;;		_RF24_printDetails
;; This function uses a non-reentrant model
;;
psect	text30,local,class=CODE,delta=2,merge=1,group=1
	line	15
global __ptext30
__ptext30:	;psect for function __$_logline_int
psect	text30
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/logline.c"
	line	15
	
__$_logline_int:	
;incstack = 0
	callstack 10
; Regs used in __$_logline_int: [wreg+status,2+status,0+pclath+cstack]
	movlb 0	; select bank0
	movwf	(__$_logline_int@v)
	line	18
	
l2922:	
	movlw	low(064h)
	subwf	(__$_logline_int@v),w
	skipnc
	goto	u1691
	goto	u1690
u1691:
	goto	l2930
u1690:
	
l2924:	
	movlw	low(0Ah)
	subwf	(__$_logline_int@v),w
	skipnc
	goto	u1701
	goto	u1700
u1701:
	goto	l2928
u1700:
	
l2926:	
	movlw	01h
	movwf	(__$_logline_int$768)
	movlw	0
	movwf	((__$_logline_int$768))+1
	goto	l462
	
l2928:	
	movlw	0Ah
	movwf	(__$_logline_int$768)
	movlw	0
	movwf	((__$_logline_int$768))+1
	
l462:	
	movf	(__$_logline_int$768+1),w
	movwf	(__$_logline_int$767+1)
	movf	(__$_logline_int$768),w
	movwf	(__$_logline_int$767)
	goto	l458
	
l2930:	
	movlw	064h
	movwf	(__$_logline_int$767)
	movlw	0
	movwf	((__$_logline_int$767))+1
	
l458:	
	movf	(__$_logline_int$767),w
	movwf	(??__$_logline_int+0)+0
	movf	(??__$_logline_int+0)+0,w
	movwf	(__$_logline_int@t)
	line	22
	
l2932:	
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
	movlb 0	; select bank0
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
	
l2934:	
	movlw	0Ah
	movwf	(___awdiv@divisor)
	movlw	0
	movwf	((___awdiv@divisor))+1
	movlb 0	; select bank0
	movf	(__$_logline_int@t),w
	movwf	(??__$_logline_int+0)+0
	clrf	(??__$_logline_int+0)+0+1
	movf	0+(??__$_logline_int+0)+0,w
	movwf	(___awdiv@dividend)
	movf	1+(??__$_logline_int+0)+0,w
	movwf	(___awdiv@dividend+1)
	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	movlb 0	; select bank0
	movwf	(??__$_logline_int+2)+0
	movf	(??__$_logline_int+2)+0,w
	movwf	(__$_logline_int@t)
	line	24
	
l2936:	
	movf	((__$_logline_int@t)),w
	btfss	status,2
	goto	u1711
	goto	u1710
u1711:
	goto	l2932
u1710:
	line	25
	
l465:	
	return
	callstack 0
GLOBAL	__end_of__$_logline_int
	__end_of__$_logline_int:
	signat	__$_logline_int,4217
	global	___lbdiv

;; *************** function ___lbdiv *****************
;; Defined at:
;;		line 4 in file "C:\Program Files\Microchip\xc8\v2.35\pic\sources\c99\common\lbdiv.c"
;; Parameters:    Size  Location     Type
;;  dividend        1    wreg     unsigned char 
;;  divisor         1    0[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  dividend        1    2[COMMON] unsigned char 
;;  quotient        1    4[COMMON] unsigned char 
;;  counter         1    3[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         1       0       0       0
;;      Locals:         3       0       0       0
;;      Temps:          1       0       0       0
;;      Totals:         5       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		__$_logline_int
;; This function uses a non-reentrant model
;;
psect	text31,local,class=CODE,delta=2,merge=1,group=2
	file	"C:\Program Files\Microchip\xc8\v2.35\pic\sources\c99\common\lbdiv.c"
	line	4
global __ptext31
__ptext31:	;psect for function ___lbdiv
psect	text31
	file	"C:\Program Files\Microchip\xc8\v2.35\pic\sources\c99\common\lbdiv.c"
	line	4
	
___lbdiv:	
;incstack = 0
	callstack 10
; Regs used in ___lbdiv: [wreg+status,2+status,0]
	movwf	(___lbdiv@dividend)
	line	9
	
l2772:	
	clrf	(___lbdiv@quotient)
	line	10
	
l2774:	
	movf	((___lbdiv@divisor)),w
	btfsc	status,2
	goto	u1571
	goto	u1570
u1571:
	goto	l2794
u1570:
	line	11
	
l2776:	
	clrf	(___lbdiv@counter)
	incf	(___lbdiv@counter),f
	line	12
	goto	l2782
	line	13
	
l2778:	
	clrc
	rlf	(___lbdiv@divisor),f

	line	14
	
l2780:	
	movlw	low(01h)
	movwf	(??___lbdiv+0)+0
	movf	(??___lbdiv+0)+0,w
	addwf	(___lbdiv@counter),f
	line	12
	
l2782:	
	btfss	(___lbdiv@divisor),(7)&7
	goto	u1581
	goto	u1580
u1581:
	goto	l2778
u1580:
	line	17
	
l2784:	
	clrc
	rlf	(___lbdiv@quotient),f

	line	18
	movf	(___lbdiv@divisor),w
	subwf	(___lbdiv@dividend),w
	skipc
	goto	u1591
	goto	u1590
u1591:
	goto	l2790
u1590:
	line	19
	
l2786:	
	movf	(___lbdiv@divisor),w
	subwf	(___lbdiv@dividend),f
	line	20
	
l2788:	
	bsf	(___lbdiv@quotient)+(0/8),(0)&7
	line	22
	
l2790:	
	clrc
	rrf	(___lbdiv@divisor),f

	line	23
	
l2792:	
	movlw	01h
	subwf	(___lbdiv@counter),f
	btfss	status,2
	goto	u1601
	goto	u1600
u1601:
	goto	l2784
u1600:
	line	25
	
l2794:	
	movf	(___lbdiv@quotient),w
	line	26
	
l1054:	
	return
	callstack 0
GLOBAL	__end_of___lbdiv
	__end_of___lbdiv:
	signat	___lbdiv,8313
	global	___awmod

;; *************** function ___awmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files\Microchip\xc8\v2.35\pic\sources\c99\common\awmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    5[COMMON] int 
;;  dividend        2    7[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  sign            1   11[COMMON] unsigned char 
;;  counter         1   10[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    5[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         4       0       0       0
;;      Locals:         2       0       0       0
;;      Temps:          1       0       0       0
;;      Totals:         7       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		__$_logline_int
;; This function uses a non-reentrant model
;;
psect	text32,local,class=CODE,delta=2,merge=1,group=2
	file	"C:\Program Files\Microchip\xc8\v2.35\pic\sources\c99\common\awmod.c"
	line	5
global __ptext32
__ptext32:	;psect for function ___awmod
psect	text32
	file	"C:\Program Files\Microchip\xc8\v2.35\pic\sources\c99\common\awmod.c"
	line	5
	
___awmod:	
;incstack = 0
	callstack 10
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	12
	
l2734:	
	clrf	(___awmod@sign)
	line	13
	
l2736:	
	btfss	(___awmod@dividend+1),7
	goto	u1481
	goto	u1480
u1481:
	goto	l2742
u1480:
	line	14
	
l2738:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	15
	
l2740:	
	clrf	(___awmod@sign)
	incf	(___awmod@sign),f
	line	17
	
l2742:	
	btfss	(___awmod@divisor+1),7
	goto	u1491
	goto	u1490
u1491:
	goto	l2746
u1490:
	line	18
	
l2744:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	line	19
	
l2746:	
	movf	((___awmod@divisor)),w
iorwf	((___awmod@divisor+1)),w
	btfsc	status,2
	goto	u1501
	goto	u1500
u1501:
	goto	l2764
u1500:
	line	20
	
l2748:	
	clrf	(___awmod@counter)
	incf	(___awmod@counter),f
	line	21
	goto	l2754
	line	22
	
l2750:	
	movlw	01h
	
u1515:
	lslf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	decfsz	wreg,f
	goto	u1515
	line	23
	
l2752:	
	movlw	low(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	line	21
	
l2754:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u1521
	goto	u1520
u1521:
	goto	l2750
u1520:
	line	26
	
l2756:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u1535
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u1535:
	skipc
	goto	u1531
	goto	u1530
u1531:
	goto	l2760
u1530:
	line	27
	
l2758:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	subwfb	(___awmod@dividend+1),f
	line	28
	
l2760:	
	movlw	01h
	
u1545:
	lsrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	decfsz	wreg,f
	goto	u1545
	line	29
	
l2762:	
	movlw	01h
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u1551
	goto	u1550
u1551:
	goto	l2756
u1550:
	line	31
	
l2764:	
	movf	((___awmod@sign)),w
	btfsc	status,2
	goto	u1561
	goto	u1560
u1561:
	goto	l2768
u1560:
	line	32
	
l2766:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	33
	
l2768:	
	movf	(___awmod@dividend+1),w
	movwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	movwf	(?___awmod)
	line	34
	
l1006:	
	return
	callstack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
	signat	___awmod,8314
	global	___awdiv

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files\Microchip\xc8\v2.35\pic\sources\c99\common\awdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] int 
;;  dividend        2    2[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    7[COMMON] int 
;;  sign            1    6[COMMON] unsigned char 
;;  counter         1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         4       0       0       0
;;      Locals:         4       0       0       0
;;      Temps:          1       0       0       0
;;      Totals:         9       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		__$_logline_int
;; This function uses a non-reentrant model
;;
psect	text33,local,class=CODE,delta=2,merge=1,group=2
	file	"C:\Program Files\Microchip\xc8\v2.35\pic\sources\c99\common\awdiv.c"
	line	5
global __ptext33
__ptext33:	;psect for function ___awdiv
psect	text33
	file	"C:\Program Files\Microchip\xc8\v2.35\pic\sources\c99\common\awdiv.c"
	line	5
	
___awdiv:	
;incstack = 0
	callstack 10
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	13
	
l2690:	
	clrf	(___awdiv@sign)
	line	14
	
l2692:	
	btfss	(___awdiv@divisor+1),7
	goto	u1381
	goto	u1380
u1381:
	goto	l2698
u1380:
	line	15
	
l2694:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	16
	
l2696:	
	clrf	(___awdiv@sign)
	incf	(___awdiv@sign),f
	line	18
	
l2698:	
	btfss	(___awdiv@dividend+1),7
	goto	u1391
	goto	u1390
u1391:
	goto	l2704
u1390:
	line	19
	
l2700:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	20
	
l2702:	
	movlw	low(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	line	22
	
l2704:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	23
	
l2706:	
	movf	((___awdiv@divisor)),w
iorwf	((___awdiv@divisor+1)),w
	btfsc	status,2
	goto	u1401
	goto	u1400
u1401:
	goto	l2726
u1400:
	line	24
	
l2708:	
	clrf	(___awdiv@counter)
	incf	(___awdiv@counter),f
	line	25
	goto	l2714
	line	26
	
l2710:	
	movlw	01h
	
u1415:
	lslf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	decfsz	wreg,f
	goto	u1415
	line	27
	
l2712:	
	movlw	low(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	line	25
	
l2714:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u1421
	goto	u1420
u1421:
	goto	l2710
u1420:
	line	30
	
l2716:	
	movlw	01h
	
u1435:
	lslf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	decfsz	wreg,f
	goto	u1435
	line	31
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u1445
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u1445:
	skipc
	goto	u1441
	goto	u1440
u1441:
	goto	l2722
u1440:
	line	32
	
l2718:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	subwfb	(___awdiv@dividend+1),f
	line	33
	
l2720:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	line	35
	
l2722:	
	movlw	01h
	
u1455:
	lsrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	decfsz	wreg,f
	goto	u1455
	line	36
	
l2724:	
	movlw	01h
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u1461
	goto	u1460
u1461:
	goto	l2716
u1460:
	line	38
	
l2726:	
	movf	((___awdiv@sign)),w
	btfsc	status,2
	goto	u1471
	goto	u1470
u1471:
	goto	l2730
u1470:
	line	39
	
l2728:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	line	40
	
l2730:	
	movf	(___awdiv@quotient+1),w
	movwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	movwf	(?___awdiv)
	line	41
	
l993:	
	return
	callstack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
	signat	___awdiv,8314
	global	__$_logline_hex

;; *************** function __$_logline_hex *****************
;; Defined at:
;;		line 37 in file "F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/logline.c"
;; Parameters:    Size  Location     Type
;;  v               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  v               1    2[COMMON] unsigned char 
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
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_Serial_write
;; This function is called by:
;;		_RF24_printDetails
;; This function uses a non-reentrant model
;;
psect	text34,local,class=CODE,delta=2,merge=1,group=1
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/logline.c"
	line	37
global __ptext34
__ptext34:	;psect for function __$_logline_hex
psect	text34
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/logline.c"
	line	37
	
__$_logline_hex:	
;incstack = 0
	callstack 10
; Regs used in __$_logline_hex: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	movwf	(__$_logline_hex@v)
	line	39
	
l2950:	
	movf	(__$_logline_hex@v),w
	movwf	(??__$_logline_hex+0)+0
	movlw	04h
u1745:
	lsrf	(??__$_logline_hex+0)+0,f
	decfsz	wreg,f
	goto	u1745
	movf	0+(??__$_logline_hex+0)+0,w
	addlw	low(((_LOGLINE_CONVERSION_TABLE)|8000h))
	movwf	fsr0l
	movlw	high(((_LOGLINE_CONVERSION_TABLE)|8000h))
	skipnc
	addlw	1
	movwf	fsr0h
	movf	indf0,w ;code access
	fcall	_Serial_write
	line	40
	movf	(__$_logline_hex@v),w
	andlw	0Fh
	addlw	low(((_LOGLINE_CONVERSION_TABLE)|8000h))
	movwf	fsr0l
	movlw	high(((_LOGLINE_CONVERSION_TABLE)|8000h))
	skipnc
	addlw	1
	movwf	fsr0h
	movf	indf0,w ;code access
	fcall	_Serial_write
	line	41
	
l478:	
	return
	callstack 0
GLOBAL	__end_of__$_logline_hex
	__end_of__$_logline_hex:
	signat	__$_logline_hex,4217
	global	__$_logline_bin

;; *************** function __$_logline_bin *****************
;; Defined at:
;;		line 27 in file "F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/logline.c"
;; Parameters:    Size  Location     Type
;;  v               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  v               1    4[COMMON] unsigned char 
;;  i               1    5[COMMON] unsigned char 
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
;;      Locals:         4       0       0       0
;;      Temps:          1       0       0       0
;;      Totals:         5       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_Serial_write
;; This function is called by:
;;		_RF24_printDetails
;; This function uses a non-reentrant model
;;
psect	text35,local,class=CODE,delta=2,merge=1,group=1
	line	27
global __ptext35
__ptext35:	;psect for function __$_logline_bin
psect	text35
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/logline.c"
	line	27
	
__$_logline_bin:	
;incstack = 0
	callstack 10
; Regs used in __$_logline_bin: [wreg+status,2+status,0+pclath+cstack]
	movwf	(__$_logline_bin@v)
	line	29
	
l2938:	
	movlw	low(08h)
	movwf	(??__$_logline_bin+0)+0
	movf	(??__$_logline_bin+0)+0,w
	movwf	(__$_logline_bin@i)
	line	30
	goto	l2948
	
l469:	
	line	32
	btfsc	(__$_logline_bin@v),(7)&7
	goto	u1721
	goto	u1720
u1721:
	goto	l2942
u1720:
	
l2940:	
	movlw	030h
	movwf	(__$_logline_bin$772)
	movlw	0
	movwf	((__$_logline_bin$772))+1
	goto	l2944
	
l2942:	
	movlw	031h
	movwf	(__$_logline_bin$772)
	movlw	0
	movwf	((__$_logline_bin$772))+1
	
l2944:	
	movf	(__$_logline_bin$772),w
	fcall	_Serial_write
	line	33
	
l2946:	
	clrc
	rlf	(__$_logline_bin@v),f

	line	30
	
l2948:	
	movlw	01h
	subwf	(__$_logline_bin@i),f
		incf	(((__$_logline_bin@i))),w
	btfss	status,2
	goto	u1731
	goto	u1730
u1731:
	goto	l469
u1730:
	line	35
	
l475:	
	return
	callstack 0
GLOBAL	__end_of__$_logline_bin
	__end_of__$_logline_bin:
	signat	__$_logline_bin,4217
	global	_Serial_write

;; *************** function _Serial_write *****************
;; Defined at:
;;		line 73 in file "F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/Serial.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    0[COMMON] unsigned char 
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
;;      Locals:         1       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_checkRF24Connection
;;		__$_logline_str
;;		__$_logline_int
;;		__$_logline_bin
;;		__$_logline_hex
;;		__$_logline_n_hex
;;		_RF24_printDetails
;; This function uses a non-reentrant model
;;
psect	text36,local,class=CODE,delta=2,merge=1,group=1
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/Serial.c"
	line	73
global __ptext36
__ptext36:	;psect for function _Serial_write
psect	text36
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/Serial.c"
	line	73
	
_Serial_write:	
;incstack = 0
	callstack 11
; Regs used in _Serial_write: [wreg]
	movwf	(Serial_write@data)
	line	75
	
l2624:	
	line	76
	
l532:	
	line	75
	movlb 3	; select bank3
	btfss	(3313/8)^0180h,(3313)&7	;volatile
	goto	u1321
	goto	u1320
u1321:
	goto	l532
u1320:
	line	77
	
l2626:	
	movf	(Serial_write@data),w
	movwf	(410)^0180h	;volatile
	line	78
	
l535:	
	return
	callstack 0
GLOBAL	__end_of_Serial_write
	__end_of_Serial_write:
	signat	_Serial_write,4217
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
;;		_RF24_printDetails
;; This function uses a non-reentrant model
;;
psect	text37,local,class=CODE,delta=2,merge=1,group=1
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/rf24.c"
	line	6
global __ptext37
__ptext37:	;psect for function _RF24_read_n_register
psect	text37
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/rf24.c"
	line	6
	
_RF24_read_n_register:	
;incstack = 0
	callstack 9
; Regs used in _RF24_read_n_register: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	movwf	(RF24_read_n_register@mnemonic_addr)
	line	8
	
l2660:	
	movlb 0	; select bank0
	bcf	(117/8),(117)&7	;volatile
	line	9
	
l2662:	
	movf	(RF24_read_n_register@mnemonic_addr),w
	fcall	_SPI_exchangeByte
	movwf	(??_RF24_read_n_register+0)+0
	movf	(??_RF24_read_n_register+0)+0,w
	movlb 0	; select bank0
	movwf	(_RF24_attr_status)
	line	10
	goto	l2668
	line	12
	
l2664:	
	movlw	low(0FFh)
	fcall	_SPI_exchangeByte
	movwf	(??_RF24_read_n_register+0)+0
	movf	(RF24_read_n_register@buf),w
	movwf	fsr1l
	movf	(RF24_read_n_register@buf+1),w
	movwf	fsr1h
	movf	(??_RF24_read_n_register+0)+0,w
	movwf	indf1
	
l2666:	
	movlw	01h
	addwf	(RF24_read_n_register@buf),f
	movlw	0
	addwfc	(RF24_read_n_register@buf+1),f
	line	10
	
l2668:	
	movlw	01h
	subwf	(RF24_read_n_register@len),f
		incf	(((RF24_read_n_register@len))),w
	btfss	status,2
	goto	u1351
	goto	u1350
u1351:
	goto	l2664
u1350:
	
l592:	
	line	14
	movlb 0	; select bank0
	bsf	(117/8),(117)&7	;volatile
	line	15
	
l593:	
	return
	callstack 0
GLOBAL	__end_of_RF24_read_n_register
	__end_of_RF24_read_n_register:
	signat	_RF24_read_n_register,12409
	global	_RF24_isChipConnected

;; *************** function _RF24_isChipConnected *****************
;; Defined at:
;;		line 128 in file "F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/rf24.c"
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
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		_RF24_read_register
;; This function is called by:
;;		_checkRF24Connection
;; This function uses a non-reentrant model
;;
psect	text38,local,class=CODE,delta=2,merge=1,group=1
	line	128
global __ptext38
__ptext38:	;psect for function _RF24_isChipConnected
psect	text38
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/rf24.c"
	line	128
	
_RF24_isChipConnected:	
;incstack = 0
	callstack 10
; Regs used in _RF24_isChipConnected: [wreg+pclath+cstack]
	line	130
	
l3094:	
	movlw	low(03h)
	fcall	_RF24_read_register
	xorlw	03h&0ffh
	skipnz
	goto	u1781
	goto	u1780
u1781:
	movlw	1
	goto	u1790
u1780:
	movlw	0
u1790:
	line	131
	
l621:	
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
;;		_checkRF24Connection
;; This function uses a non-reentrant model
;;
psect	text39,local,class=CODE,delta=2,merge=1,group=1
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/internet.c"
	line	142
global __ptext39
__ptext39:	;psect for function _Network_begin
psect	text39
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/internet.c"
	line	142
	
_Network_begin:	
;incstack = 0
	callstack 8
; Regs used in _Network_begin: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	145
	
l2966:	
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
	
l2968:	
	movlw	low(((_BASE_PIPE)|8000h))
	movwf	(RF24_openReadingPipe@address)
	movlw	high(((_BASE_PIPE)|8000h))
	movwf	((RF24_openReadingPipe@address))+1
	movlw	low(0)
	fcall	_RF24_openReadingPipe
	line	151
	
l2970:	
	movlw	low(01h)
	fcall	_RF24_setAutoAck
	line	152
	
l2972:	
	movlw	low(03h)
	movlb 0	; select bank0
	movwf	(??_Network_begin+0)+0
	movf	(??_Network_begin+0)+0,w
	movwf	(?_RF24_getPALevel)
	fcall	_RF24_getPALevel
	line	153
	
l2974:	
	movlw	low(020h)
	fcall	_RF24_setPayloadSize
	line	154
	
l2976:	
	fcall	_RF24_startListening
	line	155
	
l401:	
	return
	callstack 0
GLOBAL	__end_of_Network_begin
	__end_of_Network_begin:
	signat	_Network_begin,89
	global	_RF24_startListening

;; *************** function _RF24_startListening *****************
;; Defined at:
;;		line 133 in file "F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/rf24.c"
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
psect	text40,local,class=CODE,delta=2,merge=1,group=1
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/rf24.c"
	line	133
global __ptext40
__ptext40:	;psect for function _RF24_startListening
psect	text40
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/rf24.c"
	line	133
	
_RF24_startListening:	
;incstack = 0
	callstack 8
; Regs used in _RF24_startListening: [wreg+status,2+status,0+pclath+cstack]
	line	135
	
l2450:	
	movlw	low(0)
	fcall	_RF24_read_register
	iorlw	01h
	movwf	(??_RF24_startListening+0)+0
	movf	(??_RF24_startListening+0)+0,w
	movwf	(RF24_write_register@value)
	movlw	low(0)
	fcall	_RF24_write_register
	line	136
	movlw	low(070h)
	movwf	(??_RF24_startListening+0)+0
	movf	(??_RF24_startListening+0)+0,w
	movwf	(RF24_write_register@value)
	movlw	low(07h)
	fcall	_RF24_write_register
	line	137
	
l2452:	
	movlb 0	; select bank0
	bsf	(118/8),(118)&7	;volatile
	line	148
	
l624:	
	return
	callstack 0
GLOBAL	__end_of_RF24_startListening
	__end_of_RF24_startListening:
	signat	_RF24_startListening,89
	global	_RF24_setCRCLength

;; *************** function _RF24_setCRCLength *****************
;; Defined at:
;;		line 405 in file "F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/rf24.c"
;; Parameters:    Size  Location     Type
;;  length          1    wreg     enum E2639
;; Auto vars:     Size  Location     Type
;;  length          1    8[COMMON] enum E2639
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
psect	text41,local,class=CODE,delta=2,merge=1,group=1
	line	405
global __ptext41
__ptext41:	;psect for function _RF24_setCRCLength
psect	text41
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/rf24.c"
	line	405
	
_RF24_setCRCLength:	
;incstack = 0
	callstack 9
; Regs used in _RF24_setCRCLength: [wreg+status,2+status,0+pclath+cstack]
	movwf	(RF24_setCRCLength@length)
	line	407
	
l2900:	
	movlb 0	; select bank0
	movf	(_RF24_attr_config),w
	andlw	0F3h
	movwf	(??_RF24_setCRCLength+0)+0
	movf	(??_RF24_setCRCLength+0)+0,w
	movwf	(_RF24_attr_config)
	line	410
	
l2902:	
	movf	((RF24_setCRCLength@length)),w
	btfss	status,2
	goto	u1661
	goto	u1660
u1661:
	goto	l2906
u1660:
	goto	l2910
	line	414
	
l2906:	
		decf	((RF24_setCRCLength@length)),w
	btfss	status,2
	goto	u1671
	goto	u1670
u1671:
	goto	l715
u1670:
	line	416
	
l2908:	
	bsf	(_RF24_attr_config)+(3/8),(3)&7
	line	417
	goto	l2910
	line	418
	
l715:	
	line	420
	bsf	(_RF24_attr_config)+(3/8),(3)&7
	line	421
	bsf	(_RF24_attr_config)+(2/8),(2)&7
	line	423
	
l2910:	
	movf	(_RF24_attr_config),w
	movwf	(??_RF24_setCRCLength+0)+0
	movf	(??_RF24_setCRCLength+0)+0,w
	movwf	(RF24_write_register@value)
	movlw	low(0)
	fcall	_RF24_write_register
	line	424
	
l717:	
	return
	callstack 0
GLOBAL	__end_of_RF24_setCRCLength
	__end_of_RF24_setCRCLength:
	signat	_RF24_setCRCLength,4217
	global	_RF24_setAutoAck

;; *************** function _RF24_setAutoAck *****************
;; Defined at:
;;		line 336 in file "F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/rf24.c"
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
psect	text42,local,class=CODE,delta=2,merge=1,group=1
	line	336
global __ptext42
__ptext42:	;psect for function _RF24_setAutoAck
psect	text42
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/rf24.c"
	line	336
	
_RF24_setAutoAck:	
;incstack = 0
	callstack 9
; Regs used in _RF24_setAutoAck: [wreg+status,2+status,0+pclath+cstack]
	movwf	(RF24_setAutoAck@enable)
	line	338
	
l2912:	
	movf	((RF24_setAutoAck@enable)),w
	btfsc	status,2
	goto	u1681
	goto	u1680
u1681:
	goto	l2916
u1680:
	line	340
	
l2914:	
	movlw	low(03Fh)
	movwf	(??_RF24_setAutoAck+0)+0
	movf	(??_RF24_setAutoAck+0)+0,w
	movwf	(RF24_write_register@value)
	movlw	low(01h)
	fcall	_RF24_write_register
	line	341
	goto	l692
	line	344
	
l2916:	
	clrf	(RF24_write_register@value)
	movlw	low(01h)
	fcall	_RF24_write_register
	line	346
	
l692:	
	return
	callstack 0
GLOBAL	__end_of_RF24_setAutoAck
	__end_of_RF24_setAutoAck:
	signat	_RF24_setAutoAck,4217
	global	_RF24_openReadingPipe

;; *************** function _RF24_openReadingPipe *****************
;; Defined at:
;;		line 306 in file "F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/rf24.c"
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
psect	text43,local,class=CODE,delta=2,merge=1,group=1
	line	306
global __ptext43
__ptext43:	;psect for function _RF24_openReadingPipe
psect	text43
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/rf24.c"
	line	306
	
_RF24_openReadingPipe:	
;incstack = 0
	callstack 8
; Regs used in _RF24_openReadingPipe: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	movwf	(RF24_openReadingPipe@child)
	line	308
	
l2398:	
	movlw	low(02h)
	subwf	(RF24_openReadingPipe@child),w
	skipnc
	goto	u1091
	goto	u1090
u1091:
	goto	l2402
u1090:
	line	310
	
l2400:	
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
	line	311
	goto	l2404
	line	314
	
l2402:	
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
	line	316
	
l2404:	
	movlw	low(01h)
	movwf	(??_RF24_openReadingPipe+0)+0
	incf	(RF24_openReadingPipe@child),w
	goto	u1104
u1105:
	lslf	(??_RF24_openReadingPipe+0)+0,f
u1104:
	decfsz	wreg,f
	goto	u1105
	movlw	low(02h)
	fcall	_RF24_read_register
	iorwf	0+(??_RF24_openReadingPipe+0)+0,w
	movwf	(??_RF24_openReadingPipe+1)+0
	movf	(??_RF24_openReadingPipe+1)+0,w
	movwf	(RF24_write_register@value)
	movlw	low(02h)
	fcall	_RF24_write_register
	line	317
	
l678:	
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
psect	text44,local,class=CODE,delta=2,merge=1,group=1
	line	28
global __ptext44
__ptext44:	;psect for function _RF24_write_n_register
psect	text44
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/rf24.c"
	line	28
	
_RF24_write_n_register:	
;incstack = 0
	callstack 8
; Regs used in _RF24_write_n_register: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	movwf	(RF24_write_n_register@mnemonic_addr)
	line	30
	
l2374:	
	movlb 0	; select bank0
	bcf	(117/8),(117)&7	;volatile
	line	31
	
l2376:	
	movf	(RF24_write_n_register@mnemonic_addr),w
	iorlw	020h
	fcall	_SPI_exchangeByte
	movwf	(??_RF24_write_n_register+0)+0
	movf	(??_RF24_write_n_register+0)+0,w
	movlb 0	; select bank0
	movwf	(_RF24_attr_status)
	line	32
	goto	l2384
	line	34
	
l2378:	
	movf	(RF24_write_n_register@buffer),w
	movwf	fsr0l
	movf	((RF24_write_n_register@buffer+1)),w
	movwf	fsr0h
	movf	indf0,w ;code access
	fcall	_SPI_exchangeByte
	
l2380:	
	movlw	01h
	addwf	(RF24_write_n_register@buffer),f
	movlw	0
	addwfc	(RF24_write_n_register@buffer+1),f
	line	35
	
l2382:	
	movlw	01h
	subwf	(RF24_write_n_register@length),f
	line	32
	
l2384:	
	movf	((RF24_write_n_register@length)),w
	btfss	status,2
	goto	u1081
	goto	u1080
u1081:
	goto	l2378
u1080:
	
l601:	
	line	37
	movlb 0	; select bank0
	bsf	(117/8),(117)&7	;volatile
	line	38
	
l602:	
	return
	callstack 0
GLOBAL	__end_of_RF24_write_n_register
	__end_of_RF24_write_n_register:
	signat	_RF24_write_n_register,12409
	global	_RF24_getPALevel

;; *************** function _RF24_getPALevel *****************
;; Defined at:
;;		line 459 in file "F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/rf24.c"
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
psect	text45,local,class=CODE,delta=2,merge=1,group=1
	line	459
global __ptext45
__ptext45:	;psect for function _RF24_getPALevel
psect	text45
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/rf24.c"
	line	459
	
_RF24_getPALevel:	
;incstack = 0
	callstack 9
; Regs used in _RF24_getPALevel: [wreg+status,2+status,0+pclath+cstack]
	line	461
	
l2918:	
;	Return value of _RF24_getPALevel is never used
	movlw	low(06h)
	fcall	_RF24_read_register
	line	462
	
l744:	
	return
	callstack 0
GLOBAL	__end_of_RF24_getPALevel
	__end_of_RF24_getPALevel:
	signat	_RF24_getPALevel,89
	global	_RF24_enableDynamicPayloads

;; *************** function _RF24_enableDynamicPayloads *****************
;; Defined at:
;;		line 324 in file "F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/rf24.c"
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
psect	text46,local,class=CODE,delta=2,merge=1,group=1
	line	324
global __ptext46
__ptext46:	;psect for function _RF24_enableDynamicPayloads
psect	text46
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/rf24.c"
	line	324
	
_RF24_enableDynamicPayloads:	
;incstack = 0
	callstack 9
; Regs used in _RF24_enableDynamicPayloads: [wreg+status,2+status,0+pclath+cstack]
	line	326
	
l2898:	
	movlw	low(01Dh)
	fcall	_RF24_read_register
	iorlw	04h
	movwf	(??_RF24_enableDynamicPayloads+0)+0
	movf	(??_RF24_enableDynamicPayloads+0)+0,w
	movwf	(RF24_write_register@value)
	movlw	low(01Dh)
	fcall	_RF24_write_register
	line	327
	movlw	low(01Ch)
	fcall	_RF24_read_register
	iorlw	03Fh
	movwf	(??_RF24_enableDynamicPayloads+0)+0
	movf	(??_RF24_enableDynamicPayloads+0)+0,w
	movwf	(RF24_write_register@value)
	movlw	low(01Ch)
	fcall	_RF24_write_register
	line	328
	
l684:	
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
psect	text47,local,class=CODE,delta=2,merge=1,group=1
	line	58
global __ptext47
__ptext47:	;psect for function _RF24_begin
psect	text47
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/rf24.c"
	line	58
	
_RF24_begin:	
;incstack = 0
	callstack 8
; Regs used in _RF24_begin: [wreg+status,2+status,0+pclath+cstack]
	line	61
	
l2860:	
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
	
l2862:	
	asmopt push
asmopt off
movlw  3
movwf	((??_RF24_begin+0)+0+1)
movlw	8
movwf	((??_RF24_begin+0)+0)
	movlw	119
u2417:
decfsz	wreg
	goto	u2417
	decfsz	((??_RF24_begin+0)+0),f
	goto	u2417
	decfsz	((??_RF24_begin+0)+0+1),f
	goto	u2417
	nop
asmopt pop

	line	75
	asmopt push
asmopt off
movlw	26
movwf	((??_RF24_begin+0)+0)
	movlw	248
u2427:
decfsz	wreg
	goto	u2427
	decfsz	((??_RF24_begin+0)+0),f
	goto	u2427
	nop2
asmopt pop

	line	79
	
l2864:	
	movlw	low(0Fh)
	movwf	(??_RF24_begin+0)+0
	movf	(??_RF24_begin+0)+0,w
	movwf	(RF24_setRetries@count)
	movlw	low(05h)
	fcall	_RF24_setRetries
	line	84
	
l2866:	
	movlw	low(03h)
	fcall	_RF24_setPALevel
	line	85
	
l2868:	
	movlw	low(0)
	fcall	_RF24_setDataRate
	line	88
	
l2870:	
	clrf	(RF24_write_register@value)
	movlw	low(01Dh)
	fcall	_RF24_write_register
	line	89
	
l2872:	
	clrf	(RF24_write_register@value)
	movlw	low(01Ch)
	fcall	_RF24_write_register
	line	90
	
l2874:	
	movlw	low(03Fh)
	movwf	(??_RF24_begin+0)+0
	movf	(??_RF24_begin+0)+0,w
	movwf	(RF24_write_register@value)
	movlw	low(01h)
	fcall	_RF24_write_register
	line	91
	
l2876:	
	movlw	low(03h)
	movwf	(??_RF24_begin+0)+0
	movf	(??_RF24_begin+0)+0,w
	movwf	(RF24_write_register@value)
	movlw	low(02h)
	fcall	_RF24_write_register
	line	92
	
l2878:	
	movlw	low(020h)
	fcall	_RF24_setPayloadSize
	line	93
	
l2880:	
	movlw	low(05h)
	fcall	_RF24_setAddressWidth
	line	98
	
l2882:	
	movlw	low(04Ch)
	fcall	_RF24_setChannel
	line	102
	
l2884:	
	movlw	low(070h)
	movwf	(??_RF24_begin+0)+0
	movf	(??_RF24_begin+0)+0,w
	movwf	(RF24_write_register@value)
	movlw	low(07h)
	fcall	_RF24_write_register
	line	105
	
l2886:	
	fcall	_RF24_flush_rx
	line	106
	
l2888:	
	fcall	_RF24_flush_tx
	line	115
	
l2890:	
	movlw	low(0Ch)
	movwf	(??_RF24_begin+0)+0
	movf	(??_RF24_begin+0)+0,w
	movwf	(RF24_write_register@value)
	movlw	low(0)
	fcall	_RF24_write_register
	line	116
	
l2892:	
	fcall	_RF24_powerUp
	line	117
	
l2894:	
	movlw	low(0)
	fcall	_RF24_read_register
	movwf	(??_RF24_begin+0)+0
	movf	(??_RF24_begin+0)+0,w
	movlb 0	; select bank0
	movwf	(_RF24_attr_config)
	line	119
	
l611:	
	return
	callstack 0
GLOBAL	__end_of_RF24_begin
	__end_of_RF24_begin:
	signat	_RF24_begin,89
	global	_RF24_setRetries

;; *************** function _RF24_setRetries *****************
;; Defined at:
;;		line 463 in file "F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/rf24.c"
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
psect	text48,local,class=CODE,delta=2,merge=1,group=1
	line	463
global __ptext48
__ptext48:	;psect for function _RF24_setRetries
psect	text48
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/rf24.c"
	line	463
	
_RF24_setRetries:	
;incstack = 0
	callstack 8
; Regs used in _RF24_setRetries: [wreg+status,2+status,0+pclath+cstack]
	movwf	(RF24_setRetries@delay)
	line	465
	
l2670:	
	movlw	low(0Fh)
	andwf	(RF24_setRetries@count),w
	movwf	(??_RF24_setRetries+0)+0
	movf	(RF24_setRetries@delay),w
	andlw	0Fh
	movwf	(??_RF24_setRetries+1)+0
	movlw	(04h)-1
u1365:
	lslf	(??_RF24_setRetries+1)+0,f
	addlw	-1
	skipz
	goto	u1365
	lslf	(??_RF24_setRetries+1)+0,w
	iorwf	0+(??_RF24_setRetries+0)+0,w
	movwf	(??_RF24_setRetries+2)+0
	movf	(??_RF24_setRetries+2)+0,w
	movwf	(RF24_write_register@value)
	movlw	low(04h)
	fcall	_RF24_write_register
	line	466
	
l747:	
	return
	callstack 0
GLOBAL	__end_of_RF24_setRetries
	__end_of_RF24_setRetries:
	signat	_RF24_setRetries,8313
	global	_RF24_setPayloadSize

;; *************** function _RF24_setPayloadSize *****************
;; Defined at:
;;		line 177 in file "F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/rf24.c"
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
psect	text49,local,class=CODE,delta=2,merge=1,group=1
	line	177
global __ptext49
__ptext49:	;psect for function _RF24_setPayloadSize
psect	text49
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/rf24.c"
	line	177
	
_RF24_setPayloadSize:	
;incstack = 0
	callstack 9
; Regs used in _RF24_setPayloadSize: [wreg+status,2+status,0+pclath+cstack]
	movwf	(RF24_setPayloadSize@size)
	line	179
	
l2658:	
	movf	(RF24_setPayloadSize@size),w
	movwf	(??_RF24_setPayloadSize+0)+0
	movf	(??_RF24_setPayloadSize+0)+0,w
	movwf	(RF24_write_register@value)
	movlw	low(011h)
	fcall	_RF24_write_register
	line	180
	movf	(RF24_setPayloadSize@size),w
	movwf	(??_RF24_setPayloadSize+0)+0
	movf	(??_RF24_setPayloadSize+0)+0,w
	movwf	(RF24_write_register@value)
	movlw	low(012h)
	fcall	_RF24_write_register
	line	181
	movf	(RF24_setPayloadSize@size),w
	movwf	(??_RF24_setPayloadSize+0)+0
	movf	(??_RF24_setPayloadSize+0)+0,w
	movwf	(RF24_write_register@value)
	movlw	low(013h)
	fcall	_RF24_write_register
	line	182
	movf	(RF24_setPayloadSize@size),w
	movwf	(??_RF24_setPayloadSize+0)+0
	movf	(??_RF24_setPayloadSize+0)+0,w
	movwf	(RF24_write_register@value)
	movlw	low(014h)
	fcall	_RF24_write_register
	line	183
	movf	(RF24_setPayloadSize@size),w
	movwf	(??_RF24_setPayloadSize+0)+0
	movf	(??_RF24_setPayloadSize+0)+0,w
	movwf	(RF24_write_register@value)
	movlw	low(015h)
	fcall	_RF24_write_register
	line	184
	movf	(RF24_setPayloadSize@size),w
	movwf	(??_RF24_setPayloadSize+0)+0
	movf	(??_RF24_setPayloadSize+0)+0,w
	movwf	(RF24_write_register@value)
	movlw	low(016h)
	fcall	_RF24_write_register
	line	185
	
l636:	
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
psect	text50,local,class=CODE,delta=2,merge=1,group=1
	line	121
global __ptext50
__ptext50:	;psect for function _RF24_setPALevel
psect	text50
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/rf24.c"
	line	121
	
_RF24_setPALevel:	
;incstack = 0
	callstack 8
; Regs used in _RF24_setPALevel: [wreg+status,2+status,0+pclath+cstack]
	movwf	(RF24_setPALevel@level)
	line	123
	
l2672:	
	movlw	low(06h)
	fcall	_RF24_read_register
	andlw	0F8h
	movwf	(??_RF24_setPALevel+0)+0
	movf	(??_RF24_setPALevel+0)+0,w
	movwf	(RF24_setPALevel@setup)
	line	124
	
l2674:	
	movlw	low(04h)
	subwf	(RF24_setPALevel@level),w
	skipnc
	goto	u1371
	goto	u1370
u1371:
	goto	l2678
u1370:
	
l2676:	
	movf	(RF24_setPALevel@level),w
	movwf	(??_RF24_setPALevel+0)+0
	movf	(??_RF24_setPALevel+0)+0,w
	movwf	(_RF24_setPALevel$909)
	goto	l2680
	
l2678:	
	movlw	low(03h)
	movwf	(??_RF24_setPALevel+0)+0
	movf	(??_RF24_setPALevel+0)+0,w
	movwf	(_RF24_setPALevel$909)
	
l2680:	
	lslf	(_RF24_setPALevel$909),w
	movwf	(??_RF24_setPALevel+0)+0
	movf	(??_RF24_setPALevel+0)+0,w
	iorwf	(RF24_setPALevel@setup),f
	line	125
	
l2682:	
	movf	(RF24_setPALevel@setup),w
	movwf	(??_RF24_setPALevel+0)+0
	movf	(??_RF24_setPALevel+0)+0,w
	movwf	(RF24_write_register@value)
	movlw	low(06h)
	fcall	_RF24_write_register
	line	126
	
l618:	
	return
	callstack 0
GLOBAL	__end_of_RF24_setPALevel
	__end_of_RF24_setPALevel:
	signat	_RF24_setPALevel,4217
	global	_RF24_setDataRate

;; *************** function _RF24_setDataRate *****************
;; Defined at:
;;		line 364 in file "F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/rf24.c"
;; Parameters:    Size  Location     Type
;;  speed           1    wreg     enum E2634
;; Auto vars:     Size  Location     Type
;;  speed           1    8[COMMON] enum E2634
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
psect	text51,local,class=CODE,delta=2,merge=1,group=1
	line	364
global __ptext51
__ptext51:	;psect for function _RF24_setDataRate
psect	text51
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/rf24.c"
	line	364
	
_RF24_setDataRate:	
;incstack = 0
	callstack 9
; Regs used in _RF24_setDataRate: [wreg+status,2+status,0+pclath+cstack]
	movwf	(RF24_setDataRate@speed)
	line	366
	
l2644:	
	movlw	low(06h)
	fcall	_RF24_read_register
	movwf	(??_RF24_setDataRate+0)+0
	movf	(??_RF24_setDataRate+0)+0,w
	movwf	(RF24_setDataRate@setup)
	line	368
	
l2646:	
	movf	(RF24_setDataRate@setup),w
	andlw	0D7h
	movwf	(??_RF24_setDataRate+0)+0
	movf	(??_RF24_setDataRate+0)+0,w
	movwf	(RF24_setDataRate@setup)
	line	369
	
l2648:	
		movlw	2
	xorwf	((RF24_setDataRate@speed)),w
	btfss	status,2
	goto	u1331
	goto	u1330
u1331:
	goto	l2652
u1330:
	line	371
	
l2650:	
	bsf	(RF24_setDataRate@setup)+(5/8),(5)&7
	line	372
	goto	l2656
	line	373
	
l2652:	
		decf	((RF24_setDataRate@speed)),w
	btfss	status,2
	goto	u1341
	goto	u1340
u1341:
	goto	l2656
u1340:
	line	375
	
l2654:	
	bsf	(RF24_setDataRate@setup)+(3/8),(3)&7
	line	377
	
l2656:	
	movf	(RF24_setDataRate@setup),w
	movwf	(??_RF24_setDataRate+0)+0
	movf	(??_RF24_setDataRate+0)+0,w
	movwf	(RF24_write_register@value)
	movlw	low(06h)
	fcall	_RF24_write_register
	line	378
	
l703:	
	return
	callstack 0
GLOBAL	__end_of_RF24_setDataRate
	__end_of_RF24_setDataRate:
	signat	_RF24_setDataRate,4217
	global	_RF24_setChannel

;; *************** function _RF24_setChannel *****************
;; Defined at:
;;		line 443 in file "F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/rf24.c"
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
psect	text52,local,class=CODE,delta=2,merge=1,group=1
	line	443
global __ptext52
__ptext52:	;psect for function _RF24_setChannel
psect	text52
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/rf24.c"
	line	443
	
_RF24_setChannel:	
;incstack = 0
	callstack 10
; Regs used in _RF24_setChannel: [wreg+status,2+status,0+pclath+cstack]
	movwf	(RF24_setChannel@channel)
	line	445
	
l2636:	
	movf	(RF24_setChannel@channel),w
	movwf	(??_RF24_setChannel+0)+0
	movf	(??_RF24_setChannel+0)+0,w
	movwf	(RF24_write_register@value)
	movlw	low(05h)
	fcall	_RF24_write_register
	line	446
	
l732:	
	return
	callstack 0
GLOBAL	__end_of_RF24_setChannel
	__end_of_RF24_setChannel:
	signat	_RF24_setChannel,4217
	global	_RF24_setAddressWidth

;; *************** function _RF24_setAddressWidth *****************
;; Defined at:
;;		line 467 in file "F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/rf24.c"
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
psect	text53,local,class=CODE,delta=2,merge=1,group=1
	line	467
global __ptext53
__ptext53:	;psect for function _RF24_setAddressWidth
psect	text53
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/rf24.c"
	line	467
	
_RF24_setAddressWidth:	
;incstack = 0
	callstack 9
; Regs used in _RF24_setAddressWidth: [wreg+status,2+status,0+pclath+cstack]
	movwf	(RF24_setAddressWidth@w)
	line	469
	
l2642:	
	movf	(RF24_setAddressWidth@w),w
	addlw	0FEh
	andlw	03h
	movwf	(??_RF24_setAddressWidth+0)+0
	movf	(??_RF24_setAddressWidth+0)+0,w
	movwf	(RF24_write_register@value)
	movlw	low(03h)
	fcall	_RF24_write_register
	line	470
	
l750:	
	return
	callstack 0
GLOBAL	__end_of_RF24_setAddressWidth
	__end_of_RF24_setAddressWidth:
	signat	_RF24_setAddressWidth,4217
	global	_RF24_powerUp

;; *************** function _RF24_powerUp *****************
;; Defined at:
;;		line 171 in file "F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/rf24.c"
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
psect	text54,local,class=CODE,delta=2,merge=1,group=1
	line	171
global __ptext54
__ptext54:	;psect for function _RF24_powerUp
psect	text54
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/rf24.c"
	line	171
	
_RF24_powerUp:	
;incstack = 0
	callstack 8
; Regs used in _RF24_powerUp: [wreg+status,2+status,0+pclath+cstack]
	line	173
	
l2686:	
	movlw	low(0)
	fcall	_RF24_read_register
	iorlw	02h
	movwf	(??_RF24_powerUp+0)+0
	movf	(??_RF24_powerUp+0)+0,w
	movwf	(RF24_write_register@value)
	movlw	low(0)
	fcall	_RF24_write_register
	line	174
	
l2688:	
	asmopt push
asmopt off
movlw	26
movwf	((??_RF24_powerUp+0)+0)
	movlw	248
u2437:
decfsz	wreg
	goto	u2437
	decfsz	((??_RF24_powerUp+0)+0),f
	goto	u2437
	nop2
asmopt pop

	line	175
	
l633:	
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
;;		_RF24_printDetails
;; This function uses a non-reentrant model
;;
psect	text55,local,class=CODE,delta=2,merge=1,group=1
	line	17
global __ptext55
__ptext55:	;psect for function _RF24_read_register
psect	text55
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/rf24.c"
	line	17
	
_RF24_read_register:	
;incstack = 0
	callstack 8
; Regs used in _RF24_read_register: [wreg+pclath+cstack]
	movwf	(RF24_read_register@mnemonic_addr)
	line	19
	
l2364:	
	movlb 0	; select bank0
	bcf	(117/8),(117)&7	;volatile
	line	21
	
l2366:	
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
	
l2368:	
	movlb 0	; select bank0
	bsf	(117/8),(117)&7	;volatile
	line	25
	
l2370:	
	movf	(RF24_read_register@result),w
	line	26
	
l596:	
	return
	callstack 0
GLOBAL	__end_of_RF24_read_register
	__end_of_RF24_read_register:
	signat	_RF24_read_register,4217
	global	_RF24_flush_tx

;; *************** function _RF24_flush_tx *****************
;; Defined at:
;;		line 431 in file "F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/rf24.c"
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
psect	text56,local,class=CODE,delta=2,merge=1,group=1
	line	431
global __ptext56
__ptext56:	;psect for function _RF24_flush_tx
psect	text56
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/rf24.c"
	line	431
	
_RF24_flush_tx:	
;incstack = 0
	callstack 7
; Regs used in _RF24_flush_tx: [wreg+status,2+status,0+pclath+cstack]
	line	433
	
l2396:	
	movlw	low(0FFh)
	movwf	(??_RF24_flush_tx+0)+0
	movf	(??_RF24_flush_tx+0)+0,w
	movwf	(RF24_write_register@value)
	movlw	low(0E1h)
	fcall	_RF24_write_register
	line	434
	
l723:	
	return
	callstack 0
GLOBAL	__end_of_RF24_flush_tx
	__end_of_RF24_flush_tx:
	signat	_RF24_flush_tx,89
	global	_RF24_flush_rx

;; *************** function _RF24_flush_rx *****************
;; Defined at:
;;		line 435 in file "F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/rf24.c"
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
psect	text57,local,class=CODE,delta=2,merge=1,group=1
	line	435
global __ptext57
__ptext57:	;psect for function _RF24_flush_rx
psect	text57
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/rf24.c"
	line	435
	
_RF24_flush_rx:	
;incstack = 0
	callstack 8
; Regs used in _RF24_flush_rx: [wreg+status,2+status,0+pclath+cstack]
	line	437
	
l2684:	
	movlw	low(0FFh)
	movwf	(??_RF24_flush_rx+0)+0
	movf	(??_RF24_flush_rx+0)+0,w
	movwf	(RF24_write_register@value)
	movlw	low(0E2h)
	fcall	_RF24_write_register
	line	438
	
l726:	
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
psect	text58,local,class=CODE,delta=2,merge=1,group=1
	line	41
global __ptext58
__ptext58:	;psect for function _RF24_write_register
psect	text58
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/rf24.c"
	line	41
	
_RF24_write_register:	
;incstack = 0
	callstack 8
; Regs used in _RF24_write_register: [wreg+status,2+status,0+pclath+cstack]
	movwf	(RF24_write_register@mnemonic_addr)
	line	44
	
l2356:	
	movlb 0	; select bank0
	bcf	(117/8),(117)&7	;volatile
	line	45
	
l2358:	
	movf	(RF24_write_register@mnemonic_addr),w
	iorlw	020h
	fcall	_SPI_exchangeByte
	movwf	(??_RF24_write_register+0)+0
	movf	(??_RF24_write_register+0)+0,w
	movlb 0	; select bank0
	movwf	(_RF24_attr_status)
	line	46
	
l2360:	
	movf	(RF24_write_register@value),w
	fcall	_SPI_exchangeByte
	line	47
	
l2362:	
	movlb 0	; select bank0
	bsf	(117/8),(117)&7	;volatile
	line	48
	
l605:	
	return
	callstack 0
GLOBAL	__end_of_RF24_write_register
	__end_of_RF24_write_register:
	signat	_RF24_write_register,8313
	global	_SPI_exchangeByte

;; *************** function _SPI_exchangeByte *****************
;; Defined at:
;;		line 24 in file "F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/spi_master.c"
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
psect	text59,local,class=CODE,delta=2,merge=1,group=1
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/spi_master.c"
	line	24
global __ptext59
__ptext59:	;psect for function _SPI_exchangeByte
psect	text59
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/spi_master.c"
	line	24
	
_SPI_exchangeByte:	
;incstack = 0
	callstack 9
; Regs used in _SPI_exchangeByte: [wreg]
	movwf	(SPI_exchangeByte@byte)
	line	27
	
l2350:	
	movf	(SPI_exchangeByte@byte),w
	movlb 4	; select bank4
	movwf	(529)^0200h	;volatile
	line	29
	
l775:	
	line	28
	movlb 0	; select bank0
	btfss	(139/8),(139)&7	;volatile
	goto	u1071
	goto	u1070
u1071:
	goto	l775
u1070:
	
l777:	
	line	30
	bcf	(139/8),(139)&7	;volatile
	line	31
	
l2352:	
	movlb 4	; select bank4
	movf	(529)^0200h,w	;volatile
	line	32
	
l778:	
	return
	callstack 0
GLOBAL	__end_of_SPI_exchangeByte
	__end_of_SPI_exchangeByte:
	signat	_SPI_exchangeByte,4217
	global	_Serial_begin

;; *************** function _Serial_begin *****************
;; Defined at:
;;		line 26 in file "F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/Serial.c"
;; Parameters:    Size  Location     Type
;;  baudrate        4   14[BANK0 ] const long 
;; Auto vars:     Size  Location     Type
;;  x               2   26[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       4       0       0
;;      Locals:         0       2       0       0
;;      Temps:          0       8       0       0
;;      Totals:         0      14       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		___aldiv
;;		___lmul
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text60,local,class=CODE,delta=2,merge=1,group=1
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/Serial.c"
	line	26
global __ptext60
__ptext60:	;psect for function _Serial_begin
psect	text60
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/Serial.c"
	line	26
	
_Serial_begin:	
;incstack = 0
	callstack 12
; Regs used in _Serial_begin: [wreg+status,2+status,0+pclath+cstack]
	line	28
	
l3192:	
	movlb 0	; select bank0
	movf	(Serial_begin@baudrate),w
	movwf	(??_Serial_begin+0)+0
	movf	(Serial_begin@baudrate+1),w
	movwf	((??_Serial_begin+0)+0+1)
	movf	(Serial_begin@baudrate+2),w
	movwf	((??_Serial_begin+0)+0+2)
	movf	(Serial_begin@baudrate+3),w
	movwf	((??_Serial_begin+0)+0+3)
	movlw	06h
u2015:
	lslf	(??_Serial_begin+0)+0,f
	rlf	(??_Serial_begin+0)+1,f
	rlf	(??_Serial_begin+0)+2,f
	rlf	(??_Serial_begin+0)+3,f
u2010:
	decfsz	wreg,f
	goto	u2015
	movf	3+(??_Serial_begin+0)+0,w
	movwf	(___aldiv@divisor+3)
	movf	2+(??_Serial_begin+0)+0,w
	movwf	(___aldiv@divisor+2)
	movf	1+(??_Serial_begin+0)+0,w
	movwf	(___aldiv@divisor+1)
	movf	0+(??_Serial_begin+0)+0,w
	movwf	(___aldiv@divisor)

	movlw	0
	movwf	((??_Serial_begin+4)+0)
	movlw	024h
	movwf	((??_Serial_begin+4)+0+1)
	movlw	0F4h
	movwf	((??_Serial_begin+4)+0+2)
	movlw	0
	movwf	((??_Serial_begin+4)+0+3)
	movf	(Serial_begin@baudrate+3),w
	movwf	(___lmul@multiplier+3)
	movf	(Serial_begin@baudrate+2),w
	movwf	(___lmul@multiplier+2)
	movf	(Serial_begin@baudrate+1),w
	movwf	(___lmul@multiplier+1)
	movf	(Serial_begin@baudrate),w
	movwf	(___lmul@multiplier)

	movlw	0FFh
	movwf	(___lmul@multiplicand+3)
	movlw	0FFh
	movwf	(___lmul@multiplicand+2)
	movlw	0FFh
	movwf	(___lmul@multiplicand+1)
	movlw	0BEh
	movwf	(___lmul@multiplicand)

	fcall	___lmul
	movf	(0+(?___lmul)),w
	movlb 0	; select bank0
	addwf	(??_Serial_begin+4)+0,f
	movf	(1+(?___lmul)),w
	addwfc	(??_Serial_begin+4)+1,f
	movf	(2+(?___lmul)),w
	addwfc	(??_Serial_begin+4)+2,f
	movf	(3+(?___lmul)),w
	addwfc	(??_Serial_begin+4)+3,f
	movf	3+(??_Serial_begin+4)+0,w
	movwf	(___aldiv@dividend+3)
	movf	2+(??_Serial_begin+4)+0,w
	movwf	(___aldiv@dividend+2)
	movf	1+(??_Serial_begin+4)+0,w
	movwf	(___aldiv@dividend+1)
	movf	0+(??_Serial_begin+4)+0,w
	movwf	(___aldiv@dividend)

	fcall	___aldiv
	movlb 0	; select bank0
	movf	(1+(?___aldiv)),w
	movwf	(Serial_begin@x+1)
	movf	(0+(?___aldiv)),w
	movwf	(Serial_begin@x)
	line	29
	
l3194:	
	movf	(Serial_begin@x),w
	movlb 3	; select bank3
	movwf	(411)^0180h	;volatile
	line	30
	
l3196:	
	bsf	(3314/8)^0180h,(3314)&7	;volatile
	line	31
	
l3198:	
	movlb 2	; select bank2
	bcf	(2287/8)^0100h,(2287)&7	;volatile
	line	32
	
l3200:	
	bsf	(2282/8)^0100h,(2282)&7	;volatile
	line	33
	
l3202:	
	movlb 3	; select bank3
	bcf	(397)^0180h,5	;volatile
	line	34
	
l3204:	
	bcf	(3316/8)^0180h,(3316)&7	;volatile
	line	35
	
l3206:	
	bsf	(3311/8)^0180h,(3311)&7	;volatile
	line	36
	
l3208:	
	movlb 1	; select bank1
	bsf	(1140/8)^080h,(1140)&7	;volatile
	line	37
	
l3210:	
	bsf	(1133/8)^080h,(1133)&7	;volatile
	line	38
	
l3212:	
	movlb 3	; select bank3
	bcf	(3315/8)^0180h,(3315)&7	;volatile
	line	39
	
l3214:	
	bsf	(3308/8)^0180h,(3308)&7	;volatile
	line	40
	
l3216:	
	bsf	(3317/8)^0180h,(3317)&7	;volatile
	line	59
	
l519:	
	return
	callstack 0
GLOBAL	__end_of_Serial_begin
	__end_of_Serial_begin:
	signat	_Serial_begin,4217
	global	___lmul

;; *************** function ___lmul *****************
;; Defined at:
;;		line 15 in file "C:\Program Files\Microchip\xc8\v2.35\pic\sources\c99\common\Umul32.c"
;; Parameters:    Size  Location     Type
;;  multiplier      4    0[COMMON] unsigned long 
;;  multiplicand    4    4[COMMON] unsigned long 
;; Auto vars:     Size  Location     Type
;;  product         4    8[COMMON] unsigned long 
;; Return value:  Size  Location     Type
;;                  4    0[COMMON] unsigned long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         8       0       0       0
;;      Locals:         4       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:        12       0       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Serial_begin
;; This function uses a non-reentrant model
;;
psect	text61,local,class=CODE,delta=2,merge=1,group=2
	file	"C:\Program Files\Microchip\xc8\v2.35\pic\sources\c99\common\Umul32.c"
	line	15
global __ptext61
__ptext61:	;psect for function ___lmul
psect	text61
	file	"C:\Program Files\Microchip\xc8\v2.35\pic\sources\c99\common\Umul32.c"
	line	15
	
___lmul:	
;incstack = 0
	callstack 12
; Regs used in ___lmul: [wreg+status,2+status,0]
	line	119
	
l3122:	
	movlw	high highword(0)
	movwf	(___lmul@product+3)
	movlw	low highword(0)
	movwf	(___lmul@product+2)
	movlw	high(0)
	movwf	(___lmul@product+1)
	movlw	low(0)
	movwf	(___lmul@product)

	line	121
	
l3124:	
	btfss	(___lmul@multiplier),(0)&7
	goto	u1871
	goto	u1870
u1871:
	goto	l3128
u1870:
	line	122
	
l3126:	
	movf	(___lmul@multiplicand),w
	addwf	(___lmul@product),f
	movf	(___lmul@multiplicand+1),w
	addwfc	(___lmul@product+1),f
	movf	(___lmul@multiplicand+2),w
	addwfc	(___lmul@product+2),f
	movf	(___lmul@multiplicand+3),w
	addwfc	(___lmul@product+3),f
	line	123
	
l3128:	
	movlw	01h
u1885:
	lslf	(___lmul@multiplicand),f
	rlf	(___lmul@multiplicand+1),f
	rlf	(___lmul@multiplicand+2),f
	rlf	(___lmul@multiplicand+3),f
	decfsz	wreg,f
	goto	u1885
	line	124
	
l3130:	
	movlw	01h
u1895:
	lsrf	(___lmul@multiplier+3),f
	rrf	(___lmul@multiplier+2),f
	rrf	(___lmul@multiplier+1),f
	rrf	(___lmul@multiplier),f
	decfsz	wreg,f
	goto	u1895

	line	125
	movf	(___lmul@multiplier+3),w
	iorwf	(___lmul@multiplier+2),w
	iorwf	(___lmul@multiplier+1),w
	iorwf	(___lmul@multiplier),w
	skipz
	goto	u1901
	goto	u1900
u1901:
	goto	l3124
u1900:
	line	128
	
l3132:	
	movf	(___lmul@product+3),w
	movwf	(?___lmul+3)
	movf	(___lmul@product+2),w
	movwf	(?___lmul+2)
	movf	(___lmul@product+1),w
	movwf	(?___lmul+1)
	movf	(___lmul@product),w
	movwf	(?___lmul)

	line	129
	
l854:	
	return
	callstack 0
GLOBAL	__end_of___lmul
	__end_of___lmul:
	signat	___lmul,8316
	global	___aldiv

;; *************** function ___aldiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files\Microchip\xc8\v2.35\pic\sources\c99\common\aldiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         4    0[BANK0 ] long 
;;  dividend        4    4[BANK0 ] long 
;; Auto vars:     Size  Location     Type
;;  quotient        4   10[BANK0 ] long 
;;  sign            1    9[BANK0 ] unsigned char 
;;  counter         1    8[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    0[BANK0 ] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       8       0       0
;;      Locals:         0       6       0       0
;;      Temps:          1       0       0       0
;;      Totals:         1      14       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Serial_begin
;; This function uses a non-reentrant model
;;
psect	text62,local,class=CODE,delta=2,merge=1,group=2
	file	"C:\Program Files\Microchip\xc8\v2.35\pic\sources\c99\common\aldiv.c"
	line	5
global __ptext62
__ptext62:	;psect for function ___aldiv
psect	text62
	file	"C:\Program Files\Microchip\xc8\v2.35\pic\sources\c99\common\aldiv.c"
	line	5
	
___aldiv:	
;incstack = 0
	callstack 12
; Regs used in ___aldiv: [wreg+status,2+status,0]
	line	13
	
l3136:	
	movlb 0	; select bank0
	clrf	(___aldiv@sign)
	line	14
	
l3138:	
	btfss	(___aldiv@divisor+3),7
	goto	u1911
	goto	u1910
u1911:
	goto	l905
u1910:
	line	15
	
l3140:	
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
	
l905:	
	line	18
	btfss	(___aldiv@dividend+3),7
	goto	u1921
	goto	u1920
u1921:
	goto	l3146
u1920:
	line	19
	
l3142:	
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
	
l3144:	
	movlw	low(01h)
	movwf	(??___aldiv+0)+0
	movf	(??___aldiv+0)+0,w
	xorwf	(___aldiv@sign),f
	line	22
	
l3146:	
	movlw	high highword(0)
	movwf	(___aldiv@quotient+3)
	movlw	low highword(0)
	movwf	(___aldiv@quotient+2)
	movlw	high(0)
	movwf	(___aldiv@quotient+1)
	movlw	low(0)
	movwf	(___aldiv@quotient)

	line	23
	
l3148:	
	movf	(___aldiv@divisor+3),w
	iorwf	(___aldiv@divisor+2),w
	iorwf	(___aldiv@divisor+1),w
	iorwf	(___aldiv@divisor),w
	skipnz
	goto	u1931
	goto	u1930
u1931:
	goto	l3168
u1930:
	line	24
	
l3150:	
	clrf	(___aldiv@counter)
	incf	(___aldiv@counter),f
	line	25
	goto	l3154
	line	26
	
l3152:	
	movlw	01h
u1945:
	lslf	(___aldiv@divisor),f
	rlf	(___aldiv@divisor+1),f
	rlf	(___aldiv@divisor+2),f
	rlf	(___aldiv@divisor+3),f
	decfsz	wreg,f
	goto	u1945
	line	27
	movlw	low(01h)
	movwf	(??___aldiv+0)+0
	movf	(??___aldiv+0)+0,w
	addwf	(___aldiv@counter),f
	line	25
	
l3154:	
	btfss	(___aldiv@divisor+3),(31)&7
	goto	u1951
	goto	u1950
u1951:
	goto	l3152
u1950:
	line	30
	
l3156:	
	movlw	01h
u1965:
	lslf	(___aldiv@quotient),f
	rlf	(___aldiv@quotient+1),f
	rlf	(___aldiv@quotient+2),f
	rlf	(___aldiv@quotient+3),f
	decfsz	wreg,f
	goto	u1965
	line	31
	
l3158:	
	movf	(___aldiv@divisor+3),w
	subwf	(___aldiv@dividend+3),w
	skipz
	goto	u1975
	movf	(___aldiv@divisor+2),w
	subwf	(___aldiv@dividend+2),w
	skipz
	goto	u1975
	movf	(___aldiv@divisor+1),w
	subwf	(___aldiv@dividend+1),w
	skipz
	goto	u1975
	movf	(___aldiv@divisor),w
	subwf	(___aldiv@dividend),w
u1975:
	skipc
	goto	u1971
	goto	u1970
u1971:
	goto	l3164
u1970:
	line	32
	
l3160:	
	movf	(___aldiv@divisor),w
	subwf	(___aldiv@dividend),f
	movf	(___aldiv@divisor+1),w
	subwfb	(___aldiv@dividend+1),f
	movf	(___aldiv@divisor+2),w
	subwfb	(___aldiv@dividend+2),f
	movf	(___aldiv@divisor+3),w
	subwfb	(___aldiv@dividend+3),f
	line	33
	
l3162:	
	bsf	(___aldiv@quotient)+(0/8),(0)&7
	line	35
	
l3164:	
	movlw	01h
u1985:
	lsrf	(___aldiv@divisor+3),f
	rrf	(___aldiv@divisor+2),f
	rrf	(___aldiv@divisor+1),f
	rrf	(___aldiv@divisor),f
	decfsz	wreg,f
	goto	u1985

	line	36
	
l3166:	
	movlw	01h
	subwf	(___aldiv@counter),f
	btfss	status,2
	goto	u1991
	goto	u1990
u1991:
	goto	l3156
u1990:
	line	38
	
l3168:	
	movf	((___aldiv@sign)),w
	btfsc	status,2
	goto	u2001
	goto	u2000
u2001:
	goto	l3172
u2000:
	line	39
	
l3170:	
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
	
l3172:	
	movf	(___aldiv@quotient+3),w
	movwf	(?___aldiv+3)
	movf	(___aldiv@quotient+2),w
	movwf	(?___aldiv+2)
	movf	(___aldiv@quotient+1),w
	movwf	(?___aldiv+1)
	movf	(___aldiv@quotient),w
	movwf	(?___aldiv)

	line	41
	
l915:	
	return
	callstack 0
GLOBAL	__end_of___aldiv
	__end_of___aldiv:
	signat	___aldiv,8316
	global	_SPI_initialize

;; *************** function _SPI_initialize *****************
;; Defined at:
;;		line 4 in file "F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/spi_master.c"
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
psect	text63,local,class=CODE,delta=2,merge=1,group=1
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/spi_master.c"
	line	4
global __ptext63
__ptext63:	;psect for function _SPI_initialize
psect	text63
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/spi_master.c"
	line	4
	
_SPI_initialize:	
;incstack = 0
	callstack 13
; Regs used in _SPI_initialize: [wreg+status,2]
	line	6
	
l3178:	
	movlb 4	; select bank4
	bcf	(4269/8)^0200h,(4269)&7	;volatile
	line	7
	
l3180:	
	movlw	low(040h)
	movwf	(532)^0200h	;volatile
	line	8
	
l3182:	
	movlb 1	; select bank1
	bsf	(1132/8)^080h,(1132)&7	;volatile
	line	9
	
l3184:	
	bcf	(1143/8)^080h,(1143)&7	;volatile
	line	10
	
l3186:	
	bcf	(1134/8)^080h,(1134)&7	;volatile
	line	11
	
l3188:	
	movlb 4	; select bank4
	movf	(533)^0200h,w	;volatile
	andlw	0F0h
	iorlw	02h
	movwf	(533)^0200h	;volatile
	line	12
	
l3190:	
	bsf	(4269/8)^0200h,(4269)&7	;volatile
	line	22
	
l772:	
	return
	callstack 0
GLOBAL	__end_of_SPI_initialize
	__end_of_SPI_initialize:
	signat	_SPI_initialize,89
	global	_ISR

;; *************** function _ISR *****************
;; Defined at:
;;		line 153 in file "F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/app/src/main.c"
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
	line	153
	
_ISR:	
;incstack = 0
	callstack 2
	bsf int$flags,0 ;set compiler interrupt flag (level 1)
; Regs used in _ISR: [wreg+status,2+status,0+pclath+cstack]
psect	intentry
	pagesel	$
	line	155
	
i1l3344:	
	fcall	_timeISR
	line	156
	
i1l117:	
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
psect	text65,local,class=CODE,delta=2,merge=1,group=1
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/timer.c"
	line	47
global __ptext65
__ptext65:	;psect for function _timeISR
psect	text65
	file	"F:/GitHub/Graduation-Project/Moduls/DOOR16f1828/libs/timer.c"
	line	47
	
_timeISR:	
;incstack = 0
	callstack 2
; Regs used in _timeISR: [wreg]
	line	49
	
i1l3272:	
	movlb 0	; select bank0
	btfss	(136/8),(136)&7	;volatile
	goto	u207_21
	goto	u207_20
u207_21:
	goto	i1l817
u207_20:
	line	51
	
i1l3274:	
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
	
i1l3276:	
	movlb 0	; select bank0
	bcf	(136/8),(136)&7	;volatile
	line	54
	
i1l817:	
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

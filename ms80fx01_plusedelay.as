opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 10920"

opt pagewidth 120

	opt lm

	processor	16F684
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
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
	FNCALL	_main,_System_init
	FNCALL	_main,_GPIO_Init
	FNCALL	_main,_Timer2_Init
	FNCALL	_main,_LED_Study_End
	FNCALL	_main,_Read_EEPROM_u16
	FNCALL	_main,_KEY_Scan
	FNCALL	_main,_Control
	FNCALL	_KEY_Scan,_Write_EEPROM_u16
	FNCALL	_Write_EEPROM_u16,_Write_EEPROM_u8
	FNCALL	_Read_EEPROM_u16,_Read_EEPROM_u8
	FNROOT	_main
	FNCALL	_ISR,_Timer2_Overflow_SR
	FNCALL	intlevel1,_ISR
	global	intlevel1
	FNROOT	intlevel1
	global	_PWM_set
	global	_Set_Time
	global	_count
	global	_FLAG_DELAY
	global	_FLAG_MAICHONG
	global	_Flag_Timer2Overflow
	global	_Set_Flag
	global	_delay_flag
	global	_maichong_flag
	global	_number
	global	_FSR
psect	text202,local,class=CODE,delta=2
global __ptext202
__ptext202:
_FSR	set	4
	DABS	1,4,1	;_FSR

	global	_INDF
_INDF	set	0
	DABS	1,0,1	;_INDF

	global	_PCL
_PCL	set	2
	DABS	1,2,1	;_PCL

	global	_PCLATH
_PCLATH	set	10
	DABS	1,10,1	;_PCLATH

	global	_PORTA
_PORTA	set	5
	DABS	1,5,1	;_PORTA

	global	_SFR06
_SFR06	set	6
	DABS	1,6,1	;_SFR06

	global	_SFR07
_SFR07	set	7
	DABS	1,7,1	;_SFR07

	global	_SFR08
_SFR08	set	8
	DABS	1,8,1	;_SFR08

	global	_SFR09
_SFR09	set	9
	DABS	1,9,1	;_SFR09

	global	_STATUS
_STATUS	set	3
	DABS	1,3,1	;_STATUS

	global	_TMR0
_TMR0	set	1
	DABS	1,1,1	;_TMR0

	global	_CCPR1
_CCPR1	set	19
	DABS	1,19,2	;_CCPR1

	global	_TMR1
_TMR1	set	14
	DABS	1,14,2	;_TMR1

	global	_ADCON0
_ADCON0	set	31
	DABS	1,31,1	;_ADCON0

	global	_ADRESH
_ADRESH	set	30
	DABS	1,30,1	;_ADRESH

	global	_CCP1CON
_CCP1CON	set	21
	DABS	1,21,1	;_CCP1CON

	global	_CCPR1H
_CCPR1H	set	20
	DABS	1,20,1	;_CCPR1H

	global	_CCPR1L
_CCPR1L	set	19
	DABS	1,19,1	;_CCPR1L

	global	_CMCON0
_CMCON0	set	25
	DABS	1,25,1	;_CMCON0

	global	_CMCON1
_CMCON1	set	26
	DABS	1,26,1	;_CMCON1

	global	_ECCPAS
_ECCPAS	set	23
	DABS	1,23,1	;_ECCPAS

	global	_INTCONbits
_INTCONbits	set	11
	DABS	1,11,1	;_INTCONbits

	global	_MSCKCONbits
_MSCKCONbits	set	27
	DABS	1,27,1	;_MSCKCONbits

	global	_PCLATHbits
_PCLATHbits	set	10
	DABS	1,10,1	;_PCLATHbits

	global	_PIR1bits
_PIR1bits	set	12
	DABS	1,12,1	;_PIR1bits

	global	_PORTAbits
_PORTAbits	set	5
	DABS	1,5,1	;_PORTAbits

	global	_PORTC
_PORTC	set	7
	DABS	1,7,1	;_PORTC

	global	_PWM1CON
_PWM1CON	set	22
	DABS	1,22,1	;_PWM1CON

	global	_SFR00
_SFR00	set	0
	DABS	1,0,1	;_SFR00

	global	_SFR01
_SFR01	set	1
	DABS	1,1,1	;_SFR01

	global	_SFR02
_SFR02	set	2
	DABS	1,2,1	;_SFR02

	global	_SFR03
_SFR03	set	3
	DABS	1,3,1	;_SFR03

	global	_SFR04
_SFR04	set	4
	DABS	1,4,1	;_SFR04

	global	_SFR05
_SFR05	set	5
	DABS	1,5,1	;_SFR05

	global	_SFR0A
_SFR0A	set	10
	DABS	1,10,1	;_SFR0A

	global	_SFR0B
_SFR0B	set	11
	DABS	1,11,1	;_SFR0B

	global	_SFR0C
_SFR0C	set	12
	DABS	1,12,1	;_SFR0C

	global	_SFR11
_SFR11	set	17
	DABS	1,17,1	;_SFR11

	global	_SFR12
_SFR12	set	18
	DABS	1,18,1	;_SFR12

	global	_SFR18
_SFR18	set	24
	DABS	1,24,1	;_SFR18

	global	_SFR1B
_SFR1B	set	27
	DABS	1,27,1	;_SFR1B

	global	_SFR1C
_SFR1C	set	28
	DABS	1,28,1	;_SFR1C

	global	_SFR1D
_SFR1D	set	29
	DABS	1,29,1	;_SFR1D

	global	_SOSCPRHbits
_SOSCPRHbits	set	29
	DABS	1,29,1	;_SOSCPRHbits

	global	_STATUSbits
_STATUSbits	set	3
	DABS	1,3,1	;_STATUSbits

	global	_T1CON
_T1CON	set	16
	DABS	1,16,1	;_T1CON

	global	_T2CONbits
_T2CONbits	set	18
	DABS	1,18,1	;_T2CONbits

	global	_TMR1H
_TMR1H	set	15
	DABS	1,15,1	;_TMR1H

	global	_TMR1L
_TMR1L	set	14
	DABS	1,14,1	;_TMR1L

	global	_WDTCONbits
_WDTCONbits	set	24
	DABS	1,24,1	;_WDTCONbits

	global	_ADFM
_ADFM	set	255
	DABS	1,31,1	;_ADFM

	global	_ADIF
_ADIF	set	102
	DABS	1,12,1	;_ADIF

	global	_ADON
_ADON	set	248
	DABS	1,31,1	;_ADON

	global	_C
_C	set	24
	DABS	1,3,1	;_C

	global	_C1IF
_C1IF	set	99
	DABS	1,12,1	;_C1IF

	global	_C1INV
_C1INV	set	204
	DABS	1,25,1	;_C1INV

	global	_C1OUT
_C1OUT	set	206
	DABS	1,25,1	;_C1OUT

	global	_C2IF
_C2IF	set	100
	DABS	1,12,1	;_C2IF

	global	_C2INV
_C2INV	set	205
	DABS	1,25,1	;_C2INV

	global	_C2OUT
_C2OUT	set	207
	DABS	1,25,1	;_C2OUT

	global	_C2SYNC
_C2SYNC	set	208
	DABS	1,26,1	;_C2SYNC

	global	_CARRY
_CARRY	set	24
	DABS	1,3,1	;_CARRY

	global	_CCP1IF
_CCP1IF	set	101
	DABS	1,12,1	;_CCP1IF

	global	_CCP1M0
_CCP1M0	set	168
	DABS	1,21,1	;_CCP1M0

	global	_CCP1M1
_CCP1M1	set	169
	DABS	1,21,1	;_CCP1M1

	global	_CCP1M2
_CCP1M2	set	170
	DABS	1,21,1	;_CCP1M2

	global	_CCP1M3
_CCP1M3	set	171
	DABS	1,21,1	;_CCP1M3

	global	_CHS0
_CHS0	set	250
	DABS	1,31,1	;_CHS0

	global	_CHS1
_CHS1	set	251
	DABS	1,31,1	;_CHS1

	global	_CHS2
_CHS2	set	252
	DABS	1,31,1	;_CHS2

	global	_CIS
_CIS	set	203
	DABS	1,25,1	;_CIS

	global	_CKCNTI
_CKCNTI	set	217
	DABS	1,27,1	;_CKCNTI

	global	_CKMAVG
_CKMAVG	set	218
	DABS	1,27,1	;_CKMAVG

	global	_CKMEAIF
_CKMEAIF	set	102
	DABS	1,12,1	;_CKMEAIF

	global	_CM0
_CM0	set	200
	DABS	1,25,1	;_CM0

	global	_CM1
_CM1	set	201
	DABS	1,25,1	;_CM1

	global	_CM2
_CM2	set	202
	DABS	1,25,1	;_CM2

	global	_DC
_DC	set	25
	DABS	1,3,1	;_DC

	global	_DC1B0
_DC1B0	set	172
	DABS	1,21,1	;_DC1B0

	global	_DC1B1
_DC1B1	set	173
	DABS	1,21,1	;_DC1B1

	global	_ECCPAS0
_ECCPAS0	set	188
	DABS	1,23,1	;_ECCPAS0

	global	_ECCPAS1
_ECCPAS1	set	189
	DABS	1,23,1	;_ECCPAS1

	global	_ECCPAS2
_ECCPAS2	set	190
	DABS	1,23,1	;_ECCPAS2

	global	_ECCPASE
_ECCPASE	set	191
	DABS	1,23,1	;_ECCPASE

	global	_ECCPIF
_ECCPIF	set	101
	DABS	1,12,1	;_ECCPIF

	global	_EEIF
_EEIF	set	103
	DABS	1,12,1	;_EEIF

	global	_GIE
_GIE	set	95
	DABS	1,11,1	;_GIE

	global	_GO
_GO	set	249
	DABS	1,31,1	;_GO

	global	_GO_DONE
_GO_DONE	set	249
	DABS	1,31,1	;_GO_DONE

	global	_GO_nDONE
_GO_nDONE	set	249
	DABS	1,31,1	;_GO_nDONE

	global	_HC
_HC	set	25
	DABS	1,3,1	;_HC

	global	_INTE
_INTE	set	92
	DABS	1,11,1	;_INTE

	global	_INTF
_INTF	set	89
	DABS	1,11,1	;_INTF

	global	_IRP
_IRP	set	31
	DABS	1,3,1	;_IRP

	global	_OSFIF
_OSFIF	set	98
	DABS	1,12,1	;_OSFIF

	global	_P1M0
_P1M0	set	174
	DABS	1,21,1	;_P1M0

	global	_P1M1
_P1M1	set	175
	DABS	1,21,1	;_P1M1

	global	_PA0
_PA0	set	40
	DABS	1,5,1	;_PA0

	global	_PA1
_PA1	set	41
	DABS	1,5,1	;_PA1

	global	_PA2
_PA2	set	42
	DABS	1,5,1	;_PA2

	global	_PA3
_PA3	set	43
	DABS	1,5,1	;_PA3

	global	_PA4
_PA4	set	44
	DABS	1,5,1	;_PA4

	global	_PA5
_PA5	set	45
	DABS	1,5,1	;_PA5

	global	_PAGE
_PAGE	set	29
	DABS	1,3,1	;_PAGE

	global	_PAIE
_PAIE	set	91
	DABS	1,11,1	;_PAIE

	global	_PAIF
_PAIF	set	88
	DABS	1,11,1	;_PAIF

	global	_PDC0
_PDC0	set	176
	DABS	1,22,1	;_PDC0

	global	_PDC1
_PDC1	set	177
	DABS	1,22,1	;_PDC1

	global	_PDC2
_PDC2	set	178
	DABS	1,22,1	;_PDC2

	global	_PDC3
_PDC3	set	179
	DABS	1,22,1	;_PDC3

	global	_PDC4
_PDC4	set	180
	DABS	1,22,1	;_PDC4

	global	_PDC5
_PDC5	set	181
	DABS	1,22,1	;_PDC5

	global	_PDC6
_PDC6	set	182
	DABS	1,22,1	;_PDC6

	global	_PEIE
_PEIE	set	94
	DABS	1,11,1	;_PEIE

	global	_PRSEN
_PRSEN	set	183
	DABS	1,22,1	;_PRSEN

	global	_PSSAC0
_PSSAC0	set	186
	DABS	1,23,1	;_PSSAC0

	global	_PSSAC1
_PSSAC1	set	187
	DABS	1,23,1	;_PSSAC1

	global	_PSSBD0
_PSSBD0	set	184
	DABS	1,23,1	;_PSSBD0

	global	_PSSBD1
_PSSBD1	set	185
	DABS	1,23,1	;_PSSBD1

	global	_RA0
_RA0	set	40
	DABS	1,5,1	;_RA0

	global	_RA1
_RA1	set	41
	DABS	1,5,1	;_RA1

	global	_RA2
_RA2	set	42
	DABS	1,5,1	;_RA2

	global	_RA3
_RA3	set	43
	DABS	1,5,1	;_RA3

	global	_RA4
_RA4	set	44
	DABS	1,5,1	;_RA4

	global	_RA5
_RA5	set	45
	DABS	1,5,1	;_RA5

	global	_RAIE
_RAIE	set	91
	DABS	1,11,1	;_RAIE

	global	_RAIF
_RAIF	set	88
	DABS	1,11,1	;_RAIF

	global	_RC0
_RC0	set	56
	DABS	1,7,1	;_RC0

	global	_RC1
_RC1	set	57
	DABS	1,7,1	;_RC1

	global	_RC2
_RC2	set	58
	DABS	1,7,1	;_RC2

	global	_RC3
_RC3	set	59
	DABS	1,7,1	;_RC3

	global	_RC4
_RC4	set	60
	DABS	1,7,1	;_RC4

	global	_RC5
_RC5	set	61
	DABS	1,7,1	;_RC5

	global	_RP
_RP	set	29
	DABS	1,3,1	;_RP

	global	_RP0
_RP0	set	29
	DABS	1,3,1	;_RP0

	global	_RP1
_RP1	set	30
	DABS	1,3,1	;_RP1

	global	_SLVREN
_SLVREN	set	220
	DABS	1,27,1	;_SLVREN

	global	_SWDTEN
_SWDTEN	set	192
	DABS	1,24,1	;_SWDTEN

	global	_T0IE
_T0IE	set	93
	DABS	1,11,1	;_T0IE

	global	_T0IF
_T0IF	set	90
	DABS	1,11,1	;_T0IF

	global	_T1CKPS0
_T1CKPS0	set	132
	DABS	1,16,1	;_T1CKPS0

	global	_T1CKPS1
_T1CKPS1	set	133
	DABS	1,16,1	;_T1CKPS1

	global	_T1GINV
_T1GINV	set	135
	DABS	1,16,1	;_T1GINV

	global	_T1GSS
_T1GSS	set	209
	DABS	1,26,1	;_T1GSS

	global	_T1IF
_T1IF	set	96
	DABS	1,12,1	;_T1IF

	global	_T1OSCEN
_T1OSCEN	set	131
	DABS	1,16,1	;_T1OSCEN

	global	_T2CKPS0
_T2CKPS0	set	144
	DABS	1,18,1	;_T2CKPS0

	global	_T2CKPS1
_T2CKPS1	set	145
	DABS	1,18,1	;_T2CKPS1

	global	_T2IF
_T2IF	set	97
	DABS	1,12,1	;_T2IF

	global	_TMR0IE
_TMR0IE	set	93
	DABS	1,11,1	;_TMR0IE

	global	_TMR0IF
_TMR0IF	set	90
	DABS	1,11,1	;_TMR0IF

	global	_TMR1CS
_TMR1CS	set	129
	DABS	1,16,1	;_TMR1CS

	global	_TMR1GE
_TMR1GE	set	134
	DABS	1,16,1	;_TMR1GE

	global	_TMR1IF
_TMR1IF	set	96
	DABS	1,12,1	;_TMR1IF

	global	_TMR1ON
_TMR1ON	set	128
	DABS	1,16,1	;_TMR1ON

	global	_TMR2IF
_TMR2IF	set	97
	DABS	1,12,1	;_TMR2IF

	global	_TMR2ON
_TMR2ON	set	146
	DABS	1,18,1	;_TMR2ON

	global	_TOUTPS0
_TOUTPS0	set	147
	DABS	1,18,1	;_TOUTPS0

	global	_TOUTPS1
_TOUTPS1	set	148
	DABS	1,18,1	;_TOUTPS1

	global	_TOUTPS2
_TOUTPS2	set	149
	DABS	1,18,1	;_TOUTPS2

	global	_TOUTPS3
_TOUTPS3	set	150
	DABS	1,18,1	;_TOUTPS3

	global	_VCFG
_VCFG	set	254
	DABS	1,31,1	;_VCFG

	global	_WDTPS0
_WDTPS0	set	193
	DABS	1,24,1	;_WDTPS0

	global	_WDTPS1
_WDTPS1	set	194
	DABS	1,24,1	;_WDTPS1

	global	_WDTPS2
_WDTPS2	set	195
	DABS	1,24,1	;_WDTPS2

	global	_WDTPS3
_WDTPS3	set	196
	DABS	1,24,1	;_WDTPS3

	global	_Z
_Z	set	26
	DABS	1,3,1	;_Z

	global	_ZERO
_ZERO	set	26
	DABS	1,3,1	;_ZERO

	global	_nDONE
_nDONE	set	249
	DABS	1,31,1	;_nDONE

	global	_nPD
_nPD	set	27
	DABS	1,3,1	;_nPD

	global	_nPF
_nPF	set	27
	DABS	1,3,1	;_nPF

	global	_nT1SYNC
_nT1SYNC	set	130
	DABS	1,16,1	;_nT1SYNC

	global	_nTF
_nTF	set	28
	DABS	1,3,1	;_nTF

	global	_nTO
_nTO	set	28
	DABS	1,3,1	;_nTO

	global	_OPTION
_OPTION	set	129
	DABS	1,129,1	;_OPTION

	global	_SFR80
_SFR80	set	128
	DABS	1,128,1	;_SFR80

	global	_ADCON1
_ADCON1	set	159
	DABS	1,159,1	;_ADCON1

	global	_ADRESL
_ADRESL	set	158
	DABS	1,158,1	;_ADRESL

	global	_ANSEL
_ANSEL	set	145
	DABS	1,145,1	;_ANSEL

	global	_EECON1bits
_EECON1bits	set	156
	DABS	1,156,1	;_EECON1bits

	global	_EECON2bits
_EECON2bits	set	157
	DABS	1,157,1	;_EECON2bits

	global	_EEDATA
_EEDATA	set	154
	DABS	1,154,1	;_EEDATA

	global	_IOC
_IOC	set	150
	DABS	1,150,1	;_IOC

	global	_IOCAbits
_IOCAbits	set	150
	DABS	1,150,1	;_IOCAbits

	global	_OPTION_REG
_OPTION_REG	set	129
	DABS	1,129,1	;_OPTION_REG

	global	_OPTIONbits
_OPTIONbits	set	129
	DABS	1,129,1	;_OPTIONbits

	global	_OSCCONbits
_OSCCONbits	set	143
	DABS	1,143,1	;_OSCCONbits

	global	_OSCTUNE
_OSCTUNE	set	144
	DABS	1,144,1	;_OSCTUNE

	global	_PCONbits
_PCONbits	set	142
	DABS	1,142,1	;_PCONbits

	global	_PIE1bits
_PIE1bits	set	140
	DABS	1,140,1	;_PIE1bits

	global	_SFR81
_SFR81	set	129
	DABS	1,129,1	;_SFR81

	global	_SFR85
_SFR85	set	133
	DABS	1,133,1	;_SFR85

	global	_SFR8C
_SFR8C	set	140
	DABS	1,140,1	;_SFR8C

	global	_SFR8E
_SFR8E	set	142
	DABS	1,142,1	;_SFR8E

	global	_SFR8F
_SFR8F	set	143
	DABS	1,143,1	;_SFR8F

	global	_SFR92
_SFR92	set	146
	DABS	1,146,1	;_SFR92

	global	_SFR95
_SFR95	set	149
	DABS	1,149,1	;_SFR95

	global	_SFR96
_SFR96	set	150
	DABS	1,150,1	;_SFR96

	global	_SFR9A
_SFR9A	set	154
	DABS	1,154,1	;_SFR9A

	global	_SFR9B
_SFR9B	set	155
	DABS	1,155,1	;_SFR9B

	global	_SFR9C
_SFR9C	set	156
	DABS	1,156,1	;_SFR9C

	global	_SFR9D
_SFR9D	set	157
	DABS	1,157,1	;_SFR9D

	global	_TRISAbits
_TRISAbits	set	133
	DABS	1,133,1	;_TRISAbits

	global	_TRISC
_TRISC	set	135
	DABS	1,135,1	;_TRISC

	global	_VRCON
_VRCON	set	153
	DABS	1,153,1	;_VRCON

	global	_WPU
_WPU	set	149
	DABS	1,149,1	;_WPU

	global	_WPUAbits
_WPUAbits	set	149
	DABS	1,149,1	;_WPUAbits

	global	_ADCS0
_ADCS0	set	1276
	DABS	1,159,1	;_ADCS0

	global	_ADCS1
_ADCS1	set	1277
	DABS	1,159,1	;_ADCS1

	global	_ADCS2
_ADCS2	set	1278
	DABS	1,159,1	;_ADCS2

	global	_ADIE
_ADIE	set	1126
	DABS	1,140,1	;_ADIE

	global	_ANS0
_ANS0	set	1160
	DABS	1,145,1	;_ANS0

	global	_ANS1
_ANS1	set	1161
	DABS	1,145,1	;_ANS1

	global	_ANS2
_ANS2	set	1162
	DABS	1,145,1	;_ANS2

	global	_ANS3
_ANS3	set	1163
	DABS	1,145,1	;_ANS3

	global	_ANS4
_ANS4	set	1164
	DABS	1,145,1	;_ANS4

	global	_ANS5
_ANS5	set	1165
	DABS	1,145,1	;_ANS5

	global	_ANS6
_ANS6	set	1166
	DABS	1,145,1	;_ANS6

	global	_ANS7
_ANS7	set	1167
	DABS	1,145,1	;_ANS7

	global	_C1IE
_C1IE	set	1123
	DABS	1,140,1	;_C1IE

	global	_C2IE
_C2IE	set	1124
	DABS	1,140,1	;_C2IE

	global	_CCP1IE
_CCP1IE	set	1125
	DABS	1,140,1	;_CCP1IE

	global	_CKMEAIE
_CKMEAIE	set	1126
	DABS	1,140,1	;_CKMEAIE

	global	_ECCPIE
_ECCPIE	set	1125
	DABS	1,140,1	;_ECCPIE

	global	_EEIE
_EEIE	set	1127
	DABS	1,140,1	;_EEIE

	global	_HFIOFR
_HFIOFR	set	1146
	DABS	1,143,1	;_HFIOFR

	global	_HTS
_HTS	set	1146
	DABS	1,143,1	;_HTS

	global	_INTEDG
_INTEDG	set	1038
	DABS	1,129,1	;_INTEDG

	global	_IOC0
_IOC0	set	1200
	DABS	1,150,1	;_IOC0

	global	_IOC1
_IOC1	set	1201
	DABS	1,150,1	;_IOC1

	global	_IOC2
_IOC2	set	1202
	DABS	1,150,1	;_IOC2

	global	_IOC3
_IOC3	set	1203
	DABS	1,150,1	;_IOC3

	global	_IOC4
_IOC4	set	1204
	DABS	1,150,1	;_IOC4

	global	_IOC5
_IOC5	set	1205
	DABS	1,150,1	;_IOC5

	global	_IOCA0
_IOCA0	set	1200
	DABS	1,150,1	;_IOCA0

	global	_IOCA1
_IOCA1	set	1201
	DABS	1,150,1	;_IOCA1

	global	_IOCA2
_IOCA2	set	1202
	DABS	1,150,1	;_IOCA2

	global	_IOCA3
_IOCA3	set	1203
	DABS	1,150,1	;_IOCA3

	global	_IOCA4
_IOCA4	set	1204
	DABS	1,150,1	;_IOCA4

	global	_IOCA5
_IOCA5	set	1205
	DABS	1,150,1	;_IOCA5

	global	_IRCF0
_IRCF0	set	1148
	DABS	1,143,1	;_IRCF0

	global	_IRCF1
_IRCF1	set	1149
	DABS	1,143,1	;_IRCF1

	global	_IRCF2
_IRCF2	set	1150
	DABS	1,143,1	;_IRCF2

	global	_LFIOFR
_LFIOFR	set	1145
	DABS	1,143,1	;_LFIOFR

	global	_LFMOD
_LFMOD	set	1151
	DABS	1,143,1	;_LFMOD

	global	_LTS
_LTS	set	1145
	DABS	1,143,1	;_LTS

	global	_OSFIE
_OSFIE	set	1122
	DABS	1,140,1	;_OSFIE

	global	_OSTS
_OSTS	set	1147
	DABS	1,143,1	;_OSTS

	global	_PS0
_PS0	set	1032
	DABS	1,129,1	;_PS0

	global	_PS1
_PS1	set	1033
	DABS	1,129,1	;_PS1

	global	_PS2
_PS2	set	1034
	DABS	1,129,1	;_PS2

	global	_PSA
_PSA	set	1035
	DABS	1,129,1	;_PSA

	global	_RD
_RD	set	1248
	DABS	1,156,1	;_RD

	global	_SBODEN
_SBODEN	set	1140
	DABS	1,142,1	;_SBODEN

	global	_SBOREN
_SBOREN	set	1140
	DABS	1,142,1	;_SBOREN

	global	_SCS
_SCS	set	1144
	DABS	1,143,1	;_SCS

	global	_T0CS
_T0CS	set	1037
	DABS	1,129,1	;_T0CS

	global	_T0SE
_T0SE	set	1036
	DABS	1,129,1	;_T0SE

	global	_T1IE
_T1IE	set	1120
	DABS	1,140,1	;_T1IE

	global	_T2IE
_T2IE	set	1121
	DABS	1,140,1	;_T2IE

	global	_TMR1IE
_TMR1IE	set	1120
	DABS	1,140,1	;_TMR1IE

	global	_TMR2IE
_TMR2IE	set	1121
	DABS	1,140,1	;_TMR2IE

	global	_TRISA0
_TRISA0	set	1064
	DABS	1,133,1	;_TRISA0

	global	_TRISA1
_TRISA1	set	1065
	DABS	1,133,1	;_TRISA1

	global	_TRISA2
_TRISA2	set	1066
	DABS	1,133,1	;_TRISA2

	global	_TRISA3
_TRISA3	set	1067
	DABS	1,133,1	;_TRISA3

	global	_TRISA4
_TRISA4	set	1068
	DABS	1,133,1	;_TRISA4

	global	_TRISA5
_TRISA5	set	1069
	DABS	1,133,1	;_TRISA5

	global	_TRISC0
_TRISC0	set	1080
	DABS	1,135,1	;_TRISC0

	global	_TRISC1
_TRISC1	set	1081
	DABS	1,135,1	;_TRISC1

	global	_TRISC2
_TRISC2	set	1082
	DABS	1,135,1	;_TRISC2

	global	_TRISC3
_TRISC3	set	1083
	DABS	1,135,1	;_TRISC3

	global	_TRISC4
_TRISC4	set	1084
	DABS	1,135,1	;_TRISC4

	global	_TRISC5
_TRISC5	set	1085
	DABS	1,135,1	;_TRISC5

	global	_TUN0
_TUN0	set	1152
	DABS	1,144,1	;_TUN0

	global	_TUN1
_TUN1	set	1153
	DABS	1,144,1	;_TUN1

	global	_TUN2
_TUN2	set	1154
	DABS	1,144,1	;_TUN2

	global	_TUN3
_TUN3	set	1155
	DABS	1,144,1	;_TUN3

	global	_TUN4
_TUN4	set	1156
	DABS	1,144,1	;_TUN4

	global	_ULPWUE
_ULPWUE	set	1141
	DABS	1,142,1	;_ULPWUE

	global	_VR0
_VR0	set	1224
	DABS	1,153,1	;_VR0

	global	_VR1
_VR1	set	1225
	DABS	1,153,1	;_VR1

	global	_VR2
_VR2	set	1226
	DABS	1,153,1	;_VR2

	global	_VR3
_VR3	set	1227
	DABS	1,153,1	;_VR3

	global	_VREN
_VREN	set	1231
	DABS	1,153,1	;_VREN

	global	_VRR
_VRR	set	1229
	DABS	1,153,1	;_VRR

	global	_WPU0
_WPU0	set	1192
	DABS	1,149,1	;_WPU0

	global	_WPU1
_WPU1	set	1193
	DABS	1,149,1	;_WPU1

	global	_WPU2
_WPU2	set	1194
	DABS	1,149,1	;_WPU2

	global	_WPU4
_WPU4	set	1196
	DABS	1,149,1	;_WPU4

	global	_WPU5
_WPU5	set	1197
	DABS	1,149,1	;_WPU5

	global	_WPUA0
_WPUA0	set	1192
	DABS	1,149,1	;_WPUA0

	global	_WPUA1
_WPUA1	set	1193
	DABS	1,149,1	;_WPUA1

	global	_WPUA2
_WPUA2	set	1194
	DABS	1,149,1	;_WPUA2

	global	_WPUA4
_WPUA4	set	1196
	DABS	1,149,1	;_WPUA4

	global	_WPUA5
_WPUA5	set	1197
	DABS	1,149,1	;_WPUA5

	global	_WR
_WR	set	1256
	DABS	1,157,1	;_WR

	global	_WREN
_WREN	set	1250
	DABS	1,156,1	;_WREN

	global	_WREN1
_WREN1	set	1250
	DABS	1,156,1	;_WREN1

	global	_WREN2
_WREN2	set	1252
	DABS	1,156,1	;_WREN2

	global	_WREN3
_WREN3	set	1253
	DABS	1,156,1	;_WREN3

	global	_WRERR
_WRERR	set	1251
	DABS	1,156,1	;_WRERR

	global	_nBOD
_nBOD	set	1136
	DABS	1,142,1	;_nBOD

	global	_nBOR
_nBOR	set	1136
	DABS	1,142,1	;_nBOR

	global	_nPAPU
_nPAPU	set	1039
	DABS	1,129,1	;_nPAPU

	global	_nPOR
_nPOR	set	1137
	DABS	1,142,1	;_nPOR

	global	_nRAPU
_nRAPU	set	1039
	DABS	1,129,1	;_nRAPU

	global	_INTCON
_INTCON	set	11
	DABS	1,11,1	;_INTCON

	global	_PIR1
_PIR1	set	12
	DABS	1,12,1	;_PIR1

	global	_SFR0D
_SFR0D	set	13
	DABS	1,13,1	;_SFR0D

	global	_SFR0E
_SFR0E	set	14
	DABS	1,14,1	;_SFR0E

	global	_SFR0F
_SFR0F	set	15
	DABS	1,15,1	;_SFR0F

	global	_SFR10
_SFR10	set	16
	DABS	1,16,1	;_SFR10

	global	_TMR2
_TMR2	set	17
	DABS	1,17,1	;_TMR2

	global	_SFR13
_SFR13	set	19
	DABS	1,19,1	;_SFR13

	global	_SFR14
_SFR14	set	20
	DABS	1,20,1	;_SFR14

	global	_SFR15
_SFR15	set	21
	DABS	1,21,1	;_SFR15

	global	_SFR16
_SFR16	set	22
	DABS	1,22,1	;_SFR16

	global	_SFR17
_SFR17	set	23
	DABS	1,23,1	;_SFR17

	global	_T2CON
_T2CON	set	18
	DABS	1,18,1	;_T2CON

	global	_WDTCON
_WDTCON	set	24
	DABS	1,24,1	;_WDTCON

	global	_MSCKCON
_MSCKCON	set	27
	DABS	1,27,1	;_MSCKCON

	global	_SFR19
_SFR19	set	25
	DABS	1,25,1	;_SFR19

	global	_SFR1A
_SFR1A	set	26
	DABS	1,26,1	;_SFR1A

	global	_SFR1E
_SFR1E	set	30
	DABS	1,30,1	;_SFR1E

	global	_SFR1F
_SFR1F	set	31
	DABS	1,31,1	;_SFR1F

	global	_SOSCPRH
_SOSCPRH	set	29
	DABS	1,29,1	;_SOSCPRH

	global	_SOSCPRL
_SOSCPRL	set	28
	DABS	1,28,1	;_SOSCPRL

	global	_SFR82
_SFR82	set	130
	DABS	1,130,1	;_SFR82

	global	_SFR83
_SFR83	set	131
	DABS	1,131,1	;_SFR83

	global	_SFR84
_SFR84	set	132
	DABS	1,132,1	;_SFR84

	global	_TRISA
_TRISA	set	133
	DABS	1,133,1	;_TRISA

	global	_PIE1
_PIE1	set	140
	DABS	1,140,1	;_PIE1

	global	_SFR86
_SFR86	set	134
	DABS	1,134,1	;_SFR86

	global	_SFR87
_SFR87	set	135
	DABS	1,135,1	;_SFR87

	global	_SFR88
_SFR88	set	136
	DABS	1,136,1	;_SFR88

	global	_SFR89
_SFR89	set	137
	DABS	1,137,1	;_SFR89

	global	_SFR8A
_SFR8A	set	138
	DABS	1,138,1	;_SFR8A

	global	_SFR8B
_SFR8B	set	139
	DABS	1,139,1	;_SFR8B

	global	_PCON
_PCON	set	142
	DABS	1,142,1	;_PCON

	global	_SFR8D
_SFR8D	set	141
	DABS	1,141,1	;_SFR8D

	global	_OSCCON
_OSCCON	set	143
	DABS	1,143,1	;_OSCCON

	global	_PR2
_PR2	set	146
	DABS	1,146,1	;_PR2

	global	_SFR90
_SFR90	set	144
	DABS	1,144,1	;_SFR90

	global	_SFR91
_SFR91	set	145
	DABS	1,145,1	;_SFR91

	global	_SFR93
_SFR93	set	147
	DABS	1,147,1	;_SFR93

	global	_SFR94
_SFR94	set	148
	DABS	1,148,1	;_SFR94

	global	_WPUA
_WPUA	set	149
	DABS	1,149,1	;_WPUA

	global	_EEDAT
_EEDAT	set	154
	DABS	1,154,1	;_EEDAT

	global	_IOCA
_IOCA	set	150
	DABS	1,150,1	;_IOCA

	global	_SFR97
_SFR97	set	151
	DABS	1,151,1	;_SFR97

	global	_SFR98
_SFR98	set	152
	DABS	1,152,1	;_SFR98

	global	_SFR99
_SFR99	set	153
	DABS	1,153,1	;_SFR99

	global	_EEADR
_EEADR	set	155
	DABS	1,155,1	;_EEADR

	global	_EECON1
_EECON1	set	156
	DABS	1,156,1	;_EECON1

	global	_EECON2
_EECON2	set	157
	DABS	1,157,1	;_EECON2

	global	_SFR9E
_SFR9E	set	158
	DABS	1,158,1	;_SFR9E

	global	_SFR9F
_SFR9F	set	159
	DABS	1,159,1	;_SFR9F

	file	"ms80fx01_plusedelay.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_PWM_set:
       ds      2

_Set_Time:
       ds      2

_count:
       ds      2

_FLAG_DELAY:
       ds      1

_FLAG_MAICHONG:
       ds      1

_Flag_Timer2Overflow:
       ds      1

_Set_Flag:
       ds      1

_delay_flag:
       ds      1

_maichong_flag:
       ds      1

_number:
       ds      1

psect clrtext,class=CODE,delta=2
global clear_ram
;	Called with FSR containing the base address, and
;	W with the last address+1
clear_ram:
	clrwdt			;clear the watchdog before getting into this loop
clrloop:
	clrf	indf		;clear RAM location pointed to by FSR
	incf	fsr,f		;increment pointer
	xorwf	fsr,w		;XOR with final address
	btfsc	status,2	;have we reached the end yet?
	retlw	0		;all done for this memory range, return
	xorwf	fsr,w		;XOR again to restore value
	goto	clrloop		;do the next byte

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	movlw	low(__pbssCOMMON)
	movwf	fsr
	movlw	low((__pbssCOMMON)+0Dh)
	fcall	clear_ram
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_Timer2_Overflow_SR
?_Timer2_Overflow_SR:	; 0 bytes @ 0x0
	global	??_Timer2_Overflow_SR
??_Timer2_Overflow_SR:	; 0 bytes @ 0x0
	global	?_System_init
?_System_init:	; 0 bytes @ 0x0
	global	?_GPIO_Init
?_GPIO_Init:	; 0 bytes @ 0x0
	global	?_Timer2_Init
?_Timer2_Init:	; 0 bytes @ 0x0
	global	?_LED_Study_End
?_LED_Study_End:	; 0 bytes @ 0x0
	global	?_KEY_Scan
?_KEY_Scan:	; 0 bytes @ 0x0
	global	?_Control
?_Control:	; 0 bytes @ 0x0
	global	?_ISR
?_ISR:	; 0 bytes @ 0x0
	global	??_ISR
??_ISR:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_Read_EEPROM_u8
?_Read_EEPROM_u8:	; 1 bytes @ 0x0
	ds	5
	global	??_System_init
??_System_init:	; 0 bytes @ 0x5
	global	??_GPIO_Init
??_GPIO_Init:	; 0 bytes @ 0x5
	global	??_Timer2_Init
??_Timer2_Init:	; 0 bytes @ 0x5
	global	??_LED_Study_End
??_LED_Study_End:	; 0 bytes @ 0x5
	global	??_Control
??_Control:	; 0 bytes @ 0x5
	global	?_Write_EEPROM_u8
?_Write_EEPROM_u8:	; 0 bytes @ 0x5
	global	??_Read_EEPROM_u8
??_Read_EEPROM_u8:	; 0 bytes @ 0x5
	global	Write_EEPROM_u8@EEDatas
Write_EEPROM_u8@EEDatas:	; 1 bytes @ 0x5
	ds	1
	global	??_Write_EEPROM_u8
??_Write_EEPROM_u8:	; 0 bytes @ 0x6
	global	Read_EEPROM_u8@EEAddress
Read_EEPROM_u8@EEAddress:	; 1 bytes @ 0x6
	ds	1
	global	Write_EEPROM_u8@EEAddress
Write_EEPROM_u8@EEAddress:	; 1 bytes @ 0x7
	global	Read_EEPROM_u8@EepromData
Read_EEPROM_u8@EepromData:	; 1 bytes @ 0x7
	ds	1
	global	?_Write_EEPROM_u16
?_Write_EEPROM_u16:	; 0 bytes @ 0x8
	global	?_Read_EEPROM_u16
?_Read_EEPROM_u16:	; 2 bytes @ 0x8
	global	Write_EEPROM_u16@EEDatas
Write_EEPROM_u16@EEDatas:	; 2 bytes @ 0x8
	ds	2
	global	??_Read_EEPROM_u16
??_Read_EEPROM_u16:	; 0 bytes @ 0xA
	global	??_Write_EEPROM_u16
??_Write_EEPROM_u16:	; 0 bytes @ 0xA
	ds	1
	global	Write_EEPROM_u16@EEAddress
Write_EEPROM_u16@EEAddress:	; 1 bytes @ 0xB
	ds	1
	global	??_KEY_Scan
??_KEY_Scan:	; 0 bytes @ 0xC
	global	Read_EEPROM_u16@EEAddress
Read_EEPROM_u16@EEAddress:	; 1 bytes @ 0xC
	ds	1
	global	Read_EEPROM_u16@EepromData
Read_EEPROM_u16@EepromData:	; 2 bytes @ 0xD
	ds	2
	global	??_main
??_main:	; 0 bytes @ 0xF
;;Data sizes: Strings 0, constant 0, data 0, bss 13, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          62     15      28

;;
;; Pointer list with targets:

;; ?_Read_EEPROM_u16	unsigned int  size(1) Largest target is 0
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_Read_EEPROM_u16
;;   _KEY_Scan->_Write_EEPROM_u16
;;   _Write_EEPROM_u16->_Write_EEPROM_u8
;;   _Read_EEPROM_u16->_Read_EEPROM_u8
;;
;; Critical Paths under _ISR in COMMON
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 0     0      0     180
;;                        _System_init
;;                          _GPIO_Init
;;                        _Timer2_Init
;;                      _LED_Study_End
;;                    _Read_EEPROM_u16
;;                           _KEY_Scan
;;                            _Control
;; ---------------------------------------------------------------------------------
;; (1) _KEY_Scan                                             2     2      0      90
;;                                             12 COMMON     2     2      0
;;                   _Write_EEPROM_u16
;; ---------------------------------------------------------------------------------
;; (2) _Write_EEPROM_u16                                     4     2      2      90
;;                                              8 COMMON     4     2      2
;;                    _Write_EEPROM_u8
;; ---------------------------------------------------------------------------------
;; (1) _Control                                              2     2      0       0
;;                                              5 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; (1) _Read_EEPROM_u16                                      7     5      2      90
;;                                              8 COMMON     7     5      2
;;                     _Read_EEPROM_u8
;; ---------------------------------------------------------------------------------
;; (1) _LED_Study_End                                        2     2      0       0
;;                                              5 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; (2) _Read_EEPROM_u8                                       3     3      0      30
;;                                              5 COMMON     3     3      0
;; ---------------------------------------------------------------------------------
;; (3) _Write_EEPROM_u8                                      3     2      1      30
;;                                              5 COMMON     3     2      1
;; ---------------------------------------------------------------------------------
;; (1) _Timer2_Init                                          1     1      0       0
;;                                              5 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; (1) _GPIO_Init                                            0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _System_init                                          1     1      0       0
;;                                              5 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 3
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (4) _ISR                                                  5     5      0       0
;;                                              0 COMMON     5     5      0
;;                 _Timer2_Overflow_SR
;; ---------------------------------------------------------------------------------
;; (5) _Timer2_Overflow_SR                                   0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 5
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _System_init
;;   _GPIO_Init
;;   _Timer2_Init
;;   _LED_Study_End
;;   _Read_EEPROM_u16
;;     _Read_EEPROM_u8
;;   _KEY_Scan
;;     _Write_EEPROM_u16
;;       _Write_EEPROM_u8
;;   _Control
;;
;; _ISR (ROOT)
;;   _Timer2_Overflow_SR
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON           3E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON              3E      F      1C       1       45.2%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       7       2        0.0%
;;ABS                  0      0      1C       3        0.0%
;;DATA                 0      0      23       4        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 68 in file "MS80FX01_PluseDelay.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON
;;      Params:         0
;;      Locals:         0
;;      Temps:          0
;;      Totals:         0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_System_init
;;		_GPIO_Init
;;		_Timer2_Init
;;		_LED_Study_End
;;		_Read_EEPROM_u16
;;		_KEY_Scan
;;		_Control
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"MS80FX01_PluseDelay.c"
	line	68
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 3
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	69
	
l2506:	
;MS80FX01_PluseDelay.c: 69: System_init();
	fcall	_System_init
	line	70
	
l2508:	
;MS80FX01_PluseDelay.c: 70: GPIO_Init();
	fcall	_GPIO_Init
	line	71
	
l2510:	
;MS80FX01_PluseDelay.c: 71: Timer2_Init();
	fcall	_Timer2_Init
	line	72
	
l2512:	
;MS80FX01_PluseDelay.c: 72: RA5 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(45/8),(45)&7
	line	73
	
l2514:	
;MS80FX01_PluseDelay.c: 73: LED_Study_End();
	fcall	_LED_Study_End
	line	74
	
l2516:	
;MS80FX01_PluseDelay.c: 74: Set_Time = Read_EEPROM_u16(0x00);
	movlw	(0)
	fcall	_Read_EEPROM_u16
	movf	(1+(?_Read_EEPROM_u16)),w
	clrf	(_Set_Time+1)
	addwf	(_Set_Time+1)
	movf	(0+(?_Read_EEPROM_u16)),w
	clrf	(_Set_Time)
	addwf	(_Set_Time)

	line	75
	
l2518:	
;MS80FX01_PluseDelay.c: 75: if(Set_Time == 0XFFFF) Set_Time = 20;
	movlw	high(0FFFFh)
	xorwf	(_Set_Time+1),w
	skipz
	goto	u2445
	movlw	low(0FFFFh)
	xorwf	(_Set_Time),w
u2445:

	skipz
	goto	u2441
	goto	u2440
u2441:
	goto	l2522
u2440:
	
l2520:	
	movlw	low(014h)
	movwf	(_Set_Time)
	movlw	high(014h)
	movwf	((_Set_Time))+1
	goto	l2522
	
l480:	
	goto	l2522
	line	77
;MS80FX01_PluseDelay.c: 77: while(1) {
	
l481:	
	line	78
	
l2522:	
;MS80FX01_PluseDelay.c: 78: KEY_Scan();
	fcall	_KEY_Scan
	line	79
	
l2524:	
;MS80FX01_PluseDelay.c: 79: Control();
	fcall	_Control
	goto	l2522
	line	80
	
l482:	
	line	77
	goto	l2522
	
l483:	
	line	81
	
l484:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_KEY_Scan
psect	text203,local,class=CODE,delta=2
global __ptext203
__ptext203:

;; *************** function _KEY_Scan *****************
;; Defined at:
;;		line 197 in file "MS80FX01_PluseDelay.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON
;;      Params:         0
;;      Locals:         0
;;      Temps:          2
;;      Totals:         2
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_Write_EEPROM_u16
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text203
	file	"MS80FX01_PluseDelay.c"
	line	197
	global	__size_of_KEY_Scan
	__size_of_KEY_Scan	equ	__end_of_KEY_Scan-_KEY_Scan
	
_KEY_Scan:	
	opt	stack 3
; Regs used in _KEY_Scan: [wreg+status,2+status,0+pclath+cstack]
	line	198
	
l2474:	
;MS80FX01_PluseDelay.c: 198: if(RA0 == 0) {
	bcf	status, 5	;RP0=0, select bank0
	btfsc	(40/8),(40)&7
	goto	u2401
	goto	u2400
u2401:
	goto	l2496
u2400:
	line	199
	
l2476:	
;MS80FX01_PluseDelay.c: 199: _delay((unsigned long)((20)*(16000000/4000.0)));
	opt asmopt_off
movlw	104
movwf	((??_KEY_Scan+0)+0+1),f
	movlw	228
movwf	((??_KEY_Scan+0)+0),f
u2457:
	decfsz	((??_KEY_Scan+0)+0),f
	goto	u2457
	decfsz	((??_KEY_Scan+0)+0+1),f
	goto	u2457
	clrwdt
opt asmopt_on

	line	200
	
l2478:	
;MS80FX01_PluseDelay.c: 200: if(RA0 == 0) {
	bcf	status, 5	;RP0=0, select bank0
	btfsc	(40/8),(40)&7
	goto	u2411
	goto	u2410
u2411:
	goto	l2486
u2410:
	line	201
	
l2480:	
;MS80FX01_PluseDelay.c: 201: number=1;
	clrf	(_number)
	bsf	status,0
	rlf	(_number),f
	line	202
;MS80FX01_PluseDelay.c: 202: Set_Flag=1;
	clrf	(_Set_Flag)
	bsf	status,0
	rlf	(_Set_Flag),f
	line	203
	
l2482:	
;MS80FX01_PluseDelay.c: 203: RA5 = 0;
	bcf	(45/8),(45)&7
	line	204
	
l2484:	
;MS80FX01_PluseDelay.c: 204: RA4 = 1;
	bsf	(44/8),(44)&7
	line	205
;MS80FX01_PluseDelay.c: 205: } else if(Set_Flag == 1) {
	goto	l529
	
l524:	
	
l2486:	
	movf	(_Set_Flag),w
	xorlw	01h
	skipz
	goto	u2421
	goto	u2420
u2421:
	goto	l529
u2420:
	line	206
	
l2488:	
;MS80FX01_PluseDelay.c: 206: RA5 = 0;
	bcf	(45/8),(45)&7
	line	207
;MS80FX01_PluseDelay.c: 207: RA4 = 0;
	bcf	(44/8),(44)&7
	line	209
;MS80FX01_PluseDelay.c: 209: number=0;
	clrf	(_number)
	line	210
;MS80FX01_PluseDelay.c: 210: Set_Flag=0;
	clrf	(_Set_Flag)
	line	211
	
l2490:	
;MS80FX01_PluseDelay.c: 211: Set_Time = PWM_set;
	movf	(_PWM_set+1),w
	clrf	(_Set_Time+1)
	addwf	(_Set_Time+1)
	movf	(_PWM_set),w
	clrf	(_Set_Time)
	addwf	(_Set_Time)

	line	212
	
l2492:	
;MS80FX01_PluseDelay.c: 212: Write_EEPROM_u16(0x00,Set_Time);
	movf	(_Set_Time+1),w
	clrf	(?_Write_EEPROM_u16+1)
	addwf	(?_Write_EEPROM_u16+1)
	movf	(_Set_Time),w
	clrf	(?_Write_EEPROM_u16)
	addwf	(?_Write_EEPROM_u16)

	movlw	(0)
	fcall	_Write_EEPROM_u16
	line	214
	
l2494:	
;MS80FX01_PluseDelay.c: 214: PWM_set=0;
	clrf	(_PWM_set)
	clrf	(_PWM_set+1)
	goto	l529
	line	215
	
l526:	
	goto	l529
	line	216
	
l525:	
;MS80FX01_PluseDelay.c: 215: }
;MS80FX01_PluseDelay.c: 216: } else if(Set_Flag == 1) {
	goto	l529
	
l523:	
	
l2496:	
	movf	(_Set_Flag),w
	xorlw	01h
	skipz
	goto	u2431
	goto	u2430
u2431:
	goto	l529
u2430:
	line	217
	
l2498:	
;MS80FX01_PluseDelay.c: 217: RA5 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(45/8),(45)&7
	line	218
;MS80FX01_PluseDelay.c: 218: RA4 = 0;
	bcf	(44/8),(44)&7
	line	219
;MS80FX01_PluseDelay.c: 219: number=0;
	clrf	(_number)
	line	220
;MS80FX01_PluseDelay.c: 220: Set_Flag = 0;
	clrf	(_Set_Flag)
	line	221
	
l2500:	
;MS80FX01_PluseDelay.c: 221: Set_Time = PWM_set;
	movf	(_PWM_set+1),w
	clrf	(_Set_Time+1)
	addwf	(_Set_Time+1)
	movf	(_PWM_set),w
	clrf	(_Set_Time)
	addwf	(_Set_Time)

	line	222
	
l2502:	
;MS80FX01_PluseDelay.c: 222: Write_EEPROM_u16(0x00,Set_Time);
	movf	(_Set_Time+1),w
	clrf	(?_Write_EEPROM_u16+1)
	addwf	(?_Write_EEPROM_u16+1)
	movf	(_Set_Time),w
	clrf	(?_Write_EEPROM_u16)
	addwf	(?_Write_EEPROM_u16)

	movlw	(0)
	fcall	_Write_EEPROM_u16
	line	224
	
l2504:	
;MS80FX01_PluseDelay.c: 224: PWM_set=0;
	clrf	(_PWM_set)
	clrf	(_PWM_set+1)
	goto	l529
	line	225
	
l528:	
	goto	l529
	line	226
	
l527:	
	
l529:	
	return
	opt stack 0
GLOBAL	__end_of_KEY_Scan
	__end_of_KEY_Scan:
;; =============== function _KEY_Scan ends ============

	signat	_KEY_Scan,88
	global	_Write_EEPROM_u16
psect	text204,local,class=CODE,delta=2
global __ptext204
__ptext204:

;; *************** function _Write_EEPROM_u16 *****************
;; Defined at:
;;		line 248 in file "MS80FX01_PluseDelay.c"
;; Parameters:    Size  Location     Type
;;  EEAddress       1    wreg     unsigned char 
;;  EEDatas         2    8[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  EEAddress       1   11[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON
;;      Params:         2
;;      Locals:         1
;;      Temps:          1
;;      Totals:         4
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_Write_EEPROM_u8
;; This function is called by:
;;		_KEY_Scan
;; This function uses a non-reentrant model
;;
psect	text204
	file	"MS80FX01_PluseDelay.c"
	line	248
	global	__size_of_Write_EEPROM_u16
	__size_of_Write_EEPROM_u16	equ	__end_of_Write_EEPROM_u16-_Write_EEPROM_u16
	
_Write_EEPROM_u16:	
	opt	stack 3
; Regs used in _Write_EEPROM_u16: [wreg+status,2+status,0+pclath+cstack]
;Write_EEPROM_u16@EEAddress stored from wreg
	movwf	(Write_EEPROM_u16@EEAddress)
	line	249
	
l2472:	
;MS80FX01_PluseDelay.c: 249: Write_EEPROM_u8(EEAddress,(EEDatas>>8)&0xff);
	movf	(Write_EEPROM_u16@EEDatas+1),w
	movwf	(??_Write_EEPROM_u16+0)+0
	movf	(??_Write_EEPROM_u16+0)+0,w
	movwf	(?_Write_EEPROM_u8)
	movf	(Write_EEPROM_u16@EEAddress),w
	fcall	_Write_EEPROM_u8
	line	250
;MS80FX01_PluseDelay.c: 250: Write_EEPROM_u8(EEAddress+1,EEDatas&0xff);
	movf	(Write_EEPROM_u16@EEDatas),w
	movwf	(??_Write_EEPROM_u16+0)+0
	movf	(??_Write_EEPROM_u16+0)+0,w
	movwf	(?_Write_EEPROM_u8)
	movf	(Write_EEPROM_u16@EEAddress),w
	addlw	01h
	fcall	_Write_EEPROM_u8
	line	251
	
l535:	
	return
	opt stack 0
GLOBAL	__end_of_Write_EEPROM_u16
	__end_of_Write_EEPROM_u16:
;; =============== function _Write_EEPROM_u16 ends ============

	signat	_Write_EEPROM_u16,8312
	global	_Control
psect	text205,local,class=CODE,delta=2
global __ptext205
__ptext205:

;; *************** function _Control *****************
;; Defined at:
;;		line 121 in file "MS80FX01_PluseDelay.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON
;;      Params:         0
;;      Locals:         0
;;      Temps:          2
;;      Totals:         2
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text205
	file	"MS80FX01_PluseDelay.c"
	line	121
	global	__size_of_Control
	__size_of_Control	equ	__end_of_Control-_Control
	
_Control:	
	opt	stack 5
; Regs used in _Control: [wreg+status,2+status,0]
	line	122
	
l2432:	
;MS80FX01_PluseDelay.c: 122: if(RA2 == 0) {
	bcf	status, 5	;RP0=0, select bank0
	btfsc	(42/8),(42)&7
	goto	u2321
	goto	u2320
u2321:
	goto	l496
u2320:
	line	123
	
l2434:	
;MS80FX01_PluseDelay.c: 123: FLAG_MAICHONG = 0;
	clrf	(_FLAG_MAICHONG)
	line	124
;MS80FX01_PluseDelay.c: 124: WPUA1=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1193/8)^080h,(1193)&7
	line	125
;MS80FX01_PluseDelay.c: 125: if(RA1 == 1) {
	bcf	status, 5	;RP0=0, select bank0
	btfss	(41/8),(41)&7
	goto	u2331
	goto	u2330
u2331:
	goto	l2448
u2330:
	line	126
	
l2436:	
;MS80FX01_PluseDelay.c: 126: delay_flag = 0;
	clrf	(_delay_flag)
	line	127
;MS80FX01_PluseDelay.c: 127: RA5 = 1;
	bsf	(45/8),(45)&7
	line	128
	
l2438:	
;MS80FX01_PluseDelay.c: 128: _delay((unsigned long)((20)*(16000000/4000.0)));
	opt asmopt_off
movlw	104
movwf	((??_Control+0)+0+1),f
	movlw	228
movwf	((??_Control+0)+0),f
u2467:
	decfsz	((??_Control+0)+0),f
	goto	u2467
	decfsz	((??_Control+0)+0+1),f
	goto	u2467
	clrwdt
opt asmopt_on

	line	129
	
l2440:	
;MS80FX01_PluseDelay.c: 129: count=0;
	clrf	(_count)
	clrf	(_count+1)
	line	130
	
l2442:	
;MS80FX01_PluseDelay.c: 130: if(RA1 != 0)
	bcf	status, 5	;RP0=0, select bank0
	btfss	(41/8),(41)&7
	goto	u2341
	goto	u2340
u2341:
	goto	l2446
u2340:
	line	131
	
l2444:	
;MS80FX01_PluseDelay.c: 131: FLAG_DELAY=0;
	clrf	(_FLAG_DELAY)
	goto	l510
	line	132
	
l498:	
	line	133
	
l2446:	
;MS80FX01_PluseDelay.c: 132: else
;MS80FX01_PluseDelay.c: 133: FLAG_DELAY=1;
	clrf	(_FLAG_DELAY)
	bsf	status,0
	rlf	(_FLAG_DELAY),f
	goto	l510
	
l499:	
	line	134
;MS80FX01_PluseDelay.c: 134: } else {
	goto	l510
	
l497:	
	line	135
	
l2448:	
;MS80FX01_PluseDelay.c: 135: if(delay_flag == 0) {
	movf	(_delay_flag),f
	skipz
	goto	u2351
	goto	u2350
u2351:
	goto	l510
u2350:
	line	136
	
l2450:	
;MS80FX01_PluseDelay.c: 136: delay_flag=1;
	clrf	(_delay_flag)
	bsf	status,0
	rlf	(_delay_flag),f
	line	137
;MS80FX01_PluseDelay.c: 137: FLAG_DELAY=1;
	clrf	(_FLAG_DELAY)
	bsf	status,0
	rlf	(_FLAG_DELAY),f
	goto	l510
	line	138
	
l501:	
	goto	l510
	line	140
	
l500:	
	line	141
;MS80FX01_PluseDelay.c: 138: }
;MS80FX01_PluseDelay.c: 140: }
;MS80FX01_PluseDelay.c: 141: } else {
	goto	l510
	
l496:	
	line	142
;MS80FX01_PluseDelay.c: 142: WPUA1=1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1193/8)^080h,(1193)&7
	line	143
;MS80FX01_PluseDelay.c: 143: FLAG_DELAY=0;
	clrf	(_FLAG_DELAY)
	line	144
;MS80FX01_PluseDelay.c: 144: if(RA1 != 0) {
	bcf	status, 5	;RP0=0, select bank0
	btfss	(41/8),(41)&7
	goto	u2361
	goto	u2360
u2361:
	goto	l503
u2360:
	line	145
	
l2452:	
;MS80FX01_PluseDelay.c: 145: if(maichong_flag == 0) {
	movf	(_maichong_flag),f
	skipz
	goto	u2371
	goto	u2370
u2371:
	goto	l2460
u2370:
	line	146
	
l2454:	
;MS80FX01_PluseDelay.c: 146: maichong_flag = 1;
	clrf	(_maichong_flag)
	bsf	status,0
	rlf	(_maichong_flag),f
	line	147
	
l2456:	
;MS80FX01_PluseDelay.c: 147: count = 0;
	clrf	(_count)
	clrf	(_count+1)
	line	148
	
l2458:	
;MS80FX01_PluseDelay.c: 148: RA5 = 1;
	bsf	(45/8),(45)&7
	goto	l2460
	line	149
	
l504:	
	line	150
	
l2460:	
;MS80FX01_PluseDelay.c: 149: }
;MS80FX01_PluseDelay.c: 150: delay_flag = 0;
	clrf	(_delay_flag)
	line	151
	
l2462:	
;MS80FX01_PluseDelay.c: 151: FLAG_MAICHONG = 1;
	clrf	(_FLAG_MAICHONG)
	bsf	status,0
	rlf	(_FLAG_MAICHONG),f
	line	152
	
l2464:	
;MS80FX01_PluseDelay.c: 152: _delay((unsigned long)((5)*(16000000/4000.0)));
	opt asmopt_off
movlw	26
movwf	((??_Control+0)+0+1),f
	movlw	248
movwf	((??_Control+0)+0),f
u2477:
	decfsz	((??_Control+0)+0),f
	goto	u2477
	decfsz	((??_Control+0)+0+1),f
	goto	u2477
	clrwdt
opt asmopt_on

	line	153
	
l2466:	
;MS80FX01_PluseDelay.c: 153: if(RA1 != 0)
	bcf	status, 5	;RP0=0, select bank0
	btfss	(41/8),(41)&7
	goto	u2381
	goto	u2380
u2381:
	goto	l505
u2380:
	line	154
	
l2468:	
;MS80FX01_PluseDelay.c: 154: FLAG_MAICHONG=1;
	clrf	(_FLAG_MAICHONG)
	bsf	status,0
	rlf	(_FLAG_MAICHONG),f
	goto	l510
	line	155
	
l505:	
	line	156
;MS80FX01_PluseDelay.c: 155: else
;MS80FX01_PluseDelay.c: 156: FLAG_MAICHONG=0;
	clrf	(_FLAG_MAICHONG)
	goto	l510
	
l506:	
	line	157
;MS80FX01_PluseDelay.c: 157: } else {
	goto	l510
	
l503:	
	line	158
;MS80FX01_PluseDelay.c: 158: FLAG_MAICHONG=0;
	clrf	(_FLAG_MAICHONG)
	line	159
;MS80FX01_PluseDelay.c: 159: maichong_flag=0;
	clrf	(_maichong_flag)
	line	160
;MS80FX01_PluseDelay.c: 160: if(RA0 == 0) {
	btfsc	(40/8),(40)&7
	goto	u2391
	goto	u2390
u2391:
	goto	l508
u2390:
	line	161
	
l2470:	
;MS80FX01_PluseDelay.c: 161: RA4 = 1;
	bsf	(44/8),(44)&7
	line	162
;MS80FX01_PluseDelay.c: 162: } else {
	goto	l510
	
l508:	
	line	163
;MS80FX01_PluseDelay.c: 163: RA4 = 0;
	bcf	(44/8),(44)&7
	line	164
;MS80FX01_PluseDelay.c: 164: RA5 = 0;
	bcf	(45/8),(45)&7
	goto	l510
	line	165
	
l509:	
	goto	l510
	line	166
	
l507:	
	goto	l510
	line	167
	
l502:	
	line	168
	
l510:	
	return
	opt stack 0
GLOBAL	__end_of_Control
	__end_of_Control:
;; =============== function _Control ends ============

	signat	_Control,88
	global	_Read_EEPROM_u16
psect	text206,local,class=CODE,delta=2
global __ptext206
__ptext206:

;; *************** function _Read_EEPROM_u16 *****************
;; Defined at:
;;		line 254 in file "MS80FX01_PluseDelay.c"
;; Parameters:    Size  Location     Type
;;  EEAddress       1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  EEAddress       1   12[COMMON] unsigned char 
;;  EepromData      2   13[COMMON] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    8[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON
;;      Params:         2
;;      Locals:         3
;;      Temps:          2
;;      Totals:         7
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_Read_EEPROM_u8
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text206
	file	"MS80FX01_PluseDelay.c"
	line	254
	global	__size_of_Read_EEPROM_u16
	__size_of_Read_EEPROM_u16	equ	__end_of_Read_EEPROM_u16-_Read_EEPROM_u16
	
_Read_EEPROM_u16:	
	opt	stack 4
; Regs used in _Read_EEPROM_u16: [wreg+status,2+status,0+pclath+cstack]
;Read_EEPROM_u16@EEAddress stored from wreg
	movwf	(Read_EEPROM_u16@EEAddress)
	line	255
	
l2420:	
;MS80FX01_PluseDelay.c: 255: unsigned int EepromData=0;
	clrf	(Read_EEPROM_u16@EepromData)
	clrf	(Read_EEPROM_u16@EepromData+1)
	line	257
	
l2422:	
;MS80FX01_PluseDelay.c: 257: EepromData = Read_EEPROM_u8(EEAddress);
	movf	(Read_EEPROM_u16@EEAddress),w
	fcall	_Read_EEPROM_u8
	movwf	(??_Read_EEPROM_u16+0)+0
	clrf	(??_Read_EEPROM_u16+0)+0+1
	movf	0+(??_Read_EEPROM_u16+0)+0,w
	movwf	(Read_EEPROM_u16@EepromData)
	movf	1+(??_Read_EEPROM_u16+0)+0,w
	movwf	(Read_EEPROM_u16@EepromData+1)
	line	258
	
l2424:	
;MS80FX01_PluseDelay.c: 258: EepromData = EepromData<<8;
	movf	(Read_EEPROM_u16@EepromData),w
	movwf	(??_Read_EEPROM_u16+0)+0+1
	clrf	(??_Read_EEPROM_u16+0)+0
	movf	0+(??_Read_EEPROM_u16+0)+0,w
	movwf	(Read_EEPROM_u16@EepromData)
	movf	1+(??_Read_EEPROM_u16+0)+0,w
	movwf	(Read_EEPROM_u16@EepromData+1)
	line	259
	
l2426:	
;MS80FX01_PluseDelay.c: 259: EepromData |= Read_EEPROM_u8(EEAddress+1);
	movf	(Read_EEPROM_u16@EEAddress),w
	addlw	01h
	fcall	_Read_EEPROM_u8
	movwf	(??_Read_EEPROM_u16+0)+0
	clrf	(??_Read_EEPROM_u16+0)+0+1
	movf	0+(??_Read_EEPROM_u16+0)+0,w
	iorwf	(Read_EEPROM_u16@EepromData),f
	movf	1+(??_Read_EEPROM_u16+0)+0,w
	iorwf	(Read_EEPROM_u16@EepromData+1),f
	line	260
	
l2428:	
;MS80FX01_PluseDelay.c: 260: return EepromData;
	movf	(Read_EEPROM_u16@EepromData+1),w
	clrf	(?_Read_EEPROM_u16+1)
	addwf	(?_Read_EEPROM_u16+1)
	movf	(Read_EEPROM_u16@EepromData),w
	clrf	(?_Read_EEPROM_u16)
	addwf	(?_Read_EEPROM_u16)

	goto	l538
	
l2430:	
	line	261
	
l538:	
	return
	opt stack 0
GLOBAL	__end_of_Read_EEPROM_u16
	__end_of_Read_EEPROM_u16:
;; =============== function _Read_EEPROM_u16 ends ============

	signat	_Read_EEPROM_u16,4218
	global	_LED_Study_End
psect	text207,local,class=CODE,delta=2
global __ptext207
__ptext207:

;; *************** function _LED_Study_End *****************
;; Defined at:
;;		line 229 in file "MS80FX01_PluseDelay.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON
;;      Params:         0
;;      Locals:         0
;;      Temps:          2
;;      Totals:         2
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text207
	file	"MS80FX01_PluseDelay.c"
	line	229
	global	__size_of_LED_Study_End
	__size_of_LED_Study_End	equ	__end_of_LED_Study_End-_LED_Study_End
	
_LED_Study_End:	
	opt	stack 5
; Regs used in _LED_Study_End: [wreg]
	line	230
	
l2406:	
;MS80FX01_PluseDelay.c: 230: RA4 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(44/8),(44)&7
	line	231
	
l2408:	
;MS80FX01_PluseDelay.c: 231: _delay((unsigned long)((40)*(16000000/4000.0)));
	opt asmopt_off
movlw	208
movwf	((??_LED_Study_End+0)+0+1),f
	movlw	201
movwf	((??_LED_Study_End+0)+0),f
u2487:
	decfsz	((??_LED_Study_End+0)+0),f
	goto	u2487
	decfsz	((??_LED_Study_End+0)+0+1),f
	goto	u2487
	nop2
opt asmopt_on

	line	232
	
l2410:	
;MS80FX01_PluseDelay.c: 232: RA4 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(44/8),(44)&7
	line	233
;MS80FX01_PluseDelay.c: 233: _delay((unsigned long)((40)*(16000000/4000.0)));
	opt asmopt_off
movlw	208
movwf	((??_LED_Study_End+0)+0+1),f
	movlw	201
movwf	((??_LED_Study_End+0)+0),f
u2497:
	decfsz	((??_LED_Study_End+0)+0),f
	goto	u2497
	decfsz	((??_LED_Study_End+0)+0+1),f
	goto	u2497
	nop2
opt asmopt_on

	line	234
	
l2412:	
;MS80FX01_PluseDelay.c: 234: RA4 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(44/8),(44)&7
	line	235
;MS80FX01_PluseDelay.c: 235: _delay((unsigned long)((40)*(16000000/4000.0)));
	opt asmopt_off
movlw	208
movwf	((??_LED_Study_End+0)+0+1),f
	movlw	201
movwf	((??_LED_Study_End+0)+0),f
u2507:
	decfsz	((??_LED_Study_End+0)+0),f
	goto	u2507
	decfsz	((??_LED_Study_End+0)+0+1),f
	goto	u2507
	nop2
opt asmopt_on

	line	236
	
l2414:	
;MS80FX01_PluseDelay.c: 236: RA4 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(44/8),(44)&7
	line	237
;MS80FX01_PluseDelay.c: 237: _delay((unsigned long)((40)*(16000000/4000.0)));
	opt asmopt_off
movlw	208
movwf	((??_LED_Study_End+0)+0+1),f
	movlw	201
movwf	((??_LED_Study_End+0)+0),f
u2517:
	decfsz	((??_LED_Study_End+0)+0),f
	goto	u2517
	decfsz	((??_LED_Study_End+0)+0+1),f
	goto	u2517
	nop2
opt asmopt_on

	line	238
	
l2416:	
;MS80FX01_PluseDelay.c: 238: RA4 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(44/8),(44)&7
	line	239
;MS80FX01_PluseDelay.c: 239: _delay((unsigned long)((40)*(16000000/4000.0)));
	opt asmopt_off
movlw	208
movwf	((??_LED_Study_End+0)+0+1),f
	movlw	201
movwf	((??_LED_Study_End+0)+0),f
u2527:
	decfsz	((??_LED_Study_End+0)+0),f
	goto	u2527
	decfsz	((??_LED_Study_End+0)+0+1),f
	goto	u2527
	nop2
opt asmopt_on

	line	240
	
l2418:	
;MS80FX01_PluseDelay.c: 240: RA4 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(44/8),(44)&7
	line	241
;MS80FX01_PluseDelay.c: 241: _delay((unsigned long)((40)*(16000000/4000.0)));
	opt asmopt_off
movlw	208
movwf	((??_LED_Study_End+0)+0+1),f
	movlw	201
movwf	((??_LED_Study_End+0)+0),f
u2537:
	decfsz	((??_LED_Study_End+0)+0),f
	goto	u2537
	decfsz	((??_LED_Study_End+0)+0+1),f
	goto	u2537
	nop2
opt asmopt_on

	line	242
	
l532:	
	return
	opt stack 0
GLOBAL	__end_of_LED_Study_End
	__end_of_LED_Study_End:
;; =============== function _LED_Study_End ends ============

	signat	_LED_Study_End,88
	global	_Read_EEPROM_u8
psect	text208,local,class=CODE,delta=2
global __ptext208
__ptext208:

;; *************** function _Read_EEPROM_u8 *****************
;; Defined at:
;;		line 280 in file "MS80FX01_PluseDelay.c"
;; Parameters:    Size  Location     Type
;;  EEAddress       1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  EEAddress       1    6[COMMON] unsigned char 
;;  EepromData      1    7[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON
;;      Params:         0
;;      Locals:         2
;;      Temps:          1
;;      Totals:         3
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Read_EEPROM_u16
;; This function uses a non-reentrant model
;;
psect	text208
	file	"MS80FX01_PluseDelay.c"
	line	280
	global	__size_of_Read_EEPROM_u8
	__size_of_Read_EEPROM_u8	equ	__end_of_Read_EEPROM_u8-_Read_EEPROM_u8
	
_Read_EEPROM_u8:	
	opt	stack 4
; Regs used in _Read_EEPROM_u8: [wreg]
;Read_EEPROM_u8@EEAddress stored from wreg
	movwf	(Read_EEPROM_u8@EEAddress)
	line	281
	
l1538:	
;MS80FX01_PluseDelay.c: 281: unsigned char EepromData=0;
	clrf	(Read_EEPROM_u8@EepromData)
	line	282
	
l1540:	
;MS80FX01_PluseDelay.c: 282: EEADR = EEAddress;
	movf	(Read_EEPROM_u8@EEAddress),w
	movwf	(??_Read_EEPROM_u8+0)+0
	movf	(??_Read_EEPROM_u8+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(155)^080h	;volatile
	line	283
	
l1542:	
;MS80FX01_PluseDelay.c: 283: RD = 1;
	bsf	(1248/8)^080h,(1248)&7
	line	284
;MS80FX01_PluseDelay.c: 284: EepromData = EEDAT;
	movf	(154)^080h,w	;volatile
	movwf	(??_Read_EEPROM_u8+0)+0
	movf	(??_Read_EEPROM_u8+0)+0,w
	movwf	(Read_EEPROM_u8@EepromData)
	line	285
	
l1544:	
;MS80FX01_PluseDelay.c: 285: RD = 0;
	bcf	(1248/8)^080h,(1248)&7
	line	286
;MS80FX01_PluseDelay.c: 286: return EepromData;
	movf	(Read_EEPROM_u8@EepromData),w
	goto	l547
	
l1546:	
	line	287
	
l547:	
	return
	opt stack 0
GLOBAL	__end_of_Read_EEPROM_u8
	__end_of_Read_EEPROM_u8:
;; =============== function _Read_EEPROM_u8 ends ============

	signat	_Read_EEPROM_u8,4217
	global	_Write_EEPROM_u8
psect	text209,local,class=CODE,delta=2
global __ptext209
__ptext209:

;; *************** function _Write_EEPROM_u8 *****************
;; Defined at:
;;		line 264 in file "MS80FX01_PluseDelay.c"
;; Parameters:    Size  Location     Type
;;  EEAddress       1    wreg     unsigned char 
;;  EEDatas         1    5[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  EEAddress       1    7[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON
;;      Params:         1
;;      Locals:         1
;;      Temps:          1
;;      Totals:         3
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Write_EEPROM_u16
;; This function uses a non-reentrant model
;;
psect	text209
	file	"MS80FX01_PluseDelay.c"
	line	264
	global	__size_of_Write_EEPROM_u8
	__size_of_Write_EEPROM_u8	equ	__end_of_Write_EEPROM_u8-_Write_EEPROM_u8
	
_Write_EEPROM_u8:	
	opt	stack 3
; Regs used in _Write_EEPROM_u8: [wreg]
;Write_EEPROM_u8@EEAddress stored from wreg
	movwf	(Write_EEPROM_u8@EEAddress)
	line	265
	
l1528:	
;MS80FX01_PluseDelay.c: 265: EEADR = EEAddress;
	movf	(Write_EEPROM_u8@EEAddress),w
	movwf	(??_Write_EEPROM_u8+0)+0
	movf	(??_Write_EEPROM_u8+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(155)^080h	;volatile
	line	266
	
l1530:	
# 266 "MS80FX01_PluseDelay.c"
nop ;#
psect	text209
	line	267
;MS80FX01_PluseDelay.c: 267: EEDAT = EEDatas;
	movf	(Write_EEPROM_u8@EEDatas),w
	movwf	(??_Write_EEPROM_u8+0)+0
	movf	(??_Write_EEPROM_u8+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(154)^080h	;volatile
	line	268
;MS80FX01_PluseDelay.c: 268: EECON1 = 0x34;
	movlw	(034h)
	movwf	(??_Write_EEPROM_u8+0)+0
	movf	(??_Write_EEPROM_u8+0)+0,w
	movwf	(156)^080h	;volatile
	line	269
;MS80FX01_PluseDelay.c: 269: EECON2 = 0x01;
	movlw	(01h)
	movwf	(??_Write_EEPROM_u8+0)+0
	movf	(??_Write_EEPROM_u8+0)+0,w
	movwf	(157)^080h	;volatile
	line	270
	
l1532:	
# 270 "MS80FX01_PluseDelay.c"
nop ;#
psect	text209
	line	271
	
l1534:	
# 271 "MS80FX01_PluseDelay.c"
nop ;#
psect	text209
	line	272
	
l1536:	
# 272 "MS80FX01_PluseDelay.c"
nop ;#
psect	text209
	line	273
;MS80FX01_PluseDelay.c: 273: while(WR==1)asm("clrwdt");
	goto	l541
	
l542:	
# 273 "MS80FX01_PluseDelay.c"
clrwdt ;#
psect	text209
	
l541:	
	bsf	status, 5	;RP0=1, select bank1
	btfsc	(1256/8)^080h,(1256)&7
	goto	u101
	goto	u100
u101:
	goto	l542
u100:
	
l543:	
	line	274
;MS80FX01_PluseDelay.c: 274: WREN1 = 0;
	bcf	(1250/8)^080h,(1250)&7
	line	275
;MS80FX01_PluseDelay.c: 275: WREN2 = 0;
	bcf	(1252/8)^080h,(1252)&7
	line	276
;MS80FX01_PluseDelay.c: 276: WREN3 = 0;
	bcf	(1253/8)^080h,(1253)&7
	line	277
	
l544:	
	return
	opt stack 0
GLOBAL	__end_of_Write_EEPROM_u8
	__end_of_Write_EEPROM_u8:
;; =============== function _Write_EEPROM_u8 ends ============

	signat	_Write_EEPROM_u8,8312
	global	_Timer2_Init
psect	text210,local,class=CODE,delta=2
global __ptext210
__ptext210:

;; *************** function _Timer2_Init *****************
;; Defined at:
;;		line 93 in file "MS80FX01_PluseDelay.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON
;;      Params:         0
;;      Locals:         0
;;      Temps:          1
;;      Totals:         1
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text210
	file	"MS80FX01_PluseDelay.c"
	line	93
	global	__size_of_Timer2_Init
	__size_of_Timer2_Init	equ	__end_of_Timer2_Init-_Timer2_Init
	
_Timer2_Init:	
	opt	stack 5
; Regs used in _Timer2_Init: [wreg]
	line	94
	
l1516:	
;MS80FX01_PluseDelay.c: 94: TMR2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(17)	;volatile
	line	95
	
l1518:	
;MS80FX01_PluseDelay.c: 95: T2CON = 0x07;
	movlw	(07h)
	movwf	(??_Timer2_Init+0)+0
	movf	(??_Timer2_Init+0)+0,w
	movwf	(18)	;volatile
	line	96
;MS80FX01_PluseDelay.c: 96: PR2 = 250;
	movlw	(0FAh)
	movwf	(??_Timer2_Init+0)+0
	movf	(??_Timer2_Init+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(146)^080h	;volatile
	line	97
	
l1520:	
;MS80FX01_PluseDelay.c: 97: TMR2IF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(97/8),(97)&7
	line	98
	
l1522:	
;MS80FX01_PluseDelay.c: 98: TMR2IE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1121/8)^080h,(1121)&7
	line	99
	
l1524:	
;MS80FX01_PluseDelay.c: 99: PEIE = 1;
	bsf	(94/8),(94)&7
	line	100
	
l1526:	
;MS80FX01_PluseDelay.c: 100: GIE = 1;
	bsf	(95/8),(95)&7
	line	101
	
l490:	
	return
	opt stack 0
GLOBAL	__end_of_Timer2_Init
	__end_of_Timer2_Init:
;; =============== function _Timer2_Init ends ============

	signat	_Timer2_Init,88
	global	_GPIO_Init
psect	text211,local,class=CODE,delta=2
global __ptext211
__ptext211:

;; *************** function _GPIO_Init *****************
;; Defined at:
;;		line 104 in file "MS80FX01_PluseDelay.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON
;;      Params:         0
;;      Locals:         0
;;      Temps:          0
;;      Totals:         0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text211
	file	"MS80FX01_PluseDelay.c"
	line	104
	global	__size_of_GPIO_Init
	__size_of_GPIO_Init	equ	__end_of_GPIO_Init-_GPIO_Init
	
_GPIO_Init:	
	opt	stack 5
; Regs used in _GPIO_Init: []
	line	105
	
l1514:	
;MS80FX01_PluseDelay.c: 105: OPTION = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(129)^080h	;volatile
	line	107
;MS80FX01_PluseDelay.c: 107: TRISA0=1;
	bsf	(1064/8)^080h,(1064)&7
	line	108
;MS80FX01_PluseDelay.c: 108: TRISA1=1;
	bsf	(1065/8)^080h,(1065)&7
	line	109
;MS80FX01_PluseDelay.c: 109: TRISA2=1;
	bsf	(1066/8)^080h,(1066)&7
	line	110
;MS80FX01_PluseDelay.c: 110: TRISA4=0;
	bcf	(1068/8)^080h,(1068)&7
	line	111
;MS80FX01_PluseDelay.c: 111: TRISA5=0;
	bcf	(1069/8)^080h,(1069)&7
	line	113
;MS80FX01_PluseDelay.c: 113: WPUA0=1;
	bsf	(1192/8)^080h,(1192)&7
	line	114
;MS80FX01_PluseDelay.c: 114: WPUA1=1;
	bsf	(1193/8)^080h,(1193)&7
	line	115
;MS80FX01_PluseDelay.c: 115: WPUA2=1;
	bsf	(1194/8)^080h,(1194)&7
	line	116
;MS80FX01_PluseDelay.c: 116: WPUA4=0;
	bcf	(1196/8)^080h,(1196)&7
	line	117
;MS80FX01_PluseDelay.c: 117: WPUA5=0;
	bcf	(1197/8)^080h,(1197)&7
	line	118
	
l493:	
	return
	opt stack 0
GLOBAL	__end_of_GPIO_Init
	__end_of_GPIO_Init:
;; =============== function _GPIO_Init ends ============

	signat	_GPIO_Init,88
	global	_System_init
psect	text212,local,class=CODE,delta=2
global __ptext212
__ptext212:

;; *************** function _System_init *****************
;; Defined at:
;;		line 84 in file "MS80FX01_PluseDelay.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON
;;      Params:         0
;;      Locals:         0
;;      Temps:          1
;;      Totals:         1
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text212
	file	"MS80FX01_PluseDelay.c"
	line	84
	global	__size_of_System_init
	__size_of_System_init	equ	__end_of_System_init-_System_init
	
_System_init:	
	opt	stack 5
; Regs used in _System_init: [wreg]
	line	85
	
l1510:	
;MS80FX01_PluseDelay.c: 85: PCON = 0x03;
	movlw	(03h)
	movwf	(??_System_init+0)+0
	movf	(??_System_init+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(142)^080h	;volatile
	line	86
;MS80FX01_PluseDelay.c: 86: MSCKCON = 0x10;
	movlw	(010h)
	movwf	(??_System_init+0)+0
	movf	(??_System_init+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(27)	;volatile
	line	87
;MS80FX01_PluseDelay.c: 87: OSCCON = 0x70;
	movlw	(070h)
	movwf	(??_System_init+0)+0
	movf	(??_System_init+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(143)^080h	;volatile
	line	88
	
l1512:	
;MS80FX01_PluseDelay.c: 88: INTCON = 0x00;
	clrf	(11)	;volatile
	line	90
	
l487:	
	return
	opt stack 0
GLOBAL	__end_of_System_init
	__end_of_System_init:
;; =============== function _System_init ends ============

	signat	_System_init,88
	global	_ISR
psect	text213,local,class=CODE,delta=2
global __ptext213
__ptext213:

;; *************** function _ISR *****************
;; Defined at:
;;		line 55 in file "MS80FX01_PluseDelay.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON
;;      Params:         0
;;      Locals:         0
;;      Temps:          5
;;      Totals:         5
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_Timer2_Overflow_SR
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text213
	file	"MS80FX01_PluseDelay.c"
	line	55
	global	__size_of_ISR
	__size_of_ISR	equ	__end_of_ISR-_ISR
	
_ISR:	
	opt	stack 3
; Regs used in _ISR: [allreg]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_ISR+1)
	movf	fsr0,w
	movwf	(??_ISR+2)
	movf	pclath,w
	movwf	(??_ISR+3)
	bcf	status, 5	;RP0=0, select bank0
	movf	btemp+1,w
	movwf	(??_ISR+4)
	ljmp	_ISR
psect	text213
	line	56
	
i1l1472:	
;MS80FX01_PluseDelay.c: 56: if(TMR2IE&&TMR2IF) {
	bsf	status, 5	;RP0=1, select bank1
	btfss	(1121/8)^080h,(1121)&7
	goto	u1_21
	goto	u1_20
u1_21:
	goto	i1l477
u1_20:
	
i1l1474:	
	bcf	status, 5	;RP0=0, select bank0
	btfss	(97/8),(97)&7
	goto	u2_21
	goto	u2_20
u2_21:
	goto	i1l477
u2_20:
	line	57
	
i1l1476:	
;MS80FX01_PluseDelay.c: 57: TMR2IF = 0;
	bcf	(97/8),(97)&7
	line	58
	
i1l1478:	
;MS80FX01_PluseDelay.c: 58: Flag_Timer2Overflow++;
	movlw	(01h)
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	addwf	(_Flag_Timer2Overflow),f
	line	59
	
i1l1480:	
;MS80FX01_PluseDelay.c: 59: if(Flag_Timer2Overflow == 50) {
	movf	(_Flag_Timer2Overflow),w
	xorlw	032h
	skipz
	goto	u3_21
	goto	u3_20
u3_21:
	goto	i1l477
u3_20:
	line	60
	
i1l1482:	
;MS80FX01_PluseDelay.c: 60: Flag_Timer2Overflow=0;
	clrf	(_Flag_Timer2Overflow)
	line	61
	
i1l1484:	
;MS80FX01_PluseDelay.c: 61: Timer2_Overflow_SR();
	fcall	_Timer2_Overflow_SR
	goto	i1l477
	line	62
	
i1l476:	
	goto	i1l477
	line	63
	
i1l475:	
	line	64
	
i1l477:	
	movf	(??_ISR+4),w
	bcf	status, 5	;RP0=0, select bank0
	movwf	btemp+1
	movf	(??_ISR+3),w
	movwf	pclath
	movf	(??_ISR+2),w
	movwf	fsr0
	swapf	(??_ISR+1)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_ISR
	__end_of_ISR:
;; =============== function _ISR ends ============

	signat	_ISR,88
	global	_Timer2_Overflow_SR
psect	text214,local,class=CODE,delta=2
global __ptext214
__ptext214:

;; *************** function _Timer2_Overflow_SR *****************
;; Defined at:
;;		line 172 in file "MS80FX01_PluseDelay.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON
;;      Params:         0
;;      Locals:         0
;;      Temps:          0
;;      Totals:         0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text214
	file	"MS80FX01_PluseDelay.c"
	line	172
	global	__size_of_Timer2_Overflow_SR
	__size_of_Timer2_Overflow_SR	equ	__end_of_Timer2_Overflow_SR-_Timer2_Overflow_SR
	
_Timer2_Overflow_SR:	
	opt	stack 3
; Regs used in _Timer2_Overflow_SR: [wreg+status,2+status,0]
	line	173
	
i1l1486:	
;MS80FX01_PluseDelay.c: 173: if(number == 1) {
	movf	(_number),w
	xorlw	01h
	skipz
	goto	u4_21
	goto	u4_20
u4_21:
	goto	i1l1490
u4_20:
	line	174
	
i1l1488:	
;MS80FX01_PluseDelay.c: 174: PWM_set++;
	movlw	low(01h)
	addwf	(_PWM_set),f
	skipnc
	incf	(_PWM_set+1),f
	movlw	high(01h)
	addwf	(_PWM_set+1),f
	line	175
;MS80FX01_PluseDelay.c: 175: } else if(number == 0) {
	goto	i1l520
	
i1l513:	
	
i1l1490:	
	movf	(_number),f
	skipz
	goto	u5_21
	goto	u5_20
u5_21:
	goto	i1l520
u5_20:
	line	176
	
i1l1492:	
;MS80FX01_PluseDelay.c: 176: if(FLAG_MAICHONG == 1) {
	movf	(_FLAG_MAICHONG),w
	xorlw	01h
	skipz
	goto	u6_21
	goto	u6_20
u6_21:
	goto	i1l1500
u6_20:
	line	177
	
i1l1494:	
;MS80FX01_PluseDelay.c: 177: count++;
	movlw	low(01h)
	addwf	(_count),f
	skipnc
	incf	(_count+1),f
	movlw	high(01h)
	addwf	(_count+1),f
	line	178
;MS80FX01_PluseDelay.c: 178: if(count >= Set_Time) {
	movf	(_Set_Time+1),w
	subwf	(_count+1),w
	skipz
	goto	u7_25
	movf	(_Set_Time),w
	subwf	(_count),w
u7_25:
	skipc
	goto	u7_21
	goto	u7_20
u7_21:
	goto	i1l1500
u7_20:
	line	179
	
i1l1496:	
;MS80FX01_PluseDelay.c: 179: count = 0;
	clrf	(_count)
	clrf	(_count+1)
	line	180
	
i1l1498:	
;MS80FX01_PluseDelay.c: 180: RA5=~RA5;
	movlw	1<<((45)&7)
	bcf	status, 5	;RP0=0, select bank0
	xorwf	((45)/8),f
	goto	i1l1500
	line	181
	
i1l517:	
	goto	i1l1500
	line	182
	
i1l516:	
	line	184
	
i1l1500:	
;MS80FX01_PluseDelay.c: 181: }
;MS80FX01_PluseDelay.c: 182: }
;MS80FX01_PluseDelay.c: 184: if(FLAG_DELAY == 1) {
	movf	(_FLAG_DELAY),w
	xorlw	01h
	skipz
	goto	u8_21
	goto	u8_20
u8_21:
	goto	i1l520
u8_20:
	line	185
	
i1l1502:	
;MS80FX01_PluseDelay.c: 185: count++;
	movlw	low(01h)
	addwf	(_count),f
	skipnc
	incf	(_count+1),f
	movlw	high(01h)
	addwf	(_count+1),f
	line	186
;MS80FX01_PluseDelay.c: 186: if(count >= Set_Time) {
	movf	(_Set_Time+1),w
	subwf	(_count+1),w
	skipz
	goto	u9_25
	movf	(_Set_Time),w
	subwf	(_count),w
u9_25:
	skipc
	goto	u9_21
	goto	u9_20
u9_21:
	goto	i1l520
u9_20:
	line	187
	
i1l1504:	
;MS80FX01_PluseDelay.c: 187: RA5 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(45/8),(45)&7
	line	188
	
i1l1506:	
;MS80FX01_PluseDelay.c: 188: count = 0;
	clrf	(_count)
	clrf	(_count+1)
	line	189
	
i1l1508:	
;MS80FX01_PluseDelay.c: 189: FLAG_DELAY=0;
	clrf	(_FLAG_DELAY)
	goto	i1l520
	line	190
	
i1l519:	
	goto	i1l520
	line	191
	
i1l518:	
	goto	i1l520
	line	192
	
i1l515:	
	goto	i1l520
	line	193
	
i1l514:	
	
i1l520:	
	return
	opt stack 0
GLOBAL	__end_of_Timer2_Overflow_SR
	__end_of_Timer2_Overflow_SR:
;; =============== function _Timer2_Overflow_SR ends ============

	signat	_Timer2_Overflow_SR,88
psect	text215,local,class=CODE,delta=2
global __ptext215
__ptext215:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end

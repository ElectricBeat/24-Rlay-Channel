opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 10920"

opt pagewidth 120

	opt lm

	processor	16F877A
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
# 5 "E:\02-CODING\06-KAP CODING\02-PIC 16F877A CONTROLLER\42-AUTO START test\code\NEW 22 RELAY WITH EEPROM.c"
	psect config,class=CONFIG,delta=2 ;#
# 5 "E:\02-CODING\06-KAP CODING\02-PIC 16F877A CONTROLLER\42-AUTO START test\code\NEW 22 RELAY WITH EEPROM.c"
	dw 0X3F3A ;#
	FNCALL	_main,_Lcd_Intialization
	FNCALL	_main,_Lcd_Command
	FNCALL	_main,_Lcd_String
	FNCALL	_main,_eeprom_write
	FNCALL	_main,_RELAY_SELECTION
	FNCALL	_main,_ON_TIMER_SELECTION
	FNCALL	_main,_OFF_TIMER_SELECTION
	FNCALL	_main,_eeprom_read
	FNCALL	_main,_STATUS_READ
	FNCALL	_main,_RUN_FULL_CYCLE
	FNCALL	_main,_ADC_EEPROM_STORE
	FNCALL	_main,_EMERGCY_START_STOP
	FNCALL	_RUN_FULL_CYCLE,_Lcd_Command
	FNCALL	_RUN_FULL_CYCLE,_Lcd_String
	FNCALL	_RUN_FULL_CYCLE,_ADC_EEPROM_STORE
	FNCALL	_RUN_FULL_CYCLE,_eeprom_write
	FNCALL	_RUN_FULL_CYCLE,_divider
	FNCALL	_RUN_FULL_CYCLE,_eeprom_read
	FNCALL	_RUN_FULL_CYCLE,_EMERGCY_START_STOP
	FNCALL	_STATUS_READ,_Lcd_Command
	FNCALL	_STATUS_READ,_Lcd_String
	FNCALL	_STATUS_READ,_divider
	FNCALL	_ON_TIMER_SELECTION,_Lcd_Command
	FNCALL	_ON_TIMER_SELECTION,_Lcd_Data
	FNCALL	_ON_TIMER_SELECTION,_Lcd_String
	FNCALL	_ON_TIMER_SELECTION,___wmul
	FNCALL	_ON_TIMER_SELECTION,_eeprom_write
	FNCALL	_RELAY_SELECTION,_Lcd_Command
	FNCALL	_RELAY_SELECTION,_Lcd_String
	FNCALL	_RELAY_SELECTION,_divider
	FNCALL	_RELAY_SELECTION,_eeprom_write
	FNCALL	_OFF_TIMER_SELECTION,_Lcd_Command
	FNCALL	_OFF_TIMER_SELECTION,_Lcd_Data
	FNCALL	_OFF_TIMER_SELECTION,___wmul
	FNCALL	_OFF_TIMER_SELECTION,_eeprom_write
	FNCALL	_divider,___awdiv
	FNCALL	_divider,_Lcd_Data
	FNCALL	_divider,___awmod
	FNCALL	_Lcd_Intialization,_Lcd_Command
	FNCALL	_Lcd_String,_Lcd_Data
	FNCALL	_ADC_EEPROM_STORE,_eeprom_write
	FNCALL	_ADC_EEPROM_STORE,_eeprom_read
	FNROOT	_main
	global	_Cur_1
	global	_PORT
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"E:\02-CODING\06-KAP CODING\02-PIC 16F877A CONTROLLER\42-AUTO START test\code\NEW 22 RELAY WITH EEPROM.c"
	line	22

;initializer for _Cur_1
	retlw	02h
	retlw	0

psect	idataBANK2,class=CODE,space=0,delta=2
global __pidataBANK2
__pidataBANK2:
	line	37

;initializer for _PORT
	retlw	0
	retlw	08h
	retlw	09h
	retlw	0Ah
	retlw	0Bh
	retlw	0Ch
	retlw	0Dh
	retlw	0Eh
	retlw	0Fh
	retlw	080h
	retlw	090h
	retlw	0A0h
	retlw	0B0h
	retlw	0C0h
	retlw	0D0h
	retlw	0E0h
	retlw	0F0h
	retlw	08h
	retlw	09h
	retlw	0Ah
	retlw	0Bh
	retlw	0Ch
	retlw	0Dh
	global	_ADC_INT
	global	_ADC_SAVE_VAL
	global	_Cur_2
	global	_Cur_3
	global	_ED_COUNT
	global	_EEPROM_ADR
	global	_EM_ST_SP_COUNT
	global	_FHH
	global	_FMM
	global	_FSS
	global	_RHH
	global	_RMM
	global	_RSS
	global	_R_COUNT
	global	_SETTING_SW
	global	_STATE
	global	_TIME_STORE_ARRAY
	global	_h1
	global	_h2
	global	_m1
	global	_m2
	global	_s1
	global	_s2
	global	_CYCLE_START
	global	_F_FLAG
	global	_ON_TIME_FLAG
	global	_ON_TIME_RUN_INT
	global	_S_FLAG
	global	_T_FLAG
	global	_MM_F
	global	_SS_F
	global	_HH_F
	global	_HH_N
	global	_MM_N
	global	_SS_N
	global	_i
	global	_k
	global	_staus
	global	_ADCON0
_ADCON0	set	31
	global	_ADRESH
_ADRESH	set	30
	global	_PORTA
_PORTA	set	5
	global	_PORTB
_PORTB	set	6
	global	_PORTC
_PORTC	set	7
	global	_PORTD
_PORTD	set	8
	global	_PORTE
_PORTE	set	9
	global	_CARRY
_CARRY	set	24
	global	_GIE
_GIE	set	95
	global	_RA1
_RA1	set	41
	global	_RA2
_RA2	set	42
	global	_RA3
_RA3	set	43
	global	_RA4
_RA4	set	44
	global	_RA5
_RA5	set	45
	global	_RD2
_RD2	set	66
	global	_RD3
_RD3	set	67
	global	_ADCON1
_ADCON1	set	159
	global	_ADRESL
_ADRESL	set	158
	global	_TRISA
_TRISA	set	133
	global	_TRISB
_TRISB	set	134
	global	_TRISC
_TRISC	set	135
	global	_TRISD
_TRISD	set	136
	global	_TRISE
_TRISE	set	137
	global	_EEADR
_EEADR	set	269
	global	_EEDATA
_EEDATA	set	268
	global	_EECON1
_EECON1	set	396
	global	_EECON2
_EECON2	set	397
	global	_RD
_RD	set	3168
	global	_WR
_WR	set	3169
	global	_WREN
_WREN	set	3170
psect	strings,class=STRING,delta=2
global __pstrings
__pstrings:
;	global	stringdir,stringtab,__stringbase
stringtab:
;	String table - string pointers are 1 byte each
stringcode:stringdir:
movlw high(stringdir)
movwf pclath
movf fsr,w
incf fsr
	addwf pc
__stringbase:
	retlw	0
psect	strings
	
STR_25:	
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_24:	
	retlw	75	;'K'
	retlw	65	;'A'
	retlw	80	;'P'
	retlw	32	;' '
	retlw	65	;'A'
	retlw	85	;'U'
	retlw	84	;'T'
	retlw	79	;'O'
	retlw	77	;'M'
	retlw	65	;'A'
	retlw	84	;'T'
	retlw	73	;'I'
	retlw	79	;'O'
	retlw	78	;'N'
	retlw	0
psect	strings
	
STR_7:	
	retlw	79	;'O'
	retlw	70	;'F'
	retlw	32	;' '
	retlw	84	;'T'
	retlw	58	;':'
	retlw	32	;' '
	retlw	32	;' '
	retlw	58	;':'
	retlw	32	;' '
	retlw	32	;' '
	retlw	58	;':'
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_2:	
	retlw	79	;'O'
	retlw	78	;'N'
	retlw	32	;' '
	retlw	84	;'T'
	retlw	58	;':'
	retlw	32	;' '
	retlw	32	;' '
	retlw	58	;':'
	retlw	32	;' '
	retlw	32	;' '
	retlw	58	;':'
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_17:	
	retlw	79	;'O'
	retlw	78	;'N'
	retlw	32	;' '
	retlw	84	;'T'
	retlw	58	;':'
	retlw	48	;'0'
	retlw	48	;'0'
	retlw	58	;':'
	retlw	48	;'0'
	retlw	48	;'0'
	retlw	58	;':'
	retlw	48	;'0'
	retlw	48	;'0'
	retlw	0
psect	strings
	
STR_23:	
	retlw	67	;'C'
	retlw	79	;'O'
	retlw	77	;'M'
	retlw	80	;'P'
	retlw	76	;'L'
	retlw	69	;'E'
	retlw	84	;'T'
	retlw	69	;'E'
	retlw	68	;'D'
	retlw	0
psect	strings
	
STR_5:	
	retlw	69	;'E'
	retlw	110	;'n'
	retlw	97	;'a'
	retlw	98	;'b'
	retlw	108	;'l'
	retlw	101	;'e'
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_3:	
	retlw	69	;'E'
	retlw	110	;'n'
	retlw	47	;'/'
	retlw	68	;'D'
	retlw	105	;'i'
	retlw	115	;'s'
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_4:	
	retlw	68	;'D'
	retlw	105	;'i'
	retlw	115	;'s'
	retlw	97	;'a'
	retlw	98	;'b'
	retlw	108	;'l'
	retlw	101	;'e'
	retlw	0
psect	strings
	
STR_12:	
	retlw	79	;'O'
	retlw	70	;'F'
	retlw	32	;' '
	retlw	84	;'T'
	retlw	0
psect	strings
	
STR_11:	
	retlw	79	;'O'
	retlw	78	;'N'
	retlw	32	;' '
	retlw	84	;'T'
	retlw	0
psect	strings
	
STR_1:	
	retlw	82	;'R'
	retlw	58	;':'
	retlw	0
psect	strings
STR_13	equ	STR_4+0
STR_22	equ	STR_4+0
STR_14	equ	STR_11+0
STR_19	equ	STR_11+0
STR_21	equ	STR_11+0
STR_15	equ	STR_12+0
STR_20	equ	STR_12+0
STR_8	equ	STR_1+0
STR_16	equ	STR_1+0
STR_10	equ	STR_5+0
STR_18	equ	STR_5+0
STR_6	equ	STR_2+0
STR_9	equ	STR_2+0
	file	"NEW 22 RELAY WITH EEPROM.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bitbssBANK0,class=BANK0,bit,space=1
global __pbitbssBANK0
__pbitbssBANK0:
_CYCLE_START:
       ds      1

_F_FLAG:
       ds      1

_ON_TIME_FLAG:
       ds      1

_ON_TIME_RUN_INT:
       ds      1

_S_FLAG:
       ds      1

_T_FLAG:
       ds      1

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_ADC_INT:
       ds      2

_ADC_SAVE_VAL:
       ds      2

_Cur_2:
       ds      2

_Cur_3:
       ds      2

_ED_COUNT:
       ds      2

_EEPROM_ADR:
       ds      2

_EM_ST_SP_COUNT:
       ds      2

_FHH:
       ds      2

_FMM:
       ds      2

_FSS:
       ds      2

_RHH:
       ds      2

_RMM:
       ds      2

_RSS:
       ds      2

_R_COUNT:
       ds      2

_SETTING_SW:
       ds      2

_STATE:
       ds      2

_TIME_STORE_ARRAY:
       ds      2

_h1:
       ds      2

_h2:
       ds      2

_m1:
       ds      2

_m2:
       ds      2

_s1:
       ds      2

_s2:
       ds      2

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"E:\02-CODING\06-KAP CODING\02-PIC 16F877A CONTROLLER\42-AUTO START test\code\NEW 22 RELAY WITH EEPROM.c"
	line	22
_Cur_1:
       ds      2

psect	bssBANK1,class=BANK1,space=1
global __pbssBANK1
__pbssBANK1:
_i:
       ds      28

_k:
       ds      28

_staus:
       ds      23

psect	bssBANK3,class=BANK3,space=1
global __pbssBANK3
__pbssBANK3:
_HH_F:
       ds      23

_HH_N:
       ds      23

_MM_N:
       ds      23

_SS_N:
       ds      23

psect	bssBANK2,class=BANK2,space=1
global __pbssBANK2
__pbssBANK2:
_MM_F:
       ds      23

_SS_F:
       ds      23

psect	dataBANK2,class=BANK2,space=1
global __pdataBANK2
__pdataBANK2:
	file	"E:\02-CODING\06-KAP CODING\02-PIC 16F877A CONTROLLER\42-AUTO START test\code\NEW 22 RELAY WITH EEPROM.c"
	line	37
_PORT:
       ds      23

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

; Clear objects allocated to BITBANK0
psect cinit,class=CODE,delta=2
	clrf	((__pbitbssBANK0/8)+0)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+02Eh)
	fcall	clear_ram
; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2
	movlw	low(__pbssBANK1)
	movwf	fsr
	movlw	low((__pbssBANK1)+04Fh)
	fcall	clear_ram
; Clear objects allocated to BANK3
psect cinit,class=CODE,delta=2
	bsf	status, 7	;select IRP bank2
	movlw	low(__pbssBANK3)
	movwf	fsr
	movlw	low((__pbssBANK3)+05Ch)
	fcall	clear_ram
; Clear objects allocated to BANK2
psect cinit,class=CODE,delta=2
	movlw	low(__pbssBANK2)
	movwf	fsr
	movlw	low((__pbssBANK2)+02Eh)
	fcall	clear_ram
global btemp
psect inittext,class=CODE,delta=2
global init_fetch,btemp
;	Called with low address in FSR and high address in W
init_fetch:
	movf btemp,w
	movwf pclath
	movf btemp+1,w
	movwf pc
global init_ram
;Called with:
;	high address of idata address in btemp 
;	low address of idata address in btemp+1 
;	low address of data in FSR
;	high address + 1 of data in btemp-1
init_ram:
	fcall init_fetch
	movwf indf,f
	incf fsr,f
	movf fsr,w
	xorwf btemp-1,w
	btfsc status,2
	retlw 0
	incf btemp+1,f
	btfsc status,2
	incf btemp,f
	goto init_ram
; Initialize objects allocated to BANK2
psect cinit,class=CODE,delta=2
global init_ram, __pidataBANK2
	movlw low(__pdataBANK2+23)
	movwf btemp-1,f
	movlw high(__pidataBANK2)
	movwf btemp,f
	movlw low(__pidataBANK2)
	movwf btemp+1,f
	movlw low(__pdataBANK2)
	movwf fsr,f
	fcall init_ram
; Initialize objects allocated to BANK0
	global __pidataBANK0
psect cinit,class=CODE,delta=2
	fcall	__pidataBANK0+0		;fetch initializer
	movwf	__pdataBANK0+0&07fh		
	fcall	__pidataBANK0+1		;fetch initializer
	movwf	__pdataBANK0+1&07fh		
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	??_eeprom_read
??_eeprom_read:	; 0 bytes @ 0x0
	global	?_Lcd_Command
?_Lcd_Command:	; 0 bytes @ 0x0
	global	??_Lcd_Command
??_Lcd_Command:	; 0 bytes @ 0x0
	global	?_Lcd_Data
?_Lcd_Data:	; 0 bytes @ 0x0
	global	??_Lcd_Data
??_Lcd_Data:	; 0 bytes @ 0x0
	global	?_Lcd_String
?_Lcd_String:	; 0 bytes @ 0x0
	global	?_Lcd_Intialization
?_Lcd_Intialization:	; 0 bytes @ 0x0
	global	?_RELAY_SELECTION
?_RELAY_SELECTION:	; 0 bytes @ 0x0
	global	?_ON_TIMER_SELECTION
?_ON_TIMER_SELECTION:	; 0 bytes @ 0x0
	global	?_OFF_TIMER_SELECTION
?_OFF_TIMER_SELECTION:	; 0 bytes @ 0x0
	global	?_STATUS_READ
?_STATUS_READ:	; 0 bytes @ 0x0
	global	?_ADC_EEPROM_STORE
?_ADC_EEPROM_STORE:	; 0 bytes @ 0x0
	global	?_EMERGCY_START_STOP
?_EMERGCY_START_STOP:	; 0 bytes @ 0x0
	global	??_EMERGCY_START_STOP
??_EMERGCY_START_STOP:	; 0 bytes @ 0x0
	global	?_RUN_FULL_CYCLE
?_RUN_FULL_CYCLE:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_eeprom_write
?_eeprom_write:	; 1 bytes @ 0x0
	global	?_eeprom_read
?_eeprom_read:	; 1 bytes @ 0x0
	global	?___wmul
?___wmul:	; 2 bytes @ 0x0
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x0
	global	?___awmod
?___awmod:	; 2 bytes @ 0x0
	global	eeprom_write@value
eeprom_write@value:	; 1 bytes @ 0x0
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x0
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x0
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x0
	ds	1
	global	??_eeprom_write
??_eeprom_write:	; 0 bytes @ 0x1
	global	eeprom_read@addr
eeprom_read@addr:	; 1 bytes @ 0x1
	ds	1
	global	Lcd_Command@cmd
Lcd_Command@cmd:	; 1 bytes @ 0x2
	global	Lcd_Data@Data
Lcd_Data@Data:	; 1 bytes @ 0x2
	global	eeprom_write@addr
eeprom_write@addr:	; 1 bytes @ 0x2
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x2
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x2
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x2
	ds	1
	global	??_Lcd_String
??_Lcd_String:	; 0 bytes @ 0x3
	global	??_Lcd_Intialization
??_Lcd_Intialization:	; 0 bytes @ 0x3
	global	??_ADC_EEPROM_STORE
??_ADC_EEPROM_STORE:	; 0 bytes @ 0x3
	ds	1
	global	??___wmul
??___wmul:	; 0 bytes @ 0x4
	global	??___awdiv
??___awdiv:	; 0 bytes @ 0x4
	global	??___awmod
??___awmod:	; 0 bytes @ 0x4
	global	Lcd_String@Str
Lcd_String@Str:	; 1 bytes @ 0x4
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x4
	ds	1
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x5
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x5
	ds	1
	global	??_ON_TIMER_SELECTION
??_ON_TIMER_SELECTION:	; 0 bytes @ 0x6
	global	??_OFF_TIMER_SELECTION
??_OFF_TIMER_SELECTION:	; 0 bytes @ 0x6
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x6
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x6
	ds	1
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x7
	ds	2
	global	?_divider
?_divider:	; 0 bytes @ 0x9
	global	divider@x
divider@x:	; 2 bytes @ 0x9
	ds	2
	global	??_divider
??_divider:	; 0 bytes @ 0xB
	global	??_RELAY_SELECTION
??_RELAY_SELECTION:	; 0 bytes @ 0xB
	global	??_STATUS_READ
??_STATUS_READ:	; 0 bytes @ 0xB
	global	??_RUN_FULL_CYCLE
??_RUN_FULL_CYCLE:	; 0 bytes @ 0xB
	ds	3
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	divider@Dig1
divider@Dig1:	; 2 bytes @ 0x0
	ds	2
	global	divider@Dig2
divider@Dig2:	; 2 bytes @ 0x2
	ds	2
	global	divider@Temp
divider@Temp:	; 2 bytes @ 0x4
	ds	2
	global	??_main
??_main:	; 0 bytes @ 0x6
	ds	3
	global	main@test
main@test:	; 2 bytes @ 0x9
	ds	2
	global	main@test_1329
main@test_1329:	; 2 bytes @ 0xB
	ds	2
	global	main@a
main@a:	; 2 bytes @ 0xD
	ds	2
;;Data sizes: Strings 121, constant 0, data 25, bss 263, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     14      14
;; BANK0           80     15      64
;; BANK1           80      0      79
;; BANK3           96      0      92
;; BANK2           96      0      69

;;
;; Pointer list with targets:

;; ?___wmul	unsigned int  size(1) Largest target is 0
;;
;; ?___awmod	int  size(1) Largest target is 0
;;
;; ?___awdiv	int  size(1) Largest target is 0
;;
;; Lcd_String@Str	PTR const unsigned char  size(1) Largest target is 17
;;		 -> STR_25(CODE[17]), STR_24(CODE[15]), STR_23(CODE[10]), STR_22(CODE[8]), 
;;		 -> STR_21(CODE[5]), STR_20(CODE[5]), STR_19(CODE[5]), STR_18(CODE[8]), 
;;		 -> STR_17(CODE[14]), STR_16(CODE[3]), STR_15(CODE[5]), STR_14(CODE[5]), 
;;		 -> STR_13(CODE[8]), STR_12(CODE[5]), STR_11(CODE[5]), STR_10(CODE[8]), 
;;		 -> STR_9(CODE[14]), STR_8(CODE[3]), STR_7(CODE[14]), STR_6(CODE[14]), 
;;		 -> STR_5(CODE[8]), STR_4(CODE[8]), STR_3(CODE[8]), STR_2(CODE[14]), 
;;		 -> STR_1(CODE[3]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_STATUS_READ
;;   _main->_RUN_FULL_CYCLE
;;   _RUN_FULL_CYCLE->_divider
;;   _STATUS_READ->_divider
;;   _ON_TIMER_SELECTION->___wmul
;;   _RELAY_SELECTION->_divider
;;   _OFF_TIMER_SELECTION->___wmul
;;   _divider->___awdiv
;;   _Lcd_Intialization->_Lcd_Command
;;   _Lcd_String->_Lcd_Data
;;   _ADC_EEPROM_STORE->_eeprom_write
;;
;; Critical Paths under _main in BANK0
;;
;;   _RUN_FULL_CYCLE->_divider
;;   _STATUS_READ->_divider
;;   _RELAY_SELECTION->_divider
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 3, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 9     9      0    3948
;;                                              6 BANK0      9     9      0
;;                  _Lcd_Intialization
;;                        _Lcd_Command
;;                         _Lcd_String
;;                       _eeprom_write
;;                    _RELAY_SELECTION
;;                 _ON_TIMER_SELECTION
;;                _OFF_TIMER_SELECTION
;;                        _eeprom_read
;;                        _STATUS_READ
;;                     _RUN_FULL_CYCLE
;;                   _ADC_EEPROM_STORE
;;                 _EMERGCY_START_STOP
;; ---------------------------------------------------------------------------------
;; (1) _RUN_FULL_CYCLE                                       3     3      0    1030
;;                                             11 COMMON     3     3      0
;;                        _Lcd_Command
;;                         _Lcd_String
;;                   _ADC_EEPROM_STORE
;;                       _eeprom_write
;;                            _divider
;;                        _eeprom_read
;;                 _EMERGCY_START_STOP
;; ---------------------------------------------------------------------------------
;; (1) _STATUS_READ                                          3     3      0     886
;;                                             11 COMMON     3     3      0
;;                        _Lcd_Command
;;                         _Lcd_String
;;                            _divider
;; ---------------------------------------------------------------------------------
;; (1) _ON_TIMER_SELECTION                                   3     3      0     319
;;                                              6 COMMON     3     3      0
;;                        _Lcd_Command
;;                           _Lcd_Data
;;                         _Lcd_String
;;                             ___wmul
;;                       _eeprom_write
;; ---------------------------------------------------------------------------------
;; (1) _RELAY_SELECTION                                      1     1      0     936
;;                                             11 COMMON     1     1      0
;;                        _Lcd_Command
;;                         _Lcd_String
;;                            _divider
;;                       _eeprom_write
;; ---------------------------------------------------------------------------------
;; (1) _OFF_TIMER_SELECTION                                  3     3      0     230
;;                                              6 COMMON     3     3      0
;;                        _Lcd_Command
;;                           _Lcd_Data
;;                             ___wmul
;;                       _eeprom_write
;; ---------------------------------------------------------------------------------
;; (2) _divider                                              8     6      2     753
;;                                              9 COMMON     2     0      2
;;                                              0 BANK0      6     6      0
;;                            ___awdiv
;;                           _Lcd_Data
;;                            ___awmod
;; ---------------------------------------------------------------------------------
;; (1) _Lcd_Intialization                                    0     0      0      44
;;                        _Lcd_Command
;; ---------------------------------------------------------------------------------
;; (2) _Lcd_String                                           2     2      0      89
;;                                              3 COMMON     2     2      0
;;                           _Lcd_Data
;; ---------------------------------------------------------------------------------
;; (1) _ADC_EEPROM_STORE                                     2     2      0      72
;;                                              3 COMMON     2     2      0
;;                       _eeprom_write
;;                        _eeprom_read
;; ---------------------------------------------------------------------------------
;; (3) _Lcd_Data                                             3     3      0      44
;;                                              0 COMMON     3     3      0
;; ---------------------------------------------------------------------------------
;; (2) _Lcd_Command                                          3     3      0      44
;;                                              0 COMMON     3     3      0
;; ---------------------------------------------------------------------------------
;; (3) ___awmod                                              7     3      4     296
;;                                              0 COMMON     7     3      4
;; ---------------------------------------------------------------------------------
;; (3) ___awdiv                                              9     5      4     300
;;                                              0 COMMON     9     5      4
;; ---------------------------------------------------------------------------------
;; (2) ___wmul                                               6     2      4      92
;;                                              0 COMMON     6     2      4
;; ---------------------------------------------------------------------------------
;; (1) _EMERGCY_START_STOP                                   0     0      0       0
;; ---------------------------------------------------------------------------------
;; (2) _eeprom_read                                          2     2      0      22
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; (2) _eeprom_write                                         3     2      1      50
;;                                              0 COMMON     3     2      1
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 3
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _Lcd_Intialization
;;     _Lcd_Command
;;   _Lcd_Command
;;   _Lcd_String
;;     _Lcd_Data
;;   _eeprom_write
;;   _RELAY_SELECTION
;;     _Lcd_Command
;;     _Lcd_String
;;       _Lcd_Data
;;     _divider
;;       ___awdiv
;;       _Lcd_Data
;;       ___awmod
;;     _eeprom_write
;;   _ON_TIMER_SELECTION
;;     _Lcd_Command
;;     _Lcd_Data
;;     _Lcd_String
;;       _Lcd_Data
;;     ___wmul
;;     _eeprom_write
;;   _OFF_TIMER_SELECTION
;;     _Lcd_Command
;;     _Lcd_Data
;;     ___wmul
;;     _eeprom_write
;;   _eeprom_read
;;   _STATUS_READ
;;     _Lcd_Command
;;     _Lcd_String
;;       _Lcd_Data
;;     _divider
;;       ___awdiv
;;       _Lcd_Data
;;       ___awmod
;;   _RUN_FULL_CYCLE
;;     _Lcd_Command
;;     _Lcd_String
;;       _Lcd_Data
;;     _ADC_EEPROM_STORE
;;       _eeprom_write
;;       _eeprom_read
;;     _eeprom_write
;;     _divider
;;       ___awdiv
;;       _Lcd_Data
;;       ___awmod
;;     _eeprom_read
;;     _EMERGCY_START_STOP
;;   _ADC_EEPROM_STORE
;;     _eeprom_write
;;     _eeprom_read
;;   _EMERGCY_START_STOP
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BANK3               60      0      5C       9       95.8%
;;BITBANK3            60      0       0       8        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;BANK2               60      0      45      11       71.9%
;;BITBANK2            60      0       0      10        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR1                 0      0       0       2        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;BANK1               50      0      4F       7       98.8%
;;BITBANK1            50      0       0       6        0.0%
;;CODE                 0      0       0       0        0.0%
;;DATA                 0      0     141      12        0.0%
;;ABS                  0      0     13E       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       3       2        0.0%
;;BANK0               50      F      40       5       80.0%
;;BITBANK0            50      0       1       4        1.3%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;COMMON               E      E       E       1      100.0%
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 65 in file "E:\02-CODING\06-KAP CODING\02-PIC 16F877A CONTROLLER\42-AUTO START test\code\NEW 22 RELAY WITH EEPROM.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  test            2   11[BANK0 ] int 
;;  test            2    9[BANK0 ] int 
;;  a               2   13[BANK0 ] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0       9       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_Lcd_Intialization
;;		_Lcd_Command
;;		_Lcd_String
;;		_eeprom_write
;;		_RELAY_SELECTION
;;		_ON_TIMER_SELECTION
;;		_OFF_TIMER_SELECTION
;;		_eeprom_read
;;		_STATUS_READ
;;		_RUN_FULL_CYCLE
;;		_ADC_EEPROM_STORE
;;		_EMERGCY_START_STOP
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"E:\02-CODING\06-KAP CODING\02-PIC 16F877A CONTROLLER\42-AUTO START test\code\NEW 22 RELAY WITH EEPROM.c"
	line	65
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 5
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	66
	
l5909:	
;NEW 22 RELAY WITH EEPROM.c: 66: TRISA=0X3F;
	movlw	(03Fh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	67
	
l5911:	
;NEW 22 RELAY WITH EEPROM.c: 67: PORTA=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	69
	
l5913:	
;NEW 22 RELAY WITH EEPROM.c: 69: ADCON0=0X01;
	movlw	(01h)
	movwf	(31)	;volatile
	line	70
	
l5915:	
;NEW 22 RELAY WITH EEPROM.c: 70: ADCON1=0Xce;
	movlw	(0CEh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	72
	
l5917:	
;NEW 22 RELAY WITH EEPROM.c: 72: TRISB=0X00;
	clrf	(134)^080h	;volatile
	line	73
	
l5919:	
;NEW 22 RELAY WITH EEPROM.c: 73: PORTB=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	75
	
l5921:	
;NEW 22 RELAY WITH EEPROM.c: 75: TRISC=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(135)^080h	;volatile
	line	76
	
l5923:	
;NEW 22 RELAY WITH EEPROM.c: 76: PORTC=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	78
	
l5925:	
;NEW 22 RELAY WITH EEPROM.c: 78: TRISD=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	79
	
l5927:	
;NEW 22 RELAY WITH EEPROM.c: 79: PORTD=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	81
	
l5929:	
;NEW 22 RELAY WITH EEPROM.c: 81: TRISE=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(137)^080h	;volatile
	line	82
	
l5931:	
;NEW 22 RELAY WITH EEPROM.c: 82: PORTE=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(9)	;volatile
	line	84
	
l5933:	
;NEW 22 RELAY WITH EEPROM.c: 84: Lcd_Intialization();
	fcall	_Lcd_Intialization
	line	86
	
l5935:	
;NEW 22 RELAY WITH EEPROM.c: 86: for(int a=0;a<15;a++)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@a)
	clrf	(main@a+1)
	
l5937:	
	movf	(main@a+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Fh))^80h
	subwf	btemp+1,w
	skipz
	goto	u4575
	movlw	low(0Fh)
	subwf	(main@a),w
u4575:

	skipc
	goto	u4571
	goto	u4570
u4571:
	goto	l5941
u4570:
	goto	l5947
	
l5939:	
	goto	l5947
	line	87
	
l921:	
	line	88
	
l5941:	
;NEW 22 RELAY WITH EEPROM.c: 87: {
;NEW 22 RELAY WITH EEPROM.c: 88: i[a]=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@a),w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	addlw	_i&0ffh
	movwf	fsr0
	movlw	low(0)
	bcf	status, 7	;select IRP bank1
	movwf	indf
	incf	fsr0,f
	movlw	high(0)
	movwf	indf
	line	89
;NEW 22 RELAY WITH EEPROM.c: 89: k[a]=0;
	movf	(main@a),w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	addlw	_k&0ffh
	movwf	fsr0
	movlw	low(0)
	movwf	indf
	incf	fsr0,f
	movlw	high(0)
	movwf	indf
	line	86
	
l5943:	
	movlw	low(01h)
	addwf	(main@a),f
	skipnc
	incf	(main@a+1),f
	movlw	high(01h)
	addwf	(main@a+1),f
	
l5945:	
	movf	(main@a+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Fh))^80h
	subwf	btemp+1,w
	skipz
	goto	u4585
	movlw	low(0Fh)
	subwf	(main@a),w
u4585:

	skipc
	goto	u4581
	goto	u4580
u4581:
	goto	l5941
u4580:
	goto	l5947
	
l922:	
	line	92
	
l5947:	
;NEW 22 RELAY WITH EEPROM.c: 90: }
;NEW 22 RELAY WITH EEPROM.c: 92: Lcd_Command(0x80);
	movlw	(080h)
	fcall	_Lcd_Command
	line	93
	
l5949:	
;NEW 22 RELAY WITH EEPROM.c: 93: Lcd_String("KAP AUTOMATION");
	movlw	((STR_24-__stringbase))&0ffh
	fcall	_Lcd_String
	line	94
	
l5951:	
;NEW 22 RELAY WITH EEPROM.c: 94: _delay((unsigned long)((1000)*(20e6/4000.0)));
	opt asmopt_off
movlw  26
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main+0)+0+2),f
movlw	94
movwf	((??_main+0)+0+1),f
	movlw	134
movwf	((??_main+0)+0),f
u4937:
	decfsz	((??_main+0)+0),f
	goto	u4937
	decfsz	((??_main+0)+0+1),f
	goto	u4937
	decfsz	((??_main+0)+0+2),f
	goto	u4937
	clrwdt
opt asmopt_on

	line	95
	
l5953:	
;NEW 22 RELAY WITH EEPROM.c: 95: Lcd_Command(0x80);
	movlw	(080h)
	fcall	_Lcd_Command
	line	96
	
l5955:	
;NEW 22 RELAY WITH EEPROM.c: 96: Lcd_String("                ");
	movlw	((STR_25-__stringbase))&0ffh
	fcall	_Lcd_String
	line	101
;NEW 22 RELAY WITH EEPROM.c: 101: while(RA2==1)
	goto	l923
	
l924:	
	line	103
	
l5957:	
;NEW 22 RELAY WITH EEPROM.c: 102: {
;NEW 22 RELAY WITH EEPROM.c: 103: for(int test = 0;test < 256;test++)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@test)
	clrf	(main@test+1)
	
l5959:	
	movf	(main@test+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0100h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4595
	movlw	low(0100h)
	subwf	(main@test),w
u4595:

	skipc
	goto	u4591
	goto	u4590
u4591:
	goto	l5963
u4590:
	goto	l5969
	
l5961:	
	goto	l5969
	line	104
	
l925:	
	line	105
	
l5963:	
;NEW 22 RELAY WITH EEPROM.c: 104: {
;NEW 22 RELAY WITH EEPROM.c: 105: eeprom_write(test,0);
	clrf	(?_eeprom_write)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@test),w
	fcall	_eeprom_write
	line	103
	
l5965:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@test),f
	skipnc
	incf	(main@test+1),f
	movlw	high(01h)
	addwf	(main@test+1),f
	
l5967:	
	movf	(main@test+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0100h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4605
	movlw	low(0100h)
	subwf	(main@test),w
u4605:

	skipc
	goto	u4601
	goto	u4600
u4601:
	goto	l5963
u4600:
	goto	l5969
	
l926:	
	line	108
	
l5969:	
;NEW 22 RELAY WITH EEPROM.c: 106: }
;NEW 22 RELAY WITH EEPROM.c: 108: SETTING_SW = 1;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_SETTING_SW)
	movlw	high(01h)
	movwf	((_SETTING_SW))+1
	line	109
;NEW 22 RELAY WITH EEPROM.c: 109: while(RA2==1);
	goto	l927
	
l928:	
	
l927:	
	btfsc	(42/8),(42)&7
	goto	u4611
	goto	u4610
u4611:
	goto	l927
u4610:
	goto	l923
	
l929:	
	line	110
	
l923:	
	line	101
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(42/8),(42)&7
	goto	u4621
	goto	u4620
u4621:
	goto	l5957
u4620:
	goto	l5971
	
l930:	
	goto	l5971
	line	112
;NEW 22 RELAY WITH EEPROM.c: 110: }
;NEW 22 RELAY WITH EEPROM.c: 112: do
	
l931:	
	line	114
	
l5971:	
;NEW 22 RELAY WITH EEPROM.c: 113: {
;NEW 22 RELAY WITH EEPROM.c: 114: if(Cur_1==2)
	movlw	02h
	xorwf	(_Cur_1),w
	iorwf	(_Cur_1+1),w
	skipz
	goto	u4631
	goto	u4630
u4631:
	goto	l5975
u4630:
	line	116
	
l5973:	
;NEW 22 RELAY WITH EEPROM.c: 115: {
;NEW 22 RELAY WITH EEPROM.c: 116: F_FLAG = 1;
	bsf	(_F_FLAG/8),(_F_FLAG)&7
	line	117
;NEW 22 RELAY WITH EEPROM.c: 117: S_FLAG = 0;
	bcf	(_S_FLAG/8),(_S_FLAG)&7
	line	118
;NEW 22 RELAY WITH EEPROM.c: 118: T_FLAG = 0;
	bcf	(_T_FLAG/8),(_T_FLAG)&7
	goto	l5975
	line	119
	
l932:	
	line	120
	
l5975:	
;NEW 22 RELAY WITH EEPROM.c: 119: }
;NEW 22 RELAY WITH EEPROM.c: 120: if(Cur_2==5)
	movlw	05h
	xorwf	(_Cur_2),w
	iorwf	(_Cur_2+1),w
	skipz
	goto	u4641
	goto	u4640
u4641:
	goto	l5979
u4640:
	line	122
	
l5977:	
;NEW 22 RELAY WITH EEPROM.c: 121: {
;NEW 22 RELAY WITH EEPROM.c: 122: F_FLAG = 0;
	bcf	(_F_FLAG/8),(_F_FLAG)&7
	line	123
;NEW 22 RELAY WITH EEPROM.c: 123: S_FLAG = 1;
	bsf	(_S_FLAG/8),(_S_FLAG)&7
	line	124
;NEW 22 RELAY WITH EEPROM.c: 124: T_FLAG = 0;
	bcf	(_T_FLAG/8),(_T_FLAG)&7
	goto	l5979
	line	125
	
l933:	
	line	126
	
l5979:	
;NEW 22 RELAY WITH EEPROM.c: 125: }
;NEW 22 RELAY WITH EEPROM.c: 126: if(Cur_3==5)
	movlw	05h
	xorwf	(_Cur_3),w
	iorwf	(_Cur_3+1),w
	skipz
	goto	u4651
	goto	u4650
u4651:
	goto	l934
u4650:
	line	128
	
l5981:	
;NEW 22 RELAY WITH EEPROM.c: 127: {
;NEW 22 RELAY WITH EEPROM.c: 128: F_FLAG = 0;
	bcf	(_F_FLAG/8),(_F_FLAG)&7
	line	129
;NEW 22 RELAY WITH EEPROM.c: 129: S_FLAG = 0;
	bcf	(_S_FLAG/8),(_S_FLAG)&7
	line	130
;NEW 22 RELAY WITH EEPROM.c: 130: T_FLAG = 1;
	bsf	(_T_FLAG/8),(_T_FLAG)&7
	line	131
	
l934:	
	line	133
;NEW 22 RELAY WITH EEPROM.c: 131: }
;NEW 22 RELAY WITH EEPROM.c: 133: if(F_FLAG==1)
	btfss	(_F_FLAG/8),(_F_FLAG)&7
	goto	u4661
	goto	u4660
u4661:
	goto	l5985
u4660:
	line	135
	
l5983:	
;NEW 22 RELAY WITH EEPROM.c: 134: {
;NEW 22 RELAY WITH EEPROM.c: 135: RELAY_SELECTION();
	fcall	_RELAY_SELECTION
	goto	l5985
	line	136
	
l935:	
	line	138
	
l5985:	
;NEW 22 RELAY WITH EEPROM.c: 136: }
;NEW 22 RELAY WITH EEPROM.c: 138: if(S_FLAG==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(_S_FLAG/8),(_S_FLAG)&7
	goto	u4671
	goto	u4670
u4671:
	goto	l5989
u4670:
	line	140
	
l5987:	
;NEW 22 RELAY WITH EEPROM.c: 139: {
;NEW 22 RELAY WITH EEPROM.c: 140: ON_TIMER_SELECTION();
	fcall	_ON_TIMER_SELECTION
	goto	l5989
	line	141
	
l936:	
	line	143
	
l5989:	
;NEW 22 RELAY WITH EEPROM.c: 141: }
;NEW 22 RELAY WITH EEPROM.c: 143: if(T_FLAG==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(_T_FLAG/8),(_T_FLAG)&7
	goto	u4681
	goto	u4680
u4681:
	goto	l938
u4680:
	line	145
	
l5991:	
;NEW 22 RELAY WITH EEPROM.c: 144: {
;NEW 22 RELAY WITH EEPROM.c: 145: OFF_TIMER_SELECTION();
	fcall	_OFF_TIMER_SELECTION
	goto	l938
	line	146
	
l937:	
	line	148
;NEW 22 RELAY WITH EEPROM.c: 146: }
;NEW 22 RELAY WITH EEPROM.c: 148: while(RA3==1)
	goto	l938
	
l939:	
	line	150
	
l5993:	
;NEW 22 RELAY WITH EEPROM.c: 149: {
;NEW 22 RELAY WITH EEPROM.c: 150: SETTING_SW=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_SETTING_SW)
	clrf	(_SETTING_SW+1)
	line	151
;NEW 22 RELAY WITH EEPROM.c: 151: while(RA3==1);
	goto	l940
	
l941:	
	
l940:	
	btfsc	(43/8),(43)&7
	goto	u4691
	goto	u4690
u4691:
	goto	l940
u4690:
	goto	l938
	
l942:	
	line	152
	
l938:	
	line	148
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(43/8),(43)&7
	goto	u4701
	goto	u4700
u4701:
	goto	l5993
u4700:
	goto	l5995
	
l943:	
	line	154
	
l5995:	
;NEW 22 RELAY WITH EEPROM.c: 152: }
;NEW 22 RELAY WITH EEPROM.c: 153: }
;NEW 22 RELAY WITH EEPROM.c: 154: while(SETTING_SW==1);
	movlw	01h
	xorwf	(_SETTING_SW),w
	iorwf	(_SETTING_SW+1),w
	skipnz
	goto	u4711
	goto	u4710
u4711:
	goto	l5971
u4710:
	goto	l5997
	
l944:	
	line	159
	
l5997:	
;NEW 22 RELAY WITH EEPROM.c: 159: if(eeprom_read(0)==255)
	movlw	(0)
	fcall	_eeprom_read
	xorlw	0FFh
	skipz
	goto	u4721
	goto	u4720
u4721:
	goto	l6011
u4720:
	line	161
	
l5999:	
;NEW 22 RELAY WITH EEPROM.c: 160: {
;NEW 22 RELAY WITH EEPROM.c: 161: for(int test = 0;test < 256;test++)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@test_1329)
	clrf	(main@test_1329+1)
	
l6001:	
	movf	(main@test_1329+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0100h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4735
	movlw	low(0100h)
	subwf	(main@test_1329),w
u4735:

	skipc
	goto	u4731
	goto	u4730
u4731:
	goto	l6005
u4730:
	goto	l6011
	
l6003:	
	goto	l6011
	line	162
	
l946:	
	line	163
	
l6005:	
;NEW 22 RELAY WITH EEPROM.c: 162: {
;NEW 22 RELAY WITH EEPROM.c: 163: eeprom_write(test,0);
	clrf	(?_eeprom_write)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@test_1329),w
	fcall	_eeprom_write
	line	161
	
l6007:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@test_1329),f
	skipnc
	incf	(main@test_1329+1),f
	movlw	high(01h)
	addwf	(main@test_1329+1),f
	
l6009:	
	movf	(main@test_1329+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0100h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4745
	movlw	low(0100h)
	subwf	(main@test_1329),w
u4745:

	skipc
	goto	u4741
	goto	u4740
u4741:
	goto	l6005
u4740:
	goto	l6011
	
l947:	
	goto	l6011
	line	165
	
l945:	
	line	168
	
l6011:	
;NEW 22 RELAY WITH EEPROM.c: 164: }
;NEW 22 RELAY WITH EEPROM.c: 165: }
;NEW 22 RELAY WITH EEPROM.c: 168: for(EEPROM_ADR = 1;EEPROM_ADR <= 24;EEPROM_ADR++)
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_EEPROM_ADR)
	movlw	high(01h)
	movwf	((_EEPROM_ADR))+1
	
l6013:	
	movf	(_EEPROM_ADR+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(019h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4755
	movlw	low(019h)
	subwf	(_EEPROM_ADR),w
u4755:

	skipc
	goto	u4751
	goto	u4750
u4751:
	goto	l6017
u4750:
	goto	l6023
	
l6015:	
	goto	l6023
	line	169
	
l948:	
	line	170
	
l6017:	
;NEW 22 RELAY WITH EEPROM.c: 169: {
;NEW 22 RELAY WITH EEPROM.c: 170: staus[EEPROM_ADR] = eeprom_read(EEPROM_ADR);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_EEPROM_ADR),w
	fcall	_eeprom_read
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(_EEPROM_ADR),w
	addlw	_staus&0ffh
	movwf	fsr0
	movf	(??_main+0)+0,w
	bcf	status, 7	;select IRP bank1
	movwf	indf
	line	168
	
l6019:	
	movlw	low(01h)
	addwf	(_EEPROM_ADR),f
	skipnc
	incf	(_EEPROM_ADR+1),f
	movlw	high(01h)
	addwf	(_EEPROM_ADR+1),f
	
l6021:	
	movf	(_EEPROM_ADR+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(019h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4765
	movlw	low(019h)
	subwf	(_EEPROM_ADR),w
u4765:

	skipc
	goto	u4761
	goto	u4760
u4761:
	goto	l6017
u4760:
	goto	l6023
	
l949:	
	line	173
	
l6023:	
;NEW 22 RELAY WITH EEPROM.c: 171: }
;NEW 22 RELAY WITH EEPROM.c: 173: TIME_STORE_ARRAY = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_TIME_STORE_ARRAY)
	clrf	(_TIME_STORE_ARRAY+1)
	line	174
	
l6025:	
;NEW 22 RELAY WITH EEPROM.c: 174: for(EEPROM_ADR = 25;EEPROM_ADR <= 48;EEPROM_ADR++)
	movlw	low(019h)
	movwf	(_EEPROM_ADR)
	movlw	high(019h)
	movwf	((_EEPROM_ADR))+1
	
l6027:	
	movf	(_EEPROM_ADR+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(031h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4775
	movlw	low(031h)
	subwf	(_EEPROM_ADR),w
u4775:

	skipc
	goto	u4771
	goto	u4770
u4771:
	goto	l6031
u4770:
	goto	l6039
	
l6029:	
	goto	l6039
	line	175
	
l950:	
	line	176
	
l6031:	
;NEW 22 RELAY WITH EEPROM.c: 175: {
;NEW 22 RELAY WITH EEPROM.c: 176: TIME_STORE_ARRAY++;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_TIME_STORE_ARRAY),f
	skipnc
	incf	(_TIME_STORE_ARRAY+1),f
	movlw	high(01h)
	addwf	(_TIME_STORE_ARRAY+1),f
	line	177
	
l6033:	
;NEW 22 RELAY WITH EEPROM.c: 177: HH_N[TIME_STORE_ARRAY] = eeprom_read(EEPROM_ADR);
	movf	(_EEPROM_ADR),w
	fcall	_eeprom_read
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(_TIME_STORE_ARRAY),w
	addlw	_HH_N&0ffh
	movwf	fsr0
	movf	(??_main+0)+0,w
	bsf	status, 7	;select IRP bank3
	movwf	indf
	line	174
	
l6035:	
	movlw	low(01h)
	addwf	(_EEPROM_ADR),f
	skipnc
	incf	(_EEPROM_ADR+1),f
	movlw	high(01h)
	addwf	(_EEPROM_ADR+1),f
	
l6037:	
	movf	(_EEPROM_ADR+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(031h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4785
	movlw	low(031h)
	subwf	(_EEPROM_ADR),w
u4785:

	skipc
	goto	u4781
	goto	u4780
u4781:
	goto	l6031
u4780:
	goto	l6039
	
l951:	
	line	180
	
l6039:	
;NEW 22 RELAY WITH EEPROM.c: 178: }
;NEW 22 RELAY WITH EEPROM.c: 180: TIME_STORE_ARRAY = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_TIME_STORE_ARRAY)
	clrf	(_TIME_STORE_ARRAY+1)
	line	181
	
l6041:	
;NEW 22 RELAY WITH EEPROM.c: 181: for(EEPROM_ADR = 49;EEPROM_ADR <= 72;EEPROM_ADR++)
	movlw	low(031h)
	movwf	(_EEPROM_ADR)
	movlw	high(031h)
	movwf	((_EEPROM_ADR))+1
	
l6043:	
	movf	(_EEPROM_ADR+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(049h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4795
	movlw	low(049h)
	subwf	(_EEPROM_ADR),w
u4795:

	skipc
	goto	u4791
	goto	u4790
u4791:
	goto	l6047
u4790:
	goto	l6055
	
l6045:	
	goto	l6055
	line	182
	
l952:	
	line	183
	
l6047:	
;NEW 22 RELAY WITH EEPROM.c: 182: {
;NEW 22 RELAY WITH EEPROM.c: 183: TIME_STORE_ARRAY++;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_TIME_STORE_ARRAY),f
	skipnc
	incf	(_TIME_STORE_ARRAY+1),f
	movlw	high(01h)
	addwf	(_TIME_STORE_ARRAY+1),f
	line	184
	
l6049:	
;NEW 22 RELAY WITH EEPROM.c: 184: MM_N[TIME_STORE_ARRAY] = eeprom_read(EEPROM_ADR);
	movf	(_EEPROM_ADR),w
	fcall	_eeprom_read
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(_TIME_STORE_ARRAY),w
	addlw	_MM_N&0ffh
	movwf	fsr0
	movf	(??_main+0)+0,w
	bsf	status, 7	;select IRP bank3
	movwf	indf
	line	181
	
l6051:	
	movlw	low(01h)
	addwf	(_EEPROM_ADR),f
	skipnc
	incf	(_EEPROM_ADR+1),f
	movlw	high(01h)
	addwf	(_EEPROM_ADR+1),f
	
l6053:	
	movf	(_EEPROM_ADR+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(049h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4805
	movlw	low(049h)
	subwf	(_EEPROM_ADR),w
u4805:

	skipc
	goto	u4801
	goto	u4800
u4801:
	goto	l6047
u4800:
	goto	l6055
	
l953:	
	line	187
	
l6055:	
;NEW 22 RELAY WITH EEPROM.c: 185: }
;NEW 22 RELAY WITH EEPROM.c: 187: TIME_STORE_ARRAY = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_TIME_STORE_ARRAY)
	clrf	(_TIME_STORE_ARRAY+1)
	line	188
	
l6057:	
;NEW 22 RELAY WITH EEPROM.c: 188: for(EEPROM_ADR = 73;EEPROM_ADR <= 96;EEPROM_ADR++)
	movlw	low(049h)
	movwf	(_EEPROM_ADR)
	movlw	high(049h)
	movwf	((_EEPROM_ADR))+1
	
l6059:	
	movf	(_EEPROM_ADR+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(061h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4815
	movlw	low(061h)
	subwf	(_EEPROM_ADR),w
u4815:

	skipc
	goto	u4811
	goto	u4810
u4811:
	goto	l6063
u4810:
	goto	l6071
	
l6061:	
	goto	l6071
	line	189
	
l954:	
	line	190
	
l6063:	
;NEW 22 RELAY WITH EEPROM.c: 189: {
;NEW 22 RELAY WITH EEPROM.c: 190: TIME_STORE_ARRAY++;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_TIME_STORE_ARRAY),f
	skipnc
	incf	(_TIME_STORE_ARRAY+1),f
	movlw	high(01h)
	addwf	(_TIME_STORE_ARRAY+1),f
	line	191
	
l6065:	
;NEW 22 RELAY WITH EEPROM.c: 191: SS_N[TIME_STORE_ARRAY] = eeprom_read(EEPROM_ADR);
	movf	(_EEPROM_ADR),w
	fcall	_eeprom_read
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(_TIME_STORE_ARRAY),w
	addlw	_SS_N&0ffh
	movwf	fsr0
	movf	(??_main+0)+0,w
	bsf	status, 7	;select IRP bank3
	movwf	indf
	line	188
	
l6067:	
	movlw	low(01h)
	addwf	(_EEPROM_ADR),f
	skipnc
	incf	(_EEPROM_ADR+1),f
	movlw	high(01h)
	addwf	(_EEPROM_ADR+1),f
	
l6069:	
	movf	(_EEPROM_ADR+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(061h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4825
	movlw	low(061h)
	subwf	(_EEPROM_ADR),w
u4825:

	skipc
	goto	u4821
	goto	u4820
u4821:
	goto	l6063
u4820:
	goto	l6071
	
l955:	
	line	194
	
l6071:	
;NEW 22 RELAY WITH EEPROM.c: 192: }
;NEW 22 RELAY WITH EEPROM.c: 194: TIME_STORE_ARRAY = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_TIME_STORE_ARRAY)
	clrf	(_TIME_STORE_ARRAY+1)
	line	195
	
l6073:	
;NEW 22 RELAY WITH EEPROM.c: 195: for(EEPROM_ADR = 97;EEPROM_ADR <= 120;EEPROM_ADR++)
	movlw	low(061h)
	movwf	(_EEPROM_ADR)
	movlw	high(061h)
	movwf	((_EEPROM_ADR))+1
	
l6075:	
	movf	(_EEPROM_ADR+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(079h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4835
	movlw	low(079h)
	subwf	(_EEPROM_ADR),w
u4835:

	skipc
	goto	u4831
	goto	u4830
u4831:
	goto	l6079
u4830:
	goto	l6087
	
l6077:	
	goto	l6087
	line	196
	
l956:	
	line	197
	
l6079:	
;NEW 22 RELAY WITH EEPROM.c: 196: {
;NEW 22 RELAY WITH EEPROM.c: 197: TIME_STORE_ARRAY++;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_TIME_STORE_ARRAY),f
	skipnc
	incf	(_TIME_STORE_ARRAY+1),f
	movlw	high(01h)
	addwf	(_TIME_STORE_ARRAY+1),f
	line	198
	
l6081:	
;NEW 22 RELAY WITH EEPROM.c: 198: HH_F[TIME_STORE_ARRAY] = eeprom_read(EEPROM_ADR);
	movf	(_EEPROM_ADR),w
	fcall	_eeprom_read
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(_TIME_STORE_ARRAY),w
	addlw	_HH_F&0ffh
	movwf	fsr0
	movf	(??_main+0)+0,w
	bsf	status, 7	;select IRP bank3
	movwf	indf
	line	195
	
l6083:	
	movlw	low(01h)
	addwf	(_EEPROM_ADR),f
	skipnc
	incf	(_EEPROM_ADR+1),f
	movlw	high(01h)
	addwf	(_EEPROM_ADR+1),f
	
l6085:	
	movf	(_EEPROM_ADR+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(079h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4845
	movlw	low(079h)
	subwf	(_EEPROM_ADR),w
u4845:

	skipc
	goto	u4841
	goto	u4840
u4841:
	goto	l6079
u4840:
	goto	l6087
	
l957:	
	line	201
	
l6087:	
;NEW 22 RELAY WITH EEPROM.c: 199: }
;NEW 22 RELAY WITH EEPROM.c: 201: TIME_STORE_ARRAY = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_TIME_STORE_ARRAY)
	clrf	(_TIME_STORE_ARRAY+1)
	line	202
	
l6089:	
;NEW 22 RELAY WITH EEPROM.c: 202: for(EEPROM_ADR = 121;EEPROM_ADR <= 144;EEPROM_ADR++)
	movlw	low(079h)
	movwf	(_EEPROM_ADR)
	movlw	high(079h)
	movwf	((_EEPROM_ADR))+1
	
l6091:	
	movf	(_EEPROM_ADR+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(091h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4855
	movlw	low(091h)
	subwf	(_EEPROM_ADR),w
u4855:

	skipc
	goto	u4851
	goto	u4850
u4851:
	goto	l6095
u4850:
	goto	l6103
	
l6093:	
	goto	l6103
	line	203
	
l958:	
	line	204
	
l6095:	
;NEW 22 RELAY WITH EEPROM.c: 203: {
;NEW 22 RELAY WITH EEPROM.c: 204: TIME_STORE_ARRAY++;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_TIME_STORE_ARRAY),f
	skipnc
	incf	(_TIME_STORE_ARRAY+1),f
	movlw	high(01h)
	addwf	(_TIME_STORE_ARRAY+1),f
	line	205
	
l6097:	
;NEW 22 RELAY WITH EEPROM.c: 205: MM_F[TIME_STORE_ARRAY] = eeprom_read(EEPROM_ADR);
	movf	(_EEPROM_ADR),w
	fcall	_eeprom_read
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(_TIME_STORE_ARRAY),w
	addlw	_MM_F&0ffh
	movwf	fsr0
	movf	(??_main+0)+0,w
	bsf	status, 7	;select IRP bank2
	movwf	indf
	line	202
	
l6099:	
	movlw	low(01h)
	addwf	(_EEPROM_ADR),f
	skipnc
	incf	(_EEPROM_ADR+1),f
	movlw	high(01h)
	addwf	(_EEPROM_ADR+1),f
	
l6101:	
	movf	(_EEPROM_ADR+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(091h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4865
	movlw	low(091h)
	subwf	(_EEPROM_ADR),w
u4865:

	skipc
	goto	u4861
	goto	u4860
u4861:
	goto	l6095
u4860:
	goto	l6103
	
l959:	
	line	208
	
l6103:	
;NEW 22 RELAY WITH EEPROM.c: 206: }
;NEW 22 RELAY WITH EEPROM.c: 208: TIME_STORE_ARRAY = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_TIME_STORE_ARRAY)
	clrf	(_TIME_STORE_ARRAY+1)
	line	209
	
l6105:	
;NEW 22 RELAY WITH EEPROM.c: 209: for(EEPROM_ADR = 145;EEPROM_ADR <= 168;EEPROM_ADR++)
	movlw	low(091h)
	movwf	(_EEPROM_ADR)
	movlw	high(091h)
	movwf	((_EEPROM_ADR))+1
	
l6107:	
	movf	(_EEPROM_ADR+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0A9h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4875
	movlw	low(0A9h)
	subwf	(_EEPROM_ADR),w
u4875:

	skipc
	goto	u4871
	goto	u4870
u4871:
	goto	l6111
u4870:
	goto	l6119
	
l6109:	
	goto	l6119
	line	210
	
l960:	
	line	211
	
l6111:	
;NEW 22 RELAY WITH EEPROM.c: 210: {
;NEW 22 RELAY WITH EEPROM.c: 211: TIME_STORE_ARRAY++;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_TIME_STORE_ARRAY),f
	skipnc
	incf	(_TIME_STORE_ARRAY+1),f
	movlw	high(01h)
	addwf	(_TIME_STORE_ARRAY+1),f
	line	212
	
l6113:	
;NEW 22 RELAY WITH EEPROM.c: 212: SS_F[TIME_STORE_ARRAY] = eeprom_read(EEPROM_ADR);
	movf	(_EEPROM_ADR),w
	fcall	_eeprom_read
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(_TIME_STORE_ARRAY),w
	addlw	_SS_F&0ffh
	movwf	fsr0
	movf	(??_main+0)+0,w
	bsf	status, 7	;select IRP bank2
	movwf	indf
	line	209
	
l6115:	
	movlw	low(01h)
	addwf	(_EEPROM_ADR),f
	skipnc
	incf	(_EEPROM_ADR+1),f
	movlw	high(01h)
	addwf	(_EEPROM_ADR+1),f
	
l6117:	
	movf	(_EEPROM_ADR+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0A9h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4885
	movlw	low(0A9h)
	subwf	(_EEPROM_ADR),w
u4885:

	skipc
	goto	u4881
	goto	u4880
u4881:
	goto	l6111
u4880:
	goto	l6119
	
l961:	
	line	214
	
l6119:	
;NEW 22 RELAY WITH EEPROM.c: 213: }
;NEW 22 RELAY WITH EEPROM.c: 214: TIME_STORE_ARRAY = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_TIME_STORE_ARRAY)
	clrf	(_TIME_STORE_ARRAY+1)
	line	216
	
l6121:	
;NEW 22 RELAY WITH EEPROM.c: 216: CYCLE_START = eeprom_read(169);
	movlw	(0A9h)
	fcall	_eeprom_read
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	bcf	(_CYCLE_START/8),(_CYCLE_START)&7
	btfss	0+(??_main+0)+0,0
	goto	u4895
	bsf	(_CYCLE_START/8),(_CYCLE_START)&7
u4895:

	line	217
	
l6123:	
;NEW 22 RELAY WITH EEPROM.c: 217: STATE = eeprom_read(170);
	movlw	(0AAh)
	fcall	_eeprom_read
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movf	0+(??_main+0)+0,w
	movwf	(_STATE)
	movf	1+(??_main+0)+0,w
	movwf	(_STATE+1)
	line	219
	
l6125:	
;NEW 22 RELAY WITH EEPROM.c: 219: ON_TIME_FLAG = eeprom_read(171);
	movlw	(0ABh)
	fcall	_eeprom_read
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	bcf	(_ON_TIME_FLAG/8),(_ON_TIME_FLAG)&7
	btfss	0+(??_main+0)+0,0
	goto	u4905
	bsf	(_ON_TIME_FLAG/8),(_ON_TIME_FLAG)&7
u4905:

	line	220
	
l6127:	
;NEW 22 RELAY WITH EEPROM.c: 220: ON_TIME_RUN_INT = eeprom_read(172);
	movlw	(0ACh)
	fcall	_eeprom_read
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	bcf	(_ON_TIME_RUN_INT/8),(_ON_TIME_RUN_INT)&7
	btfss	0+(??_main+0)+0,0
	goto	u4915
	bsf	(_ON_TIME_RUN_INT/8),(_ON_TIME_RUN_INT)&7
u4915:

	goto	l6129
	line	233
;NEW 22 RELAY WITH EEPROM.c: 233: do
	
l962:	
	line	235
	
l6129:	
;NEW 22 RELAY WITH EEPROM.c: 234: {
;NEW 22 RELAY WITH EEPROM.c: 235: STATUS_READ();
	fcall	_STATUS_READ
	line	238
	
l6131:	
;NEW 22 RELAY WITH EEPROM.c: 237: }
;NEW 22 RELAY WITH EEPROM.c: 238: while(RA4==1);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(44/8),(44)&7
	goto	u4921
	goto	u4920
u4921:
	goto	l6129
u4920:
	goto	l6133
	
l963:	
	line	243
	
l6133:	
;NEW 22 RELAY WITH EEPROM.c: 243: Lcd_Command(0x01);
	movlw	(01h)
	fcall	_Lcd_Command
	goto	l6135
	line	251
;NEW 22 RELAY WITH EEPROM.c: 251: while(1)
	
l964:	
	line	257
	
l6135:	
;NEW 22 RELAY WITH EEPROM.c: 252: {
;NEW 22 RELAY WITH EEPROM.c: 257: RUN_FULL_CYCLE();
	fcall	_RUN_FULL_CYCLE
	line	259
	
l6137:	
;NEW 22 RELAY WITH EEPROM.c: 259: ADC_EEPROM_STORE();
	fcall	_ADC_EEPROM_STORE
	line	261
	
l6139:	
;NEW 22 RELAY WITH EEPROM.c: 261: EMERGCY_START_STOP();
	fcall	_EMERGCY_START_STOP
	goto	l6135
	line	262
	
l965:	
	line	251
	goto	l6135
	
l966:	
	line	263
	
l967:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_RUN_FULL_CYCLE
psect	text434,local,class=CODE,delta=2
global __ptext434
__ptext434:

;; *************** function _RUN_FULL_CYCLE *****************
;; Defined at:
;;		line 2 in file "E:\02-CODING\06-KAP CODING\02-PIC 16F877A CONTROLLER\42-AUTO START test\code\RUN_FULL_CYCLE.h"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_Lcd_Command
;;		_Lcd_String
;;		_ADC_EEPROM_STORE
;;		_eeprom_write
;;		_divider
;;		_eeprom_read
;;		_EMERGCY_START_STOP
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text434
	file	"E:\02-CODING\06-KAP CODING\02-PIC 16F877A CONTROLLER\42-AUTO START test\code\RUN_FULL_CYCLE.h"
	line	2
	global	__size_of_RUN_FULL_CYCLE
	__size_of_RUN_FULL_CYCLE	equ	__end_of_RUN_FULL_CYCLE-_RUN_FULL_CYCLE
	
_RUN_FULL_CYCLE:	
	opt	stack 5
; Regs used in _RUN_FULL_CYCLE: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	15
	
l5661:	
;RUN_FULL_CYCLE.h: 15: CYCLE_START = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(_CYCLE_START/8),(_CYCLE_START)&7
	line	29
;RUN_FULL_CYCLE.h: 29: while(CYCLE_START==1)
	goto	l5907
	
l887:	
	line	31
	
l5663:	
;RUN_FULL_CYCLE.h: 30: {
;RUN_FULL_CYCLE.h: 31: Lcd_Command(0x80);
	movlw	(080h)
	fcall	_Lcd_Command
	line	32
	
l5665:	
;RUN_FULL_CYCLE.h: 32: Lcd_String("R:");
	movlw	((STR_16-__stringbase))&0ffh
	fcall	_Lcd_String
	line	33
	
l5667:	
;RUN_FULL_CYCLE.h: 33: Lcd_Command(0xC0);
	movlw	(0C0h)
	fcall	_Lcd_Command
	line	34
;RUN_FULL_CYCLE.h: 34: Lcd_String("ON T:00:00:00");
	movlw	((STR_17-__stringbase))&0ffh
	fcall	_Lcd_String
	line	35
	
l5669:	
;RUN_FULL_CYCLE.h: 35: ADC_EEPROM_STORE();
	fcall	_ADC_EEPROM_STORE
	line	37
	
l5671:	
;RUN_FULL_CYCLE.h: 37: STATE++;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_STATE),f
	skipnc
	incf	(_STATE+1),f
	movlw	high(01h)
	addwf	(_STATE+1),f
	line	38
	
l5673:	
;RUN_FULL_CYCLE.h: 38: eeprom_write(170,STATE-1);
	movf	(_STATE),w
	addlw	0FFh
	movwf	(??_RUN_FULL_CYCLE+0)+0
	movf	(??_RUN_FULL_CYCLE+0)+0,w
	movwf	(?_eeprom_write)
	movlw	(0AAh)
	fcall	_eeprom_write
	line	40
	
l5675:	
;RUN_FULL_CYCLE.h: 40: Lcd_Command(0x82);
	movlw	(082h)
	fcall	_Lcd_Command
	line	41
	
l5677:	
;RUN_FULL_CYCLE.h: 41: divider(STATE);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_STATE+1),w
	clrf	(?_divider+1)
	addwf	(?_divider+1)
	movf	(_STATE),w
	clrf	(?_divider)
	addwf	(?_divider)

	fcall	_divider
	line	43
	
l5679:	
;RUN_FULL_CYCLE.h: 43: Lcd_Command(0xce);
	movlw	(0CEh)
	fcall	_Lcd_Command
	line	44
	
l5681:	
;RUN_FULL_CYCLE.h: 44: divider(STATE);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_STATE+1),w
	clrf	(?_divider+1)
	addwf	(?_divider+1)
	movf	(_STATE),w
	clrf	(?_divider)
	addwf	(?_divider)

	fcall	_divider
	line	46
	
l5683:	
;RUN_FULL_CYCLE.h: 46: if(staus[STATE]==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_STATE),w
	addlw	_staus&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	movf	indf,w
	xorlw	01h
	skipz
	goto	u4271
	goto	u4270
u4271:
	goto	l5887
u4270:
	line	48
	
l5685:	
;RUN_FULL_CYCLE.h: 47: {
;RUN_FULL_CYCLE.h: 48: Lcd_Command(0x86);
	movlw	(086h)
	fcall	_Lcd_Command
	line	49
	
l5687:	
;RUN_FULL_CYCLE.h: 49: Lcd_String("Enable ");
	movlw	((STR_18-__stringbase))&0ffh
	fcall	_Lcd_String
	line	51
	
l5689:	
;RUN_FULL_CYCLE.h: 51: Lcd_Command(0xC0);
	movlw	(0C0h)
	fcall	_Lcd_Command
	line	52
;RUN_FULL_CYCLE.h: 52: Lcd_String("ON T");
	movlw	((STR_19-__stringbase))&0ffh
	fcall	_Lcd_String
	line	54
	
l5691:	
;RUN_FULL_CYCLE.h: 54: RHH = HH_N[STATE];
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_STATE),w
	addlw	_HH_N&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	movf	indf,w
	movwf	(??_RUN_FULL_CYCLE+0)+0
	clrf	(??_RUN_FULL_CYCLE+0)+0+1
	movf	0+(??_RUN_FULL_CYCLE+0)+0,w
	movwf	(_RHH)
	movf	1+(??_RUN_FULL_CYCLE+0)+0,w
	movwf	(_RHH+1)
	line	55
	
l5693:	
;RUN_FULL_CYCLE.h: 55: FHH = HH_F[STATE];
	movf	(_STATE),w
	addlw	_HH_F&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(??_RUN_FULL_CYCLE+0)+0
	clrf	(??_RUN_FULL_CYCLE+0)+0+1
	movf	0+(??_RUN_FULL_CYCLE+0)+0,w
	movwf	(_FHH)
	movf	1+(??_RUN_FULL_CYCLE+0)+0,w
	movwf	(_FHH+1)
	line	56
	
l5695:	
;RUN_FULL_CYCLE.h: 56: RMM = MM_N[STATE];
	movf	(_STATE),w
	addlw	_MM_N&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(??_RUN_FULL_CYCLE+0)+0
	clrf	(??_RUN_FULL_CYCLE+0)+0+1
	movf	0+(??_RUN_FULL_CYCLE+0)+0,w
	movwf	(_RMM)
	movf	1+(??_RUN_FULL_CYCLE+0)+0,w
	movwf	(_RMM+1)
	line	57
	
l5697:	
;RUN_FULL_CYCLE.h: 57: FMM = MM_F[STATE];
	movf	(_STATE),w
	addlw	_MM_F&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(??_RUN_FULL_CYCLE+0)+0
	clrf	(??_RUN_FULL_CYCLE+0)+0+1
	movf	0+(??_RUN_FULL_CYCLE+0)+0,w
	movwf	(_FMM)
	movf	1+(??_RUN_FULL_CYCLE+0)+0,w
	movwf	(_FMM+1)
	line	59
	
l5699:	
;RUN_FULL_CYCLE.h: 59: RSS = SS_N[STATE];
	movf	(_STATE),w
	addlw	_SS_N&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(??_RUN_FULL_CYCLE+0)+0
	clrf	(??_RUN_FULL_CYCLE+0)+0+1
	movf	0+(??_RUN_FULL_CYCLE+0)+0,w
	movwf	(_RSS)
	movf	1+(??_RUN_FULL_CYCLE+0)+0,w
	movwf	(_RSS+1)
	line	60
	
l5701:	
;RUN_FULL_CYCLE.h: 60: FSS = SS_F[STATE];
	movf	(_STATE),w
	addlw	_SS_F&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(??_RUN_FULL_CYCLE+0)+0
	clrf	(??_RUN_FULL_CYCLE+0)+0+1
	movf	0+(??_RUN_FULL_CYCLE+0)+0,w
	movwf	(_FSS)
	movf	1+(??_RUN_FULL_CYCLE+0)+0,w
	movwf	(_FSS+1)
	line	62
	
l5703:	
;RUN_FULL_CYCLE.h: 62: ADC_EEPROM_STORE();
	fcall	_ADC_EEPROM_STORE
	line	64
	
l5705:	
;RUN_FULL_CYCLE.h: 64: if(ON_TIME_FLAG == 0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(_ON_TIME_FLAG/8),(_ON_TIME_FLAG)&7
	goto	u4281
	goto	u4280
u4281:
	goto	l5713
u4280:
	line	66
	
l5707:	
;RUN_FULL_CYCLE.h: 65: {
;RUN_FULL_CYCLE.h: 66: ON_TIME_RUN_INT = 1;
	bsf	(_ON_TIME_RUN_INT/8),(_ON_TIME_RUN_INT)&7
	line	68
	
l5709:	
;RUN_FULL_CYCLE.h: 68: eeprom_write(171,ON_TIME_FLAG);
	movlw	0
	btfsc	(_ON_TIME_FLAG/8),(_ON_TIME_FLAG)&7
	movlw	1
	movwf	(??_RUN_FULL_CYCLE+0)+0
	movf	(??_RUN_FULL_CYCLE+0)+0,w
	movwf	(?_eeprom_write)
	movlw	(0ABh)
	fcall	_eeprom_write
	line	69
;RUN_FULL_CYCLE.h: 69: eeprom_write(172,ON_TIME_RUN_INT);
	movlw	0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(_ON_TIME_RUN_INT/8),(_ON_TIME_RUN_INT)&7
	movlw	1
	movwf	(??_RUN_FULL_CYCLE+0)+0
	movf	(??_RUN_FULL_CYCLE+0)+0,w
	movwf	(?_eeprom_write)
	movlw	(0ACh)
	fcall	_eeprom_write
	line	71
	
l5711:	
;RUN_FULL_CYCLE.h: 71: ADC_EEPROM_STORE();
	fcall	_ADC_EEPROM_STORE
	goto	l5713
	line	72
	
l889:	
	line	74
	
l5713:	
;RUN_FULL_CYCLE.h: 72: }
;RUN_FULL_CYCLE.h: 74: if(ADC_SAVE_VAL == 1)
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(_ADC_SAVE_VAL),w
	iorwf	(_ADC_SAVE_VAL+1),w
	skipz
	goto	u4291
	goto	u4290
u4291:
	goto	l5805
u4290:
	line	76
	
l5715:	
;RUN_FULL_CYCLE.h: 75: {
;RUN_FULL_CYCLE.h: 76: RSS = eeprom_read(173);
	movlw	(0ADh)
	fcall	_eeprom_read
	movwf	(??_RUN_FULL_CYCLE+0)+0
	clrf	(??_RUN_FULL_CYCLE+0)+0+1
	movf	0+(??_RUN_FULL_CYCLE+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_RSS)
	movf	1+(??_RUN_FULL_CYCLE+0)+0,w
	movwf	(_RSS+1)
	line	77
;RUN_FULL_CYCLE.h: 77: RMM = eeprom_read(174);
	movlw	(0AEh)
	fcall	_eeprom_read
	movwf	(??_RUN_FULL_CYCLE+0)+0
	clrf	(??_RUN_FULL_CYCLE+0)+0+1
	movf	0+(??_RUN_FULL_CYCLE+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_RMM)
	movf	1+(??_RUN_FULL_CYCLE+0)+0,w
	movwf	(_RMM+1)
	line	78
;RUN_FULL_CYCLE.h: 78: RHH = eeprom_read(175);
	movlw	(0AFh)
	fcall	_eeprom_read
	movwf	(??_RUN_FULL_CYCLE+0)+0
	clrf	(??_RUN_FULL_CYCLE+0)+0+1
	movf	0+(??_RUN_FULL_CYCLE+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_RHH)
	movf	1+(??_RUN_FULL_CYCLE+0)+0,w
	movwf	(_RHH+1)
	line	80
;RUN_FULL_CYCLE.h: 80: FSS = eeprom_read(176);
	movlw	(0B0h)
	fcall	_eeprom_read
	movwf	(??_RUN_FULL_CYCLE+0)+0
	clrf	(??_RUN_FULL_CYCLE+0)+0+1
	movf	0+(??_RUN_FULL_CYCLE+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_FSS)
	movf	1+(??_RUN_FULL_CYCLE+0)+0,w
	movwf	(_FSS+1)
	line	81
;RUN_FULL_CYCLE.h: 81: FMM = eeprom_read(177);
	movlw	(0B1h)
	fcall	_eeprom_read
	movwf	(??_RUN_FULL_CYCLE+0)+0
	clrf	(??_RUN_FULL_CYCLE+0)+0+1
	movf	0+(??_RUN_FULL_CYCLE+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_FMM)
	movf	1+(??_RUN_FULL_CYCLE+0)+0,w
	movwf	(_FMM+1)
	line	82
;RUN_FULL_CYCLE.h: 82: FHH = eeprom_read(178);
	movlw	(0B2h)
	fcall	_eeprom_read
	movwf	(??_RUN_FULL_CYCLE+0)+0
	clrf	(??_RUN_FULL_CYCLE+0)+0+1
	movf	0+(??_RUN_FULL_CYCLE+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_FHH)
	movf	1+(??_RUN_FULL_CYCLE+0)+0,w
	movwf	(_FHH+1)
	line	84
	
l5717:	
;RUN_FULL_CYCLE.h: 84: ADC_SAVE_VAL = 0;
	clrf	(_ADC_SAVE_VAL)
	clrf	(_ADC_SAVE_VAL+1)
	goto	l5805
	line	85
	
l890:	
	line	87
;RUN_FULL_CYCLE.h: 85: }
;RUN_FULL_CYCLE.h: 87: while(ON_TIME_RUN_INT==1)
	goto	l5805
	
l892:	
	line	89
	
l5719:	
;RUN_FULL_CYCLE.h: 88: {
;RUN_FULL_CYCLE.h: 89: ADC_EEPROM_STORE();
	fcall	_ADC_EEPROM_STORE
	line	91
	
l5721:	
;RUN_FULL_CYCLE.h: 91: Lcd_Command(0xc5);
	movlw	(0C5h)
	fcall	_Lcd_Command
	line	92
	
l5723:	
;RUN_FULL_CYCLE.h: 92: divider(RHH);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_RHH+1),w
	clrf	(?_divider+1)
	addwf	(?_divider+1)
	movf	(_RHH),w
	clrf	(?_divider)
	addwf	(?_divider)

	fcall	_divider
	line	93
	
l5725:	
;RUN_FULL_CYCLE.h: 93: Lcd_Command(0xc8);
	movlw	(0C8h)
	fcall	_Lcd_Command
	line	94
	
l5727:	
;RUN_FULL_CYCLE.h: 94: divider(RMM);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_RMM+1),w
	clrf	(?_divider+1)
	addwf	(?_divider+1)
	movf	(_RMM),w
	clrf	(?_divider)
	addwf	(?_divider)

	fcall	_divider
	line	95
	
l5729:	
;RUN_FULL_CYCLE.h: 95: Lcd_Command(0xcB);
	movlw	(0CBh)
	fcall	_Lcd_Command
	line	96
	
l5731:	
;RUN_FULL_CYCLE.h: 96: divider(RSS);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_RSS+1),w
	clrf	(?_divider+1)
	addwf	(?_divider+1)
	movf	(_RSS),w
	clrf	(?_divider)
	addwf	(?_divider)

	fcall	_divider
	line	98
	
l5733:	
;RUN_FULL_CYCLE.h: 98: RSS--;
	movlw	low(-1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_RSS),f
	skipnc
	incf	(_RSS+1),f
	movlw	high(-1)
	addwf	(_RSS+1),f
	line	100
	
l5735:	
;RUN_FULL_CYCLE.h: 100: eeprom_write(173,RSS);
	movf	(_RSS),w
	movwf	(??_RUN_FULL_CYCLE+0)+0
	movf	(??_RUN_FULL_CYCLE+0)+0,w
	movwf	(?_eeprom_write)
	movlw	(0ADh)
	fcall	_eeprom_write
	line	102
;RUN_FULL_CYCLE.h: 102: if(RSS <= 0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_RSS+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4305
	movlw	low(01h)
	subwf	(_RSS),w
u4305:

	skipnc
	goto	u4301
	goto	u4300
u4301:
	goto	l5739
u4300:
	line	104
	
l5737:	
;RUN_FULL_CYCLE.h: 103: {
;RUN_FULL_CYCLE.h: 104: RSS = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_RSS)
	clrf	(_RSS+1)
	goto	l5739
	line	105
	
l893:	
	line	106
	
l5739:	
;RUN_FULL_CYCLE.h: 105: }
;RUN_FULL_CYCLE.h: 106: EMERGCY_START_STOP();
	fcall	_EMERGCY_START_STOP
	line	108
	
l5741:	
;RUN_FULL_CYCLE.h: 108: if((RSS==0) && (RMM==0) && (RHH==0))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	((_RSS+1)),w
	iorwf	((_RSS)),w
	skipz
	goto	u4311
	goto	u4310
u4311:
	goto	l5761
u4310:
	
l5743:	
	movf	((_RMM+1)),w
	iorwf	((_RMM)),w
	skipz
	goto	u4321
	goto	u4320
u4321:
	goto	l5761
u4320:
	
l5745:	
	movf	((_RHH+1)),w
	iorwf	((_RHH)),w
	skipz
	goto	u4331
	goto	u4330
u4331:
	goto	l5761
u4330:
	line	110
	
l5747:	
;RUN_FULL_CYCLE.h: 109: {
;RUN_FULL_CYCLE.h: 110: RMM=0;
	clrf	(_RMM)
	clrf	(_RMM+1)
	line	111
;RUN_FULL_CYCLE.h: 111: RHH=0;
	clrf	(_RHH)
	clrf	(_RHH+1)
	line	112
;RUN_FULL_CYCLE.h: 112: RSS=0;
	clrf	(_RSS)
	clrf	(_RSS+1)
	line	114
	
l5749:	
;RUN_FULL_CYCLE.h: 114: Lcd_Command(0xC0);
	movlw	(0C0h)
	fcall	_Lcd_Command
	line	115
	
l5751:	
;RUN_FULL_CYCLE.h: 115: Lcd_String("OF T");
	movlw	((STR_20-__stringbase))&0ffh
	fcall	_Lcd_String
	line	117
	
l5753:	
;RUN_FULL_CYCLE.h: 117: ON_TIME_RUN_INT = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(_ON_TIME_RUN_INT/8),(_ON_TIME_RUN_INT)&7
	line	118
	
l5755:	
;RUN_FULL_CYCLE.h: 118: ON_TIME_FLAG = 1;
	bsf	(_ON_TIME_FLAG/8),(_ON_TIME_FLAG)&7
	line	120
	
l5757:	
;RUN_FULL_CYCLE.h: 120: eeprom_write(171,ON_TIME_FLAG);
	movlw	0
	btfsc	(_ON_TIME_FLAG/8),(_ON_TIME_FLAG)&7
	movlw	1
	movwf	(??_RUN_FULL_CYCLE+0)+0
	movf	(??_RUN_FULL_CYCLE+0)+0,w
	movwf	(?_eeprom_write)
	movlw	(0ABh)
	fcall	_eeprom_write
	line	121
	
l5759:	
;RUN_FULL_CYCLE.h: 121: eeprom_write(172,ON_TIME_RUN_INT);
	movlw	0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(_ON_TIME_RUN_INT/8),(_ON_TIME_RUN_INT)&7
	movlw	1
	movwf	(??_RUN_FULL_CYCLE+0)+0
	movf	(??_RUN_FULL_CYCLE+0)+0,w
	movwf	(?_eeprom_write)
	movlw	(0ACh)
	fcall	_eeprom_write
	line	122
;RUN_FULL_CYCLE.h: 122: break;
	goto	l895
	line	123
	
l894:	
	line	125
	
l5761:	
;RUN_FULL_CYCLE.h: 123: }
;RUN_FULL_CYCLE.h: 125: if(RSS==0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	((_RSS+1)),w
	iorwf	((_RSS)),w
	skipz
	goto	u4341
	goto	u4340
u4341:
	goto	l5773
u4340:
	line	127
	
l5763:	
;RUN_FULL_CYCLE.h: 126: {
;RUN_FULL_CYCLE.h: 127: RMM--;
	movlw	low(-1)
	addwf	(_RMM),f
	skipnc
	incf	(_RMM+1),f
	movlw	high(-1)
	addwf	(_RMM+1),f
	line	129
	
l5765:	
;RUN_FULL_CYCLE.h: 129: eeprom_write(174,RMM);
	movf	(_RMM),w
	movwf	(??_RUN_FULL_CYCLE+0)+0
	movf	(??_RUN_FULL_CYCLE+0)+0,w
	movwf	(?_eeprom_write)
	movlw	(0AEh)
	fcall	_eeprom_write
	line	131
	
l5767:	
;RUN_FULL_CYCLE.h: 131: RSS=59;
	movlw	low(03Bh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_RSS)
	movlw	high(03Bh)
	movwf	((_RSS))+1
	line	133
	
l5769:	
;RUN_FULL_CYCLE.h: 133: if(RMM <= 0)
	movf	(_RMM+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4355
	movlw	low(01h)
	subwf	(_RMM),w
u4355:

	skipnc
	goto	u4351
	goto	u4350
u4351:
	goto	l5773
u4350:
	line	135
	
l5771:	
;RUN_FULL_CYCLE.h: 134: {
;RUN_FULL_CYCLE.h: 135: RMM=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_RMM)
	clrf	(_RMM+1)
	goto	l5773
	line	136
	
l897:	
	goto	l5773
	line	137
	
l896:	
	line	138
	
l5773:	
;RUN_FULL_CYCLE.h: 136: }
;RUN_FULL_CYCLE.h: 137: }
;RUN_FULL_CYCLE.h: 138: if(RMM==0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	((_RMM+1)),w
	iorwf	((_RMM)),w
	skipz
	goto	u4361
	goto	u4360
u4361:
	goto	l5785
u4360:
	line	140
	
l5775:	
;RUN_FULL_CYCLE.h: 139: {
;RUN_FULL_CYCLE.h: 140: RHH--;
	movlw	low(-1)
	addwf	(_RHH),f
	skipnc
	incf	(_RHH+1),f
	movlw	high(-1)
	addwf	(_RHH+1),f
	line	142
	
l5777:	
;RUN_FULL_CYCLE.h: 142: eeprom_write(175,RHH);
	movf	(_RHH),w
	movwf	(??_RUN_FULL_CYCLE+0)+0
	movf	(??_RUN_FULL_CYCLE+0)+0,w
	movwf	(?_eeprom_write)
	movlw	(0AFh)
	fcall	_eeprom_write
	line	144
	
l5779:	
;RUN_FULL_CYCLE.h: 144: RMM=59;
	movlw	low(03Bh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_RMM)
	movlw	high(03Bh)
	movwf	((_RMM))+1
	line	146
	
l5781:	
;RUN_FULL_CYCLE.h: 146: if(RHH <= 0)
	movf	(_RHH+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4375
	movlw	low(01h)
	subwf	(_RHH),w
u4375:

	skipnc
	goto	u4371
	goto	u4370
u4371:
	goto	l5785
u4370:
	line	148
	
l5783:	
;RUN_FULL_CYCLE.h: 147: {
;RUN_FULL_CYCLE.h: 148: RHH=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_RHH)
	clrf	(_RHH+1)
	line	149
;RUN_FULL_CYCLE.h: 149: RMM=0;
	clrf	(_RMM)
	clrf	(_RMM+1)
	goto	l5785
	line	150
	
l899:	
	goto	l5785
	line	151
	
l898:	
	line	154
	
l5785:	
;RUN_FULL_CYCLE.h: 150: }
;RUN_FULL_CYCLE.h: 151: }
;RUN_FULL_CYCLE.h: 154: if(STATE == 1)
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(_STATE),w
	iorwf	(_STATE+1),w
	skipz
	goto	u4381
	goto	u4380
u4381:
	goto	l5789
u4380:
	line	156
	
l5787:	
;RUN_FULL_CYCLE.h: 155: {
;RUN_FULL_CYCLE.h: 156: PORTB = 0x08;
	movlw	(08h)
	movwf	(6)	;volatile
	goto	l5789
	line	157
	
l900:	
	line	159
	
l5789:	
;RUN_FULL_CYCLE.h: 157: }
;RUN_FULL_CYCLE.h: 159: if((STATE > 1) && (STATE <= 16))
	movf	(_STATE+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(02h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4395
	movlw	low(02h)
	subwf	(_STATE),w
u4395:

	skipc
	goto	u4391
	goto	u4390
u4391:
	goto	l5799
u4390:
	
l5791:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_STATE+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(011h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4405
	movlw	low(011h)
	subwf	(_STATE),w
u4405:

	skipnc
	goto	u4401
	goto	u4400
u4401:
	goto	l5799
u4400:
	line	163
	
l5793:	
;RUN_FULL_CYCLE.h: 160: {
;RUN_FULL_CYCLE.h: 163: PORTB = PORT[STATE];
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_STATE),w
	addlw	_PORT&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank2
	movf	indf,w
	movwf	(6)	;volatile
	line	164
	
l5795:	
;RUN_FULL_CYCLE.h: 164: Lcd_Command(0x8c);
	movlw	(08Ch)
	fcall	_Lcd_Command
	line	165
	
l5797:	
;RUN_FULL_CYCLE.h: 165: divider(STATE);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_STATE+1),w
	clrf	(?_divider+1)
	addwf	(?_divider+1)
	movf	(_STATE),w
	clrf	(?_divider)
	addwf	(?_divider)

	fcall	_divider
	line	167
;RUN_FULL_CYCLE.h: 167: }
	goto	l5805
	line	168
	
l901:	
	
l5799:	
;RUN_FULL_CYCLE.h: 168: else if((STATE > 16) && (STATE <= 24))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_STATE+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(011h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4415
	movlw	low(011h)
	subwf	(_STATE),w
u4415:

	skipc
	goto	u4411
	goto	u4410
u4411:
	goto	l5805
u4410:
	
l5801:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_STATE+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(019h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4425
	movlw	low(019h)
	subwf	(_STATE),w
u4425:

	skipnc
	goto	u4421
	goto	u4420
u4421:
	goto	l5805
u4420:
	line	170
	
l5803:	
;RUN_FULL_CYCLE.h: 169: {
;RUN_FULL_CYCLE.h: 170: PORTC = PORT[STATE];
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_STATE),w
	addlw	_PORT&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank2
	movf	indf,w
	movwf	(7)	;volatile
	goto	l5805
	line	171
	
l903:	
	goto	l5805
	line	172
	
l902:	
	goto	l5805
	
l891:	
	line	87
	
l5805:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(_ON_TIME_RUN_INT/8),(_ON_TIME_RUN_INT)&7
	goto	u4431
	goto	u4430
u4431:
	goto	l5719
u4430:
	
l895:	
	line	174
;RUN_FULL_CYCLE.h: 171: }
;RUN_FULL_CYCLE.h: 172: }
;RUN_FULL_CYCLE.h: 174: if(ON_TIME_FLAG == 1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(_ON_TIME_FLAG/8),(_ON_TIME_FLAG)&7
	goto	u4441
	goto	u4440
u4441:
	goto	l5879
u4440:
	line	176
	
l5807:	
;RUN_FULL_CYCLE.h: 175: {
;RUN_FULL_CYCLE.h: 176: ON_TIME_RUN_INT = 0;
	bcf	(_ON_TIME_RUN_INT/8),(_ON_TIME_RUN_INT)&7
	line	177
;RUN_FULL_CYCLE.h: 177: ON_TIME_FLAG = 0;
	bcf	(_ON_TIME_FLAG/8),(_ON_TIME_FLAG)&7
	line	179
	
l5809:	
;RUN_FULL_CYCLE.h: 179: eeprom_write(171,ON_TIME_FLAG);
	movlw	0
	btfsc	(_ON_TIME_FLAG/8),(_ON_TIME_FLAG)&7
	movlw	1
	movwf	(??_RUN_FULL_CYCLE+0)+0
	movf	(??_RUN_FULL_CYCLE+0)+0,w
	movwf	(?_eeprom_write)
	movlw	(0ABh)
	fcall	_eeprom_write
	line	180
;RUN_FULL_CYCLE.h: 180: eeprom_write(172,ON_TIME_RUN_INT);
	movlw	0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(_ON_TIME_RUN_INT/8),(_ON_TIME_RUN_INT)&7
	movlw	1
	movwf	(??_RUN_FULL_CYCLE+0)+0
	movf	(??_RUN_FULL_CYCLE+0)+0,w
	movwf	(?_eeprom_write)
	movlw	(0ACh)
	fcall	_eeprom_write
	line	182
	
l5811:	
;RUN_FULL_CYCLE.h: 182: ADC_EEPROM_STORE();
	fcall	_ADC_EEPROM_STORE
	goto	l5879
	line	183
	
l904:	
	line	185
;RUN_FULL_CYCLE.h: 183: }
;RUN_FULL_CYCLE.h: 185: while(ON_TIME_RUN_INT==0)
	goto	l5879
	
l906:	
	line	187
	
l5813:	
;RUN_FULL_CYCLE.h: 186: {
;RUN_FULL_CYCLE.h: 187: ADC_EEPROM_STORE();
	fcall	_ADC_EEPROM_STORE
	line	189
	
l5815:	
;RUN_FULL_CYCLE.h: 189: Lcd_Command(0xc5);
	movlw	(0C5h)
	fcall	_Lcd_Command
	line	190
	
l5817:	
;RUN_FULL_CYCLE.h: 190: divider(FHH);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_FHH+1),w
	clrf	(?_divider+1)
	addwf	(?_divider+1)
	movf	(_FHH),w
	clrf	(?_divider)
	addwf	(?_divider)

	fcall	_divider
	line	191
	
l5819:	
;RUN_FULL_CYCLE.h: 191: Lcd_Command(0xc8);
	movlw	(0C8h)
	fcall	_Lcd_Command
	line	192
	
l5821:	
;RUN_FULL_CYCLE.h: 192: divider(FMM);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_FMM+1),w
	clrf	(?_divider+1)
	addwf	(?_divider+1)
	movf	(_FMM),w
	clrf	(?_divider)
	addwf	(?_divider)

	fcall	_divider
	line	193
	
l5823:	
;RUN_FULL_CYCLE.h: 193: Lcd_Command(0xcB);
	movlw	(0CBh)
	fcall	_Lcd_Command
	line	194
	
l5825:	
;RUN_FULL_CYCLE.h: 194: divider(FSS);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_FSS+1),w
	clrf	(?_divider+1)
	addwf	(?_divider+1)
	movf	(_FSS),w
	clrf	(?_divider)
	addwf	(?_divider)

	fcall	_divider
	line	196
	
l5827:	
;RUN_FULL_CYCLE.h: 196: FSS--;
	movlw	low(-1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_FSS),f
	skipnc
	incf	(_FSS+1),f
	movlw	high(-1)
	addwf	(_FSS+1),f
	line	198
	
l5829:	
;RUN_FULL_CYCLE.h: 198: eeprom_write(176,FSS);
	movf	(_FSS),w
	movwf	(??_RUN_FULL_CYCLE+0)+0
	movf	(??_RUN_FULL_CYCLE+0)+0,w
	movwf	(?_eeprom_write)
	movlw	(0B0h)
	fcall	_eeprom_write
	line	200
;RUN_FULL_CYCLE.h: 200: if(FSS <= 0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_FSS+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4455
	movlw	low(01h)
	subwf	(_FSS),w
u4455:

	skipnc
	goto	u4451
	goto	u4450
u4451:
	goto	l5833
u4450:
	line	202
	
l5831:	
;RUN_FULL_CYCLE.h: 201: {
;RUN_FULL_CYCLE.h: 202: FSS = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_FSS)
	clrf	(_FSS+1)
	goto	l5833
	line	203
	
l907:	
	line	204
	
l5833:	
;RUN_FULL_CYCLE.h: 203: }
;RUN_FULL_CYCLE.h: 204: EMERGCY_START_STOP();
	fcall	_EMERGCY_START_STOP
	line	205
	
l5835:	
;RUN_FULL_CYCLE.h: 205: if((FSS==0) && (FMM==0) && (FHH==0))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	((_FSS+1)),w
	iorwf	((_FSS)),w
	skipz
	goto	u4461
	goto	u4460
u4461:
	goto	l5855
u4460:
	
l5837:	
	movf	((_FMM+1)),w
	iorwf	((_FMM)),w
	skipz
	goto	u4471
	goto	u4470
u4471:
	goto	l5855
u4470:
	
l5839:	
	movf	((_FHH+1)),w
	iorwf	((_FHH)),w
	skipz
	goto	u4481
	goto	u4480
u4481:
	goto	l5855
u4480:
	line	207
	
l5841:	
;RUN_FULL_CYCLE.h: 206: {
;RUN_FULL_CYCLE.h: 207: FMM=0;
	clrf	(_FMM)
	clrf	(_FMM+1)
	line	208
;RUN_FULL_CYCLE.h: 208: FHH=0;
	clrf	(_FHH)
	clrf	(_FHH+1)
	line	209
;RUN_FULL_CYCLE.h: 209: FSS=0;
	clrf	(_FSS)
	clrf	(_FSS+1)
	line	211
	
l5843:	
;RUN_FULL_CYCLE.h: 211: Lcd_Command(0xC0);
	movlw	(0C0h)
	fcall	_Lcd_Command
	line	212
	
l5845:	
;RUN_FULL_CYCLE.h: 212: Lcd_String("ON T");
	movlw	((STR_21-__stringbase))&0ffh
	fcall	_Lcd_String
	line	214
	
l5847:	
;RUN_FULL_CYCLE.h: 214: ON_TIME_RUN_INT = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(_ON_TIME_RUN_INT/8),(_ON_TIME_RUN_INT)&7
	line	215
	
l5849:	
;RUN_FULL_CYCLE.h: 215: ON_TIME_FLAG = 0;
	bcf	(_ON_TIME_FLAG/8),(_ON_TIME_FLAG)&7
	line	217
	
l5851:	
;RUN_FULL_CYCLE.h: 217: eeprom_write(171,ON_TIME_FLAG);
	movlw	0
	btfsc	(_ON_TIME_FLAG/8),(_ON_TIME_FLAG)&7
	movlw	1
	movwf	(??_RUN_FULL_CYCLE+0)+0
	movf	(??_RUN_FULL_CYCLE+0)+0,w
	movwf	(?_eeprom_write)
	movlw	(0ABh)
	fcall	_eeprom_write
	line	218
	
l5853:	
;RUN_FULL_CYCLE.h: 218: eeprom_write(172,ON_TIME_RUN_INT);
	movlw	0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(_ON_TIME_RUN_INT/8),(_ON_TIME_RUN_INT)&7
	movlw	1
	movwf	(??_RUN_FULL_CYCLE+0)+0
	movf	(??_RUN_FULL_CYCLE+0)+0,w
	movwf	(?_eeprom_write)
	movlw	(0ACh)
	fcall	_eeprom_write
	line	220
;RUN_FULL_CYCLE.h: 220: break;
	goto	l909
	line	221
	
l908:	
	line	223
	
l5855:	
;RUN_FULL_CYCLE.h: 221: }
;RUN_FULL_CYCLE.h: 223: if(FSS==0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	((_FSS+1)),w
	iorwf	((_FSS)),w
	skipz
	goto	u4491
	goto	u4490
u4491:
	goto	l5867
u4490:
	line	225
	
l5857:	
;RUN_FULL_CYCLE.h: 224: {
;RUN_FULL_CYCLE.h: 225: FMM--;
	movlw	low(-1)
	addwf	(_FMM),f
	skipnc
	incf	(_FMM+1),f
	movlw	high(-1)
	addwf	(_FMM+1),f
	line	227
	
l5859:	
;RUN_FULL_CYCLE.h: 227: eeprom_write(177,FMM);
	movf	(_FMM),w
	movwf	(??_RUN_FULL_CYCLE+0)+0
	movf	(??_RUN_FULL_CYCLE+0)+0,w
	movwf	(?_eeprom_write)
	movlw	(0B1h)
	fcall	_eeprom_write
	line	229
	
l5861:	
;RUN_FULL_CYCLE.h: 229: FSS=59;
	movlw	low(03Bh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_FSS)
	movlw	high(03Bh)
	movwf	((_FSS))+1
	line	231
	
l5863:	
;RUN_FULL_CYCLE.h: 231: if(FMM <= 0)
	movf	(_FMM+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4505
	movlw	low(01h)
	subwf	(_FMM),w
u4505:

	skipnc
	goto	u4501
	goto	u4500
u4501:
	goto	l5867
u4500:
	line	233
	
l5865:	
;RUN_FULL_CYCLE.h: 232: {
;RUN_FULL_CYCLE.h: 233: FMM=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_FMM)
	clrf	(_FMM+1)
	goto	l5867
	line	234
	
l911:	
	goto	l5867
	line	235
	
l910:	
	line	236
	
l5867:	
;RUN_FULL_CYCLE.h: 234: }
;RUN_FULL_CYCLE.h: 235: }
;RUN_FULL_CYCLE.h: 236: if(FMM==0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	((_FMM+1)),w
	iorwf	((_FMM)),w
	skipz
	goto	u4511
	goto	u4510
u4511:
	goto	l912
u4510:
	line	238
	
l5869:	
;RUN_FULL_CYCLE.h: 237: {
;RUN_FULL_CYCLE.h: 238: FHH--;
	movlw	low(-1)
	addwf	(_FHH),f
	skipnc
	incf	(_FHH+1),f
	movlw	high(-1)
	addwf	(_FHH+1),f
	line	240
	
l5871:	
;RUN_FULL_CYCLE.h: 240: eeprom_write(178,FHH);
	movf	(_FHH),w
	movwf	(??_RUN_FULL_CYCLE+0)+0
	movf	(??_RUN_FULL_CYCLE+0)+0,w
	movwf	(?_eeprom_write)
	movlw	(0B2h)
	fcall	_eeprom_write
	line	242
	
l5873:	
;RUN_FULL_CYCLE.h: 242: FMM=59;
	movlw	low(03Bh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_FMM)
	movlw	high(03Bh)
	movwf	((_FMM))+1
	line	244
	
l5875:	
;RUN_FULL_CYCLE.h: 244: if(FHH <= 0)
	movf	(_FHH+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4525
	movlw	low(01h)
	subwf	(_FHH),w
u4525:

	skipnc
	goto	u4521
	goto	u4520
u4521:
	goto	l912
u4520:
	line	246
	
l5877:	
;RUN_FULL_CYCLE.h: 245: {
;RUN_FULL_CYCLE.h: 246: FHH=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_FHH)
	clrf	(_FHH+1)
	line	247
;RUN_FULL_CYCLE.h: 247: FMM=0;
	clrf	(_FMM)
	clrf	(_FMM+1)
	goto	l912
	line	248
	
l913:	
	line	249
	
l912:	
	line	251
;RUN_FULL_CYCLE.h: 248: }
;RUN_FULL_CYCLE.h: 249: }
;RUN_FULL_CYCLE.h: 251: PORTB = 0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	252
;RUN_FULL_CYCLE.h: 252: PORTC = 0X00;
	clrf	(7)	;volatile
	goto	l5879
	line	253
	
l905:	
	line	185
	
l5879:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(_ON_TIME_RUN_INT/8),(_ON_TIME_RUN_INT)&7
	goto	u4531
	goto	u4530
u4531:
	goto	l5813
u4530:
	
l909:	
	line	255
;RUN_FULL_CYCLE.h: 253: }
;RUN_FULL_CYCLE.h: 255: if(ON_TIME_FLAG == 0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(_ON_TIME_FLAG/8),(_ON_TIME_FLAG)&7
	goto	u4541
	goto	u4540
u4541:
	goto	l5891
u4540:
	line	257
	
l5881:	
;RUN_FULL_CYCLE.h: 256: {
;RUN_FULL_CYCLE.h: 257: ON_TIME_RUN_INT = 1;
	bsf	(_ON_TIME_RUN_INT/8),(_ON_TIME_RUN_INT)&7
	line	258
;RUN_FULL_CYCLE.h: 258: ON_TIME_FLAG = 1;
	bsf	(_ON_TIME_FLAG/8),(_ON_TIME_FLAG)&7
	line	260
	
l5883:	
;RUN_FULL_CYCLE.h: 260: eeprom_write(171,ON_TIME_FLAG);
	movlw	0
	btfsc	(_ON_TIME_FLAG/8),(_ON_TIME_FLAG)&7
	movlw	1
	movwf	(??_RUN_FULL_CYCLE+0)+0
	movf	(??_RUN_FULL_CYCLE+0)+0,w
	movwf	(?_eeprom_write)
	movlw	(0ABh)
	fcall	_eeprom_write
	line	261
;RUN_FULL_CYCLE.h: 261: eeprom_write(172,ON_TIME_RUN_INT);
	movlw	0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(_ON_TIME_RUN_INT/8),(_ON_TIME_RUN_INT)&7
	movlw	1
	movwf	(??_RUN_FULL_CYCLE+0)+0
	movf	(??_RUN_FULL_CYCLE+0)+0,w
	movwf	(?_eeprom_write)
	movlw	(0ACh)
	fcall	_eeprom_write
	line	263
	
l5885:	
;RUN_FULL_CYCLE.h: 263: ADC_EEPROM_STORE();
	fcall	_ADC_EEPROM_STORE
	goto	l5891
	line	264
	
l914:	
	line	266
;RUN_FULL_CYCLE.h: 264: }
;RUN_FULL_CYCLE.h: 266: }
	goto	l5891
	line	268
	
l888:	
	line	270
	
l5887:	
;RUN_FULL_CYCLE.h: 268: else
;RUN_FULL_CYCLE.h: 269: {
;RUN_FULL_CYCLE.h: 270: Lcd_Command(0x86);
	movlw	(086h)
	fcall	_Lcd_Command
	line	271
	
l5889:	
;RUN_FULL_CYCLE.h: 271: Lcd_String("Disable");
	movlw	((STR_22-__stringbase))&0ffh
	fcall	_Lcd_String
	goto	l5891
	line	272
	
l915:	
	line	274
	
l5891:	
;RUN_FULL_CYCLE.h: 272: }
;RUN_FULL_CYCLE.h: 274: if(STATE == 2)
	movlw	02h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(_STATE),w
	iorwf	(_STATE+1),w
	skipz
	goto	u4551
	goto	u4550
u4551:
	goto	l5905
u4550:
	line	276
	
l5893:	
;RUN_FULL_CYCLE.h: 275: {
;RUN_FULL_CYCLE.h: 276: STATE = 0;
	clrf	(_STATE)
	clrf	(_STATE+1)
	line	279
	
l5895:	
;RUN_FULL_CYCLE.h: 279: Lcd_Command(0x01);
	movlw	(01h)
	fcall	_Lcd_Command
	line	281
	
l5897:	
;RUN_FULL_CYCLE.h: 281: Lcd_Command(0xC0);
	movlw	(0C0h)
	fcall	_Lcd_Command
	line	282
	
l5899:	
;RUN_FULL_CYCLE.h: 282: Lcd_String("COMPLETED");
	movlw	((STR_23-__stringbase))&0ffh
	fcall	_Lcd_String
	line	283
	
l5901:	
;RUN_FULL_CYCLE.h: 283: _delay((unsigned long)((1000)*(20e6/4000.0)));
	opt asmopt_off
movlw  26
movwf	((??_RUN_FULL_CYCLE+0)+0+2),f
movlw	94
movwf	((??_RUN_FULL_CYCLE+0)+0+1),f
	movlw	134
movwf	((??_RUN_FULL_CYCLE+0)+0),f
u4947:
	decfsz	((??_RUN_FULL_CYCLE+0)+0),f
	goto	u4947
	decfsz	((??_RUN_FULL_CYCLE+0)+0+1),f
	goto	u4947
	decfsz	((??_RUN_FULL_CYCLE+0)+0+2),f
	goto	u4947
	clrwdt
opt asmopt_on

	line	284
	
l5903:	
;RUN_FULL_CYCLE.h: 284: Lcd_Command(0x01);
	movlw	(01h)
	fcall	_Lcd_Command
	goto	l5905
	line	287
	
l916:	
	line	289
	
l5905:	
;RUN_FULL_CYCLE.h: 287: }
;RUN_FULL_CYCLE.h: 289: ADC_EEPROM_STORE();
	fcall	_ADC_EEPROM_STORE
	goto	l5907
	line	290
	
l886:	
	line	29
	
l5907:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(_CYCLE_START/8),(_CYCLE_START)&7
	goto	u4561
	goto	u4560
u4561:
	goto	l5663
u4560:
	goto	l918
	
l917:	
	line	291
	
l918:	
	return
	opt stack 0
GLOBAL	__end_of_RUN_FULL_CYCLE
	__end_of_RUN_FULL_CYCLE:
;; =============== function _RUN_FULL_CYCLE ends ============

	signat	_RUN_FULL_CYCLE,88
	global	_STATUS_READ
psect	text435,local,class=CODE,delta=2
global __ptext435
__ptext435:

;; *************** function _STATUS_READ *****************
;; Defined at:
;;		line 2 in file "E:\02-CODING\06-KAP CODING\02-PIC 16F877A CONTROLLER\42-AUTO START test\code\STATUS_READ.h"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_Lcd_Command
;;		_Lcd_String
;;		_divider
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text435
	file	"E:\02-CODING\06-KAP CODING\02-PIC 16F877A CONTROLLER\42-AUTO START test\code\STATUS_READ.h"
	line	2
	global	__size_of_STATUS_READ
	__size_of_STATUS_READ	equ	__end_of_STATUS_READ-_STATUS_READ
	
_STATUS_READ:	
	opt	stack 5
; Regs used in _STATUS_READ: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	3
	
l5571:	
;STATUS_READ.h: 3: Lcd_Command(0x80);
	movlw	(080h)
	fcall	_Lcd_Command
	line	4
	
l5573:	
;STATUS_READ.h: 4: Lcd_String("R:");
	movlw	((STR_8-__stringbase))&0ffh
	fcall	_Lcd_String
	line	5
	
l5575:	
;STATUS_READ.h: 5: Lcd_Command(0xC0);
	movlw	(0C0h)
	fcall	_Lcd_Command
	line	6
;STATUS_READ.h: 6: Lcd_String("ON T:  :  :  ");
	movlw	((STR_9-__stringbase))&0ffh
	fcall	_Lcd_String
	line	8
;STATUS_READ.h: 8: while(RA4==1)
	goto	l5659
	
l849:	
	line	10
	
l5577:	
;STATUS_READ.h: 9: {
;STATUS_READ.h: 10: STATE++;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_STATE),f
	skipnc
	incf	(_STATE+1),f
	movlw	high(01h)
	addwf	(_STATE+1),f
	line	12
	
l5579:	
;STATUS_READ.h: 12: TIME_STORE_ARRAY = STATE;
	movf	(_STATE+1),w
	clrf	(_TIME_STORE_ARRAY+1)
	addwf	(_TIME_STORE_ARRAY+1)
	movf	(_STATE),w
	clrf	(_TIME_STORE_ARRAY)
	addwf	(_TIME_STORE_ARRAY)

	line	14
	
l5581:	
;STATUS_READ.h: 14: Lcd_Command(0x82);
	movlw	(082h)
	fcall	_Lcd_Command
	line	15
	
l5583:	
;STATUS_READ.h: 15: divider(STATE);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_STATE+1),w
	clrf	(?_divider+1)
	addwf	(?_divider+1)
	movf	(_STATE),w
	clrf	(?_divider)
	addwf	(?_divider)

	fcall	_divider
	line	17
	
l5585:	
;STATUS_READ.h: 17: if(staus[STATE]==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_STATE),w
	addlw	_staus&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	movf	indf,w
	xorlw	01h
	skipz
	goto	u4241
	goto	u4240
u4241:
	goto	l5621
u4240:
	line	19
	
l5587:	
;STATUS_READ.h: 18: {
;STATUS_READ.h: 19: Lcd_Command(0x86);
	movlw	(086h)
	fcall	_Lcd_Command
	line	20
	
l5589:	
;STATUS_READ.h: 20: Lcd_String("Enable ");
	movlw	((STR_10-__stringbase))&0ffh
	fcall	_Lcd_String
	line	22
	
l5591:	
;STATUS_READ.h: 22: Lcd_Command(0xC0);
	movlw	(0C0h)
	fcall	_Lcd_Command
	line	23
;STATUS_READ.h: 23: Lcd_String("ON T");
	movlw	((STR_11-__stringbase))&0ffh
	fcall	_Lcd_String
	line	25
	
l5593:	
;STATUS_READ.h: 25: Lcd_Command(0xc5);
	movlw	(0C5h)
	fcall	_Lcd_Command
	line	26
	
l5595:	
;STATUS_READ.h: 26: divider(HH_N[STATE]);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_STATE),w
	addlw	_HH_N&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	movf	indf,w
	movwf	(??_STATUS_READ+0)+0
	clrf	(??_STATUS_READ+0)+0+1
	movf	0+(??_STATUS_READ+0)+0,w
	movwf	(?_divider)
	movf	1+(??_STATUS_READ+0)+0,w
	movwf	(?_divider+1)
	fcall	_divider
	line	27
;STATUS_READ.h: 27: Lcd_Command(0xc8);
	movlw	(0C8h)
	fcall	_Lcd_Command
	line	28
	
l5597:	
;STATUS_READ.h: 28: divider(MM_N[STATE]);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_STATE),w
	addlw	_MM_N&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	movf	indf,w
	movwf	(??_STATUS_READ+0)+0
	clrf	(??_STATUS_READ+0)+0+1
	movf	0+(??_STATUS_READ+0)+0,w
	movwf	(?_divider)
	movf	1+(??_STATUS_READ+0)+0,w
	movwf	(?_divider+1)
	fcall	_divider
	line	29
	
l5599:	
;STATUS_READ.h: 29: Lcd_Command(0xcB);
	movlw	(0CBh)
	fcall	_Lcd_Command
	line	30
;STATUS_READ.h: 30: divider(SS_N[STATE]);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_STATE),w
	addlw	_SS_N&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	movf	indf,w
	movwf	(??_STATUS_READ+0)+0
	clrf	(??_STATUS_READ+0)+0+1
	movf	0+(??_STATUS_READ+0)+0,w
	movwf	(?_divider)
	movf	1+(??_STATUS_READ+0)+0,w
	movwf	(?_divider+1)
	fcall	_divider
	line	32
	
l5601:	
;STATUS_READ.h: 32: _delay((unsigned long)((1000)*(20e6/4000.0)));
	opt asmopt_off
movlw  26
movwf	((??_STATUS_READ+0)+0+2),f
movlw	94
movwf	((??_STATUS_READ+0)+0+1),f
	movlw	134
movwf	((??_STATUS_READ+0)+0),f
u4957:
	decfsz	((??_STATUS_READ+0)+0),f
	goto	u4957
	decfsz	((??_STATUS_READ+0)+0+1),f
	goto	u4957
	decfsz	((??_STATUS_READ+0)+0+2),f
	goto	u4957
	clrwdt
opt asmopt_on

	line	34
	
l5603:	
;STATUS_READ.h: 34: Lcd_Command(0xC0);
	movlw	(0C0h)
	fcall	_Lcd_Command
	line	35
	
l5605:	
;STATUS_READ.h: 35: Lcd_String("OF T");
	movlw	((STR_12-__stringbase))&0ffh
	fcall	_Lcd_String
	line	37
	
l5607:	
;STATUS_READ.h: 37: Lcd_Command(0xc5);
	movlw	(0C5h)
	fcall	_Lcd_Command
	line	38
	
l5609:	
;STATUS_READ.h: 38: divider(HH_F[STATE]);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_STATE),w
	addlw	_HH_F&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	movf	indf,w
	movwf	(??_STATUS_READ+0)+0
	clrf	(??_STATUS_READ+0)+0+1
	movf	0+(??_STATUS_READ+0)+0,w
	movwf	(?_divider)
	movf	1+(??_STATUS_READ+0)+0,w
	movwf	(?_divider+1)
	fcall	_divider
	line	39
	
l5611:	
;STATUS_READ.h: 39: Lcd_Command(0xc8);
	movlw	(0C8h)
	fcall	_Lcd_Command
	line	40
	
l5613:	
;STATUS_READ.h: 40: divider(MM_F[STATE]);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_STATE),w
	addlw	_MM_F&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank2
	movf	indf,w
	movwf	(??_STATUS_READ+0)+0
	clrf	(??_STATUS_READ+0)+0+1
	movf	0+(??_STATUS_READ+0)+0,w
	movwf	(?_divider)
	movf	1+(??_STATUS_READ+0)+0,w
	movwf	(?_divider+1)
	fcall	_divider
	line	41
	
l5615:	
;STATUS_READ.h: 41: Lcd_Command(0xcB);
	movlw	(0CBh)
	fcall	_Lcd_Command
	line	42
	
l5617:	
;STATUS_READ.h: 42: divider(SS_F[STATE]);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_STATE),w
	addlw	_SS_F&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank2
	movf	indf,w
	movwf	(??_STATUS_READ+0)+0
	clrf	(??_STATUS_READ+0)+0+1
	movf	0+(??_STATUS_READ+0)+0,w
	movwf	(?_divider)
	movf	1+(??_STATUS_READ+0)+0,w
	movwf	(?_divider+1)
	fcall	_divider
	line	44
	
l5619:	
;STATUS_READ.h: 44: _delay((unsigned long)((1000)*(20e6/4000.0)));
	opt asmopt_off
movlw  26
movwf	((??_STATUS_READ+0)+0+2),f
movlw	94
movwf	((??_STATUS_READ+0)+0+1),f
	movlw	134
movwf	((??_STATUS_READ+0)+0),f
u4967:
	decfsz	((??_STATUS_READ+0)+0),f
	goto	u4967
	decfsz	((??_STATUS_READ+0)+0+1),f
	goto	u4967
	decfsz	((??_STATUS_READ+0)+0+2),f
	goto	u4967
	clrwdt
opt asmopt_on

	line	45
;STATUS_READ.h: 45: }
	goto	l5655
	line	47
	
l850:	
	line	49
	
l5621:	
;STATUS_READ.h: 47: else
;STATUS_READ.h: 48: {
;STATUS_READ.h: 49: Lcd_Command(0x86);
	movlw	(086h)
	fcall	_Lcd_Command
	line	50
	
l5623:	
;STATUS_READ.h: 50: Lcd_String("Disable");
	movlw	((STR_13-__stringbase))&0ffh
	fcall	_Lcd_String
	line	52
	
l5625:	
;STATUS_READ.h: 52: Lcd_Command(0xC0);
	movlw	(0C0h)
	fcall	_Lcd_Command
	line	53
;STATUS_READ.h: 53: Lcd_String("ON T");
	movlw	((STR_14-__stringbase))&0ffh
	fcall	_Lcd_String
	line	55
	
l5627:	
;STATUS_READ.h: 55: Lcd_Command(0xc5);
	movlw	(0C5h)
	fcall	_Lcd_Command
	line	56
	
l5629:	
;STATUS_READ.h: 56: divider(HH_N[STATE]);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_STATE),w
	addlw	_HH_N&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	movf	indf,w
	movwf	(??_STATUS_READ+0)+0
	clrf	(??_STATUS_READ+0)+0+1
	movf	0+(??_STATUS_READ+0)+0,w
	movwf	(?_divider)
	movf	1+(??_STATUS_READ+0)+0,w
	movwf	(?_divider+1)
	fcall	_divider
	line	57
;STATUS_READ.h: 57: Lcd_Command(0xc8);
	movlw	(0C8h)
	fcall	_Lcd_Command
	line	58
	
l5631:	
;STATUS_READ.h: 58: divider(MM_N[STATE]);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_STATE),w
	addlw	_MM_N&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	movf	indf,w
	movwf	(??_STATUS_READ+0)+0
	clrf	(??_STATUS_READ+0)+0+1
	movf	0+(??_STATUS_READ+0)+0,w
	movwf	(?_divider)
	movf	1+(??_STATUS_READ+0)+0,w
	movwf	(?_divider+1)
	fcall	_divider
	line	59
	
l5633:	
;STATUS_READ.h: 59: Lcd_Command(0xcB);
	movlw	(0CBh)
	fcall	_Lcd_Command
	line	60
;STATUS_READ.h: 60: divider(SS_N[STATE]);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_STATE),w
	addlw	_SS_N&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	movf	indf,w
	movwf	(??_STATUS_READ+0)+0
	clrf	(??_STATUS_READ+0)+0+1
	movf	0+(??_STATUS_READ+0)+0,w
	movwf	(?_divider)
	movf	1+(??_STATUS_READ+0)+0,w
	movwf	(?_divider+1)
	fcall	_divider
	line	62
	
l5635:	
;STATUS_READ.h: 62: _delay((unsigned long)((1000)*(20e6/4000.0)));
	opt asmopt_off
movlw  26
movwf	((??_STATUS_READ+0)+0+2),f
movlw	94
movwf	((??_STATUS_READ+0)+0+1),f
	movlw	134
movwf	((??_STATUS_READ+0)+0),f
u4977:
	decfsz	((??_STATUS_READ+0)+0),f
	goto	u4977
	decfsz	((??_STATUS_READ+0)+0+1),f
	goto	u4977
	decfsz	((??_STATUS_READ+0)+0+2),f
	goto	u4977
	clrwdt
opt asmopt_on

	line	64
	
l5637:	
;STATUS_READ.h: 64: Lcd_Command(0xC0);
	movlw	(0C0h)
	fcall	_Lcd_Command
	line	65
	
l5639:	
;STATUS_READ.h: 65: Lcd_String("OF T");
	movlw	((STR_15-__stringbase))&0ffh
	fcall	_Lcd_String
	line	67
	
l5641:	
;STATUS_READ.h: 67: Lcd_Command(0xc5);
	movlw	(0C5h)
	fcall	_Lcd_Command
	line	68
	
l5643:	
;STATUS_READ.h: 68: divider(HH_F[STATE]);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_STATE),w
	addlw	_HH_F&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	movf	indf,w
	movwf	(??_STATUS_READ+0)+0
	clrf	(??_STATUS_READ+0)+0+1
	movf	0+(??_STATUS_READ+0)+0,w
	movwf	(?_divider)
	movf	1+(??_STATUS_READ+0)+0,w
	movwf	(?_divider+1)
	fcall	_divider
	line	69
	
l5645:	
;STATUS_READ.h: 69: Lcd_Command(0xc8);
	movlw	(0C8h)
	fcall	_Lcd_Command
	line	70
	
l5647:	
;STATUS_READ.h: 70: divider(MM_F[STATE]);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_STATE),w
	addlw	_MM_F&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank2
	movf	indf,w
	movwf	(??_STATUS_READ+0)+0
	clrf	(??_STATUS_READ+0)+0+1
	movf	0+(??_STATUS_READ+0)+0,w
	movwf	(?_divider)
	movf	1+(??_STATUS_READ+0)+0,w
	movwf	(?_divider+1)
	fcall	_divider
	line	71
	
l5649:	
;STATUS_READ.h: 71: Lcd_Command(0xcB);
	movlw	(0CBh)
	fcall	_Lcd_Command
	line	72
	
l5651:	
;STATUS_READ.h: 72: divider(SS_F[STATE]);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_STATE),w
	addlw	_SS_F&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank2
	movf	indf,w
	movwf	(??_STATUS_READ+0)+0
	clrf	(??_STATUS_READ+0)+0+1
	movf	0+(??_STATUS_READ+0)+0,w
	movwf	(?_divider)
	movf	1+(??_STATUS_READ+0)+0,w
	movwf	(?_divider+1)
	fcall	_divider
	line	74
	
l5653:	
;STATUS_READ.h: 74: _delay((unsigned long)((1000)*(20e6/4000.0)));
	opt asmopt_off
movlw  26
movwf	((??_STATUS_READ+0)+0+2),f
movlw	94
movwf	((??_STATUS_READ+0)+0+1),f
	movlw	134
movwf	((??_STATUS_READ+0)+0),f
u4987:
	decfsz	((??_STATUS_READ+0)+0),f
	goto	u4987
	decfsz	((??_STATUS_READ+0)+0+1),f
	goto	u4987
	decfsz	((??_STATUS_READ+0)+0+2),f
	goto	u4987
	clrwdt
opt asmopt_on

	goto	l5655
	line	75
	
l851:	
	line	77
	
l5655:	
;STATUS_READ.h: 75: }
;STATUS_READ.h: 77: if(STATE >= 2)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_STATE+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(02h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4255
	movlw	low(02h)
	subwf	(_STATE),w
u4255:

	skipc
	goto	u4251
	goto	u4250
u4251:
	goto	l5659
u4250:
	line	79
	
l5657:	
;STATUS_READ.h: 78: {
;STATUS_READ.h: 79: STATE = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_STATE)
	clrf	(_STATE+1)
	goto	l5659
	line	80
	
l852:	
	goto	l5659
	line	82
	
l848:	
	line	8
	
l5659:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(44/8),(44)&7
	goto	u4261
	goto	u4260
u4261:
	goto	l5577
u4260:
	goto	l854
	
l853:	
	line	83
	
l854:	
	return
	opt stack 0
GLOBAL	__end_of_STATUS_READ
	__end_of_STATUS_READ:
;; =============== function _STATUS_READ ends ============

	signat	_STATUS_READ,88
	global	_ON_TIMER_SELECTION
psect	text436,local,class=CODE,delta=2
global __ptext436
__ptext436:

;; *************** function _ON_TIMER_SELECTION *****************
;; Defined at:
;;		line 2 in file "E:\02-CODING\06-KAP CODING\02-PIC 16F877A CONTROLLER\42-AUTO START test\code\ON_TIMER_SELECTION.h"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_Lcd_Command
;;		_Lcd_Data
;;		_Lcd_String
;;		___wmul
;;		_eeprom_write
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text436
	file	"E:\02-CODING\06-KAP CODING\02-PIC 16F877A CONTROLLER\42-AUTO START test\code\ON_TIMER_SELECTION.h"
	line	2
	global	__size_of_ON_TIMER_SELECTION
	__size_of_ON_TIMER_SELECTION	equ	__end_of_ON_TIMER_SELECTION-_ON_TIMER_SELECTION
	
_ON_TIMER_SELECTION:	
	opt	stack 5
; Regs used in _ON_TIMER_SELECTION: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	5
	
l5521:	
;ON_TIMER_SELECTION.h: 5: Lcd_Command(0xc0+Cur_2);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_Cur_2),w
	addlw	0C0h
	fcall	_Lcd_Command
	line	6
	
l5523:	
;ON_TIMER_SELECTION.h: 6: Lcd_Data(i[Cur_2]+48);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_Cur_2),w
	movwf	(??_ON_TIMER_SELECTION+0)+0
	addwf	(??_ON_TIMER_SELECTION+0)+0,w
	addlw	_i&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	movf	indf,w
	addlw	030h
	fcall	_Lcd_Data
	line	8
	
l5525:	
;ON_TIMER_SELECTION.h: 8: if(RA2==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(42/8),(42)&7
	goto	u4161
	goto	u4160
u4161:
	goto	l818
u4160:
	line	10
	
l5527:	
;ON_TIMER_SELECTION.h: 9: {
;ON_TIMER_SELECTION.h: 10: Cur_2++;
	movlw	low(01h)
	addwf	(_Cur_2),f
	skipnc
	incf	(_Cur_2+1),f
	movlw	high(01h)
	addwf	(_Cur_2+1),f
	line	11
;ON_TIMER_SELECTION.h: 11: if(Cur_2==7)
	movlw	07h
	xorwf	(_Cur_2),w
	iorwf	(_Cur_2+1),w
	skipz
	goto	u4171
	goto	u4170
u4171:
	goto	l819
u4170:
	line	13
	
l5529:	
;ON_TIMER_SELECTION.h: 12: {
;ON_TIMER_SELECTION.h: 13: Cur_2 = 8;
	movlw	low(08h)
	movwf	(_Cur_2)
	movlw	high(08h)
	movwf	((_Cur_2))+1
	line	14
	
l819:	
	line	15
;ON_TIMER_SELECTION.h: 14: }
;ON_TIMER_SELECTION.h: 15: if(Cur_2==10)
	movlw	0Ah
	xorwf	(_Cur_2),w
	iorwf	(_Cur_2+1),w
	skipz
	goto	u4181
	goto	u4180
u4181:
	goto	l5533
u4180:
	line	17
	
l5531:	
;ON_TIMER_SELECTION.h: 16: {
;ON_TIMER_SELECTION.h: 17: Cur_2 = 11;
	movlw	low(0Bh)
	movwf	(_Cur_2)
	movlw	high(0Bh)
	movwf	((_Cur_2))+1
	goto	l5533
	line	18
	
l820:	
	line	19
	
l5533:	
;ON_TIMER_SELECTION.h: 18: }
;ON_TIMER_SELECTION.h: 19: if(Cur_2>=13)
	movf	(_Cur_2+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Dh))^80h
	subwf	btemp+1,w
	skipz
	goto	u4195
	movlw	low(0Dh)
	subwf	(_Cur_2),w
u4195:

	skipc
	goto	u4191
	goto	u4190
u4191:
	goto	l822
u4190:
	line	21
	
l5535:	
;ON_TIMER_SELECTION.h: 20: {
;ON_TIMER_SELECTION.h: 21: Cur_3 = 5;
	movlw	low(05h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_Cur_3)
	movlw	high(05h)
	movwf	((_Cur_3))+1
	line	23
	
l5537:	
;ON_TIMER_SELECTION.h: 23: Lcd_Command(0xC0);
	movlw	(0C0h)
	fcall	_Lcd_Command
	line	24
	
l5539:	
;ON_TIMER_SELECTION.h: 24: Lcd_String("OF T:  :  :  ");
	movlw	((STR_7-__stringbase))&0ffh
	fcall	_Lcd_String
	goto	l822
	line	25
	
l821:	
	line	26
;ON_TIMER_SELECTION.h: 25: }
;ON_TIMER_SELECTION.h: 26: while(RA2==1);
	goto	l822
	
l823:	
	
l822:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(42/8),(42)&7
	goto	u4201
	goto	u4200
u4201:
	goto	l822
u4200:
	goto	l818
	
l824:	
	line	27
	
l818:	
	line	29
;ON_TIMER_SELECTION.h: 27: }
;ON_TIMER_SELECTION.h: 29: if(RA1==1)
	btfss	(41/8),(41)&7
	goto	u4211
	goto	u4210
u4211:
	goto	l5545
u4210:
	line	31
	
l5541:	
;ON_TIMER_SELECTION.h: 30: {
;ON_TIMER_SELECTION.h: 31: i[Cur_2]++;
	movf	(_Cur_2),w
	movwf	(??_ON_TIMER_SELECTION+0)+0
	addwf	(??_ON_TIMER_SELECTION+0)+0,w
	addlw	_i&0ffh
	movwf	fsr0
	movlw	01h
	bcf	status, 7	;select IRP bank1
	addwf	indf,f
	incf	fsr0,f
	skipnc
	incf	indf,f
	line	32
;ON_TIMER_SELECTION.h: 32: if(i[Cur_2]>9)
	movf	(_Cur_2),w
	movwf	(??_ON_TIMER_SELECTION+0)+0
	addwf	(??_ON_TIMER_SELECTION+0)+0,w
	addlw	_i&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(??_ON_TIMER_SELECTION+1)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_ON_TIMER_SELECTION+1)+0+1
	movlw	high(0Ah)
	subwf	1+(??_ON_TIMER_SELECTION+1)+0,w
	movlw	low(0Ah)
	skipnz
	subwf	0+(??_ON_TIMER_SELECTION+1)+0,w
	skipc
	goto	u4221
	goto	u4220
u4221:
	goto	l827
u4220:
	line	34
	
l5543:	
;ON_TIMER_SELECTION.h: 33: {
;ON_TIMER_SELECTION.h: 34: i[Cur_2] = 0;
	movf	(_Cur_2),w
	movwf	(??_ON_TIMER_SELECTION+0)+0
	addwf	(??_ON_TIMER_SELECTION+0)+0,w
	addlw	_i&0ffh
	movwf	fsr0
	movlw	low(0)
	movwf	indf
	incf	fsr0,f
	movlw	high(0)
	movwf	indf
	goto	l827
	line	35
	
l826:	
	line	36
;ON_TIMER_SELECTION.h: 35: }
;ON_TIMER_SELECTION.h: 36: while(RA1==1);
	goto	l827
	
l828:	
	
l827:	
	btfsc	(41/8),(41)&7
	goto	u4231
	goto	u4230
u4231:
	goto	l827
u4230:
	goto	l5545
	
l829:	
	goto	l5545
	line	37
	
l825:	
	line	39
	
l5545:	
;ON_TIMER_SELECTION.h: 37: }
;ON_TIMER_SELECTION.h: 39: h2 = i[5]*10;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	1+(_i)^080h+0Ah,w
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	movf	0+(_i)^080h+0Ah,w
	clrf	(?___wmul)
	addwf	(?___wmul)

	movlw	low(0Ah)
	movwf	0+(?___wmul)+02h
	movlw	high(0Ah)
	movwf	(0+(?___wmul)+02h)+1
	fcall	___wmul
	movf	(1+(?___wmul)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_h2+1)
	addwf	(_h2+1)
	movf	(0+(?___wmul)),w
	clrf	(_h2)
	addwf	(_h2)

	line	40
	
l5547:	
;ON_TIMER_SELECTION.h: 40: h1 = i[6]*1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	1+(_i)^080h+0Ch,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_h1+1)
	addwf	(_h1+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	0+(_i)^080h+0Ch,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_h1)
	addwf	(_h1)

	line	41
	
l5549:	
;ON_TIMER_SELECTION.h: 41: HH_N[TIME_STORE_ARRAY] = h2+h1;
	movf	(_h1),w
	addwf	(_h2),w
	movwf	(??_ON_TIMER_SELECTION+0)+0
	movf	(_TIME_STORE_ARRAY),w
	addlw	_HH_N&0ffh
	movwf	fsr0
	movf	(??_ON_TIMER_SELECTION+0)+0,w
	bsf	status, 7	;select IRP bank3
	movwf	indf
	line	43
	
l5551:	
;ON_TIMER_SELECTION.h: 43: EEPROM_ADR = TIME_STORE_ARRAY+24;
	movf	(_TIME_STORE_ARRAY),w
	addlw	low(018h)
	movwf	(_EEPROM_ADR)
	movf	(_TIME_STORE_ARRAY+1),w
	skipnc
	addlw	1
	addlw	high(018h)
	movwf	1+(_EEPROM_ADR)
	line	44
	
l5553:	
;ON_TIMER_SELECTION.h: 44: eeprom_write(EEPROM_ADR,HH_N[TIME_STORE_ARRAY]);
	movf	(_TIME_STORE_ARRAY),w
	addlw	_HH_N&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(??_ON_TIMER_SELECTION+0)+0
	movf	(??_ON_TIMER_SELECTION+0)+0,w
	movwf	(?_eeprom_write)
	movf	(_EEPROM_ADR),w
	fcall	_eeprom_write
	line	46
	
l5555:	
;ON_TIMER_SELECTION.h: 46: m2 = i[8]*10;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	1+(_i)^080h+010h,w
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	movf	0+(_i)^080h+010h,w
	clrf	(?___wmul)
	addwf	(?___wmul)

	movlw	low(0Ah)
	movwf	0+(?___wmul)+02h
	movlw	high(0Ah)
	movwf	(0+(?___wmul)+02h)+1
	fcall	___wmul
	movf	(1+(?___wmul)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_m2+1)
	addwf	(_m2+1)
	movf	(0+(?___wmul)),w
	clrf	(_m2)
	addwf	(_m2)

	line	47
	
l5557:	
;ON_TIMER_SELECTION.h: 47: m1 = i[9]*1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	1+(_i)^080h+012h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_m1+1)
	addwf	(_m1+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	0+(_i)^080h+012h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_m1)
	addwf	(_m1)

	line	48
	
l5559:	
;ON_TIMER_SELECTION.h: 48: MM_N[TIME_STORE_ARRAY] = m2+m1;
	movf	(_m1),w
	addwf	(_m2),w
	movwf	(??_ON_TIMER_SELECTION+0)+0
	movf	(_TIME_STORE_ARRAY),w
	addlw	_MM_N&0ffh
	movwf	fsr0
	movf	(??_ON_TIMER_SELECTION+0)+0,w
	bsf	status, 7	;select IRP bank3
	movwf	indf
	line	50
	
l5561:	
;ON_TIMER_SELECTION.h: 50: EEPROM_ADR = TIME_STORE_ARRAY+48;
	movf	(_TIME_STORE_ARRAY),w
	addlw	low(030h)
	movwf	(_EEPROM_ADR)
	movf	(_TIME_STORE_ARRAY+1),w
	skipnc
	addlw	1
	addlw	high(030h)
	movwf	1+(_EEPROM_ADR)
	line	51
;ON_TIMER_SELECTION.h: 51: eeprom_write(EEPROM_ADR,MM_N[TIME_STORE_ARRAY]);
	movf	(_TIME_STORE_ARRAY),w
	addlw	_MM_N&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(??_ON_TIMER_SELECTION+0)+0
	movf	(??_ON_TIMER_SELECTION+0)+0,w
	movwf	(?_eeprom_write)
	movf	(_EEPROM_ADR),w
	fcall	_eeprom_write
	line	53
	
l5563:	
;ON_TIMER_SELECTION.h: 53: s2 = i[11]*10;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	1+(_i)^080h+016h,w
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	movf	0+(_i)^080h+016h,w
	clrf	(?___wmul)
	addwf	(?___wmul)

	movlw	low(0Ah)
	movwf	0+(?___wmul)+02h
	movlw	high(0Ah)
	movwf	(0+(?___wmul)+02h)+1
	fcall	___wmul
	movf	(1+(?___wmul)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_s2+1)
	addwf	(_s2+1)
	movf	(0+(?___wmul)),w
	clrf	(_s2)
	addwf	(_s2)

	line	54
	
l5565:	
;ON_TIMER_SELECTION.h: 54: s1 = i[12]*1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	1+(_i)^080h+018h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_s1+1)
	addwf	(_s1+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	0+(_i)^080h+018h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_s1)
	addwf	(_s1)

	line	55
;ON_TIMER_SELECTION.h: 55: SS_N[TIME_STORE_ARRAY] = s2+s1;
	movf	(_s1),w
	addwf	(_s2),w
	movwf	(??_ON_TIMER_SELECTION+0)+0
	movf	(_TIME_STORE_ARRAY),w
	addlw	_SS_N&0ffh
	movwf	fsr0
	movf	(??_ON_TIMER_SELECTION+0)+0,w
	bsf	status, 7	;select IRP bank3
	movwf	indf
	line	57
	
l5567:	
;ON_TIMER_SELECTION.h: 57: EEPROM_ADR = TIME_STORE_ARRAY+72;
	movf	(_TIME_STORE_ARRAY),w
	addlw	low(048h)
	movwf	(_EEPROM_ADR)
	movf	(_TIME_STORE_ARRAY+1),w
	skipnc
	addlw	1
	addlw	high(048h)
	movwf	1+(_EEPROM_ADR)
	line	58
	
l5569:	
;ON_TIMER_SELECTION.h: 58: eeprom_write(EEPROM_ADR,SS_N[TIME_STORE_ARRAY]);
	movf	(_TIME_STORE_ARRAY),w
	addlw	_SS_N&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(??_ON_TIMER_SELECTION+0)+0
	movf	(??_ON_TIMER_SELECTION+0)+0,w
	movwf	(?_eeprom_write)
	movf	(_EEPROM_ADR),w
	fcall	_eeprom_write
	line	59
	
l830:	
	return
	opt stack 0
GLOBAL	__end_of_ON_TIMER_SELECTION
	__end_of_ON_TIMER_SELECTION:
;; =============== function _ON_TIMER_SELECTION ends ============

	signat	_ON_TIMER_SELECTION,88
	global	_RELAY_SELECTION
psect	text437,local,class=CODE,delta=2
global __ptext437
__ptext437:

;; *************** function _RELAY_SELECTION *****************
;; Defined at:
;;		line 2 in file "E:\02-CODING\06-KAP CODING\02-PIC 16F877A CONTROLLER\42-AUTO START test\code\RELAY_SELECTION.h"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
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
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_Lcd_Command
;;		_Lcd_String
;;		_divider
;;		_eeprom_write
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text437
	file	"E:\02-CODING\06-KAP CODING\02-PIC 16F877A CONTROLLER\42-AUTO START test\code\RELAY_SELECTION.h"
	line	2
	global	__size_of_RELAY_SELECTION
	__size_of_RELAY_SELECTION	equ	__end_of_RELAY_SELECTION-_RELAY_SELECTION
	
_RELAY_SELECTION:	
	opt	stack 5
; Regs used in _RELAY_SELECTION: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	3
	
l5451:	
;RELAY_SELECTION.h: 3: if(RA1==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(41/8),(41)&7
	goto	u4001
	goto	u4000
u4001:
	goto	l789
u4000:
	line	5
	
l5453:	
;RELAY_SELECTION.h: 4: {
;RELAY_SELECTION.h: 5: Lcd_Command(0x80);
	movlw	(080h)
	fcall	_Lcd_Command
	line	6
	
l5455:	
;RELAY_SELECTION.h: 6: Lcd_String("R:");
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_Lcd_String
	line	7
	
l5457:	
;RELAY_SELECTION.h: 7: Lcd_Command(0xC0);
	movlw	(0C0h)
	fcall	_Lcd_Command
	line	8
;RELAY_SELECTION.h: 8: Lcd_String("ON T:  :  :  ");
	movlw	((STR_2-__stringbase))&0ffh
	fcall	_Lcd_String
	line	10
	
l5459:	
;RELAY_SELECTION.h: 10: R_COUNT++;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_R_COUNT),f
	skipnc
	incf	(_R_COUNT+1),f
	movlw	high(01h)
	addwf	(_R_COUNT+1),f
	line	11
	
l5461:	
;RELAY_SELECTION.h: 11: TIME_STORE_ARRAY = R_COUNT;
	movf	(_R_COUNT+1),w
	clrf	(_TIME_STORE_ARRAY+1)
	addwf	(_TIME_STORE_ARRAY+1)
	movf	(_R_COUNT),w
	clrf	(_TIME_STORE_ARRAY)
	addwf	(_TIME_STORE_ARRAY)

	line	13
	
l5463:	
;RELAY_SELECTION.h: 13: if(R_COUNT > 2)
	movf	(_R_COUNT+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4015
	movlw	low(03h)
	subwf	(_R_COUNT),w
u4015:

	skipc
	goto	u4011
	goto	u4010
u4011:
	goto	l5467
u4010:
	line	15
	
l5465:	
;RELAY_SELECTION.h: 14: {
;RELAY_SELECTION.h: 15: R_COUNT = 1;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_R_COUNT)
	movlw	high(01h)
	movwf	((_R_COUNT))+1
	goto	l5467
	line	16
	
l790:	
	line	18
	
l5467:	
;RELAY_SELECTION.h: 16: }
;RELAY_SELECTION.h: 18: Lcd_Command(0x82);
	movlw	(082h)
	fcall	_Lcd_Command
	line	19
	
l5469:	
;RELAY_SELECTION.h: 19: divider(R_COUNT);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_R_COUNT+1),w
	clrf	(?_divider+1)
	addwf	(?_divider+1)
	movf	(_R_COUNT),w
	clrf	(?_divider)
	addwf	(?_divider)

	fcall	_divider
	line	21
;RELAY_SELECTION.h: 21: while(RA1==1);
	goto	l791
	
l792:	
	
l791:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(41/8),(41)&7
	goto	u4021
	goto	u4020
u4021:
	goto	l791
u4020:
	goto	l789
	
l793:	
	line	22
	
l789:	
	line	24
;RELAY_SELECTION.h: 22: }
;RELAY_SELECTION.h: 24: if(RA2==1)
	btfss	(42/8),(42)&7
	goto	u4031
	goto	u4030
u4031:
	goto	l5481
u4030:
	line	26
	
l5471:	
;RELAY_SELECTION.h: 25: {
;RELAY_SELECTION.h: 26: Cur_1 = Cur_1+4;
	movf	(_Cur_1),w
	addlw	low(04h)
	movwf	(_Cur_1)
	movf	(_Cur_1+1),w
	skipnc
	addlw	1
	addlw	high(04h)
	movwf	1+(_Cur_1)
	line	28
	
l5473:	
;RELAY_SELECTION.h: 28: Lcd_Command(0x86);
	movlw	(086h)
	fcall	_Lcd_Command
	line	29
	
l5475:	
;RELAY_SELECTION.h: 29: Lcd_String("En/Dis ");
	movlw	((STR_3-__stringbase))&0ffh
	fcall	_Lcd_String
	line	31
	
l5477:	
;RELAY_SELECTION.h: 31: if(Cur_1>6)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_Cur_1+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(07h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4045
	movlw	low(07h)
	subwf	(_Cur_1),w
u4045:

	skipc
	goto	u4041
	goto	u4040
u4041:
	goto	l796
u4040:
	line	33
	
l5479:	
;RELAY_SELECTION.h: 32: {
;RELAY_SELECTION.h: 33: Cur_2 = 5;
	movlw	low(05h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_Cur_2)
	movlw	high(05h)
	movwf	((_Cur_2))+1
	goto	l796
	line	34
	
l795:	
	line	35
;RELAY_SELECTION.h: 34: }
;RELAY_SELECTION.h: 35: while(RA2==1);
	goto	l796
	
l797:	
	
l796:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(42/8),(42)&7
	goto	u4051
	goto	u4050
u4051:
	goto	l796
u4050:
	goto	l5481
	
l798:	
	goto	l5481
	line	36
	
l794:	
	line	38
	
l5481:	
;RELAY_SELECTION.h: 36: }
;RELAY_SELECTION.h: 38: if(Cur_1==6)
	movlw	06h
	xorwf	(_Cur_1),w
	iorwf	(_Cur_1+1),w
	skipz
	goto	u4061
	goto	u4060
u4061:
	goto	l815
u4060:
	goto	l5519
	line	40
	
l5483:	
;RELAY_SELECTION.h: 39: {
;RELAY_SELECTION.h: 40: while(Cur_1==6)
	goto	l5519
	
l801:	
	line	42
;RELAY_SELECTION.h: 41: {
;RELAY_SELECTION.h: 42: if(RA1==1)
	btfss	(41/8),(41)&7
	goto	u4071
	goto	u4070
u4071:
	goto	l802
u4070:
	line	44
	
l5485:	
;RELAY_SELECTION.h: 43: {
;RELAY_SELECTION.h: 44: ED_COUNT++;
	movlw	low(01h)
	addwf	(_ED_COUNT),f
	skipnc
	incf	(_ED_COUNT+1),f
	movlw	high(01h)
	addwf	(_ED_COUNT+1),f
	line	46
;RELAY_SELECTION.h: 46: if(ED_COUNT==1)
	movlw	01h
	xorwf	(_ED_COUNT),w
	iorwf	(_ED_COUNT+1),w
	skipz
	goto	u4081
	goto	u4080
u4081:
	goto	l5495
u4080:
	line	48
	
l5487:	
;RELAY_SELECTION.h: 47: {
;RELAY_SELECTION.h: 48: Lcd_Command(0x86);
	movlw	(086h)
	fcall	_Lcd_Command
	line	49
	
l5489:	
;RELAY_SELECTION.h: 49: Lcd_String("Disable");
	movlw	((STR_4-__stringbase))&0ffh
	fcall	_Lcd_String
	line	50
	
l5491:	
;RELAY_SELECTION.h: 50: staus[R_COUNT] = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_R_COUNT),w
	addlw	_staus&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	clrf	indf
	line	52
	
l5493:	
;RELAY_SELECTION.h: 52: eeprom_write(R_COUNT,staus[R_COUNT]);
	movf	(_R_COUNT),w
	addlw	_staus&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(??_RELAY_SELECTION+0)+0
	movf	(??_RELAY_SELECTION+0)+0,w
	movwf	(?_eeprom_write)
	movf	(_R_COUNT),w
	fcall	_eeprom_write
	goto	l5495
	line	53
	
l803:	
	line	54
	
l5495:	
;RELAY_SELECTION.h: 53: }
;RELAY_SELECTION.h: 54: if(ED_COUNT==2)
	movlw	02h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(_ED_COUNT),w
	iorwf	(_ED_COUNT+1),w
	skipz
	goto	u4091
	goto	u4090
u4091:
	goto	l5505
u4090:
	line	56
	
l5497:	
;RELAY_SELECTION.h: 55: {
;RELAY_SELECTION.h: 56: Lcd_Command(0x86);
	movlw	(086h)
	fcall	_Lcd_Command
	line	57
	
l5499:	
;RELAY_SELECTION.h: 57: Lcd_String("Enable ");
	movlw	((STR_5-__stringbase))&0ffh
	fcall	_Lcd_String
	line	58
	
l5501:	
;RELAY_SELECTION.h: 58: staus[R_COUNT] = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_R_COUNT),w
	addlw	_staus&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	clrf	indf
	bsf	status,0
	rlf	indf,f
	line	60
	
l5503:	
;RELAY_SELECTION.h: 60: eeprom_write(R_COUNT,staus[R_COUNT]);
	movf	(_R_COUNT),w
	addlw	_staus&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(??_RELAY_SELECTION+0)+0
	movf	(??_RELAY_SELECTION+0)+0,w
	movwf	(?_eeprom_write)
	movf	(_R_COUNT),w
	fcall	_eeprom_write
	goto	l5505
	line	61
	
l804:	
	line	63
	
l5505:	
;RELAY_SELECTION.h: 61: }
;RELAY_SELECTION.h: 63: if(ED_COUNT >= 2)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_ED_COUNT+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(02h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4105
	movlw	low(02h)
	subwf	(_ED_COUNT),w
u4105:

	skipc
	goto	u4101
	goto	u4100
u4101:
	goto	l806
u4100:
	line	65
	
l5507:	
;RELAY_SELECTION.h: 64: {
;RELAY_SELECTION.h: 65: ED_COUNT = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_ED_COUNT)
	clrf	(_ED_COUNT+1)
	goto	l806
	line	66
	
l805:	
	line	67
;RELAY_SELECTION.h: 66: }
;RELAY_SELECTION.h: 67: while(RA1==1);
	goto	l806
	
l807:	
	
l806:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(41/8),(41)&7
	goto	u4111
	goto	u4110
u4111:
	goto	l806
u4110:
	goto	l802
	
l808:	
	line	68
	
l802:	
	line	69
;RELAY_SELECTION.h: 68: }
;RELAY_SELECTION.h: 69: if(RA2==1)
	btfss	(42/8),(42)&7
	goto	u4121
	goto	u4120
u4121:
	goto	l5519
u4120:
	line	71
	
l5509:	
;RELAY_SELECTION.h: 70: {
;RELAY_SELECTION.h: 71: Cur_1 = Cur_1+6;
	movf	(_Cur_1),w
	addlw	low(06h)
	movwf	(_Cur_1)
	movf	(_Cur_1+1),w
	skipnc
	addlw	1
	addlw	high(06h)
	movwf	1+(_Cur_1)
	line	73
	
l5511:	
;RELAY_SELECTION.h: 73: if(Cur_1>6)
	movf	(_Cur_1+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(07h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4135
	movlw	low(07h)
	subwf	(_Cur_1),w
u4135:

	skipc
	goto	u4131
	goto	u4130
u4131:
	goto	l811
u4130:
	line	75
	
l5513:	
;RELAY_SELECTION.h: 74: {
;RELAY_SELECTION.h: 75: Cur_2 = 5;
	movlw	low(05h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_Cur_2)
	movlw	high(05h)
	movwf	((_Cur_2))+1
	line	77
	
l5515:	
;RELAY_SELECTION.h: 77: Lcd_Command(0xC0);
	movlw	(0C0h)
	fcall	_Lcd_Command
	line	78
	
l5517:	
;RELAY_SELECTION.h: 78: Lcd_String("ON T:  :  :  ");
	movlw	((STR_6-__stringbase))&0ffh
	fcall	_Lcd_String
	goto	l811
	line	79
	
l810:	
	line	80
;RELAY_SELECTION.h: 79: }
;RELAY_SELECTION.h: 80: while(RA2==1);
	goto	l811
	
l812:	
	
l811:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(42/8),(42)&7
	goto	u4141
	goto	u4140
u4141:
	goto	l811
u4140:
	goto	l5519
	
l813:	
	goto	l5519
	line	81
	
l809:	
	goto	l5519
	line	82
	
l800:	
	line	40
	
l5519:	
	movlw	06h
	xorwf	(_Cur_1),w
	iorwf	(_Cur_1+1),w
	skipnz
	goto	u4151
	goto	u4150
u4151:
	goto	l801
u4150:
	goto	l815
	
l814:	
	goto	l815
	line	83
	
l799:	
	line	84
	
l815:	
	return
	opt stack 0
GLOBAL	__end_of_RELAY_SELECTION
	__end_of_RELAY_SELECTION:
;; =============== function _RELAY_SELECTION ends ============

	signat	_RELAY_SELECTION,88
	global	_OFF_TIMER_SELECTION
psect	text438,local,class=CODE,delta=2
global __ptext438
__ptext438:

;; *************** function _OFF_TIMER_SELECTION *****************
;; Defined at:
;;		line 2 in file "E:\02-CODING\06-KAP CODING\02-PIC 16F877A CONTROLLER\42-AUTO START test\code\OFF_TIMER_SELECTION.h"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_Lcd_Command
;;		_Lcd_Data
;;		___wmul
;;		_eeprom_write
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text438
	file	"E:\02-CODING\06-KAP CODING\02-PIC 16F877A CONTROLLER\42-AUTO START test\code\OFF_TIMER_SELECTION.h"
	line	2
	global	__size_of_OFF_TIMER_SELECTION
	__size_of_OFF_TIMER_SELECTION	equ	__end_of_OFF_TIMER_SELECTION-_OFF_TIMER_SELECTION
	
_OFF_TIMER_SELECTION:	
	opt	stack 6
; Regs used in _OFF_TIMER_SELECTION: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	3
	
l5405:	
;OFF_TIMER_SELECTION.h: 3: Lcd_Command(0xc0+Cur_3);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_Cur_3),w
	addlw	0C0h
	fcall	_Lcd_Command
	line	4
	
l5407:	
;OFF_TIMER_SELECTION.h: 4: Lcd_Data(k[Cur_3]+48);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_Cur_3),w
	movwf	(??_OFF_TIMER_SELECTION+0)+0
	addwf	(??_OFF_TIMER_SELECTION+0)+0,w
	addlw	_k&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	movf	indf,w
	addlw	030h
	fcall	_Lcd_Data
	line	6
	
l5409:	
;OFF_TIMER_SELECTION.h: 6: if(RA2==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(42/8),(42)&7
	goto	u3921
	goto	u3920
u3921:
	goto	l833
u3920:
	line	8
	
l5411:	
;OFF_TIMER_SELECTION.h: 7: {
;OFF_TIMER_SELECTION.h: 8: Cur_3++;
	movlw	low(01h)
	addwf	(_Cur_3),f
	skipnc
	incf	(_Cur_3+1),f
	movlw	high(01h)
	addwf	(_Cur_3+1),f
	line	9
;OFF_TIMER_SELECTION.h: 9: if(Cur_3==7)
	movlw	07h
	xorwf	(_Cur_3),w
	iorwf	(_Cur_3+1),w
	skipz
	goto	u3931
	goto	u3930
u3931:
	goto	l834
u3930:
	line	11
	
l5413:	
;OFF_TIMER_SELECTION.h: 10: {
;OFF_TIMER_SELECTION.h: 11: Cur_3 = 8;
	movlw	low(08h)
	movwf	(_Cur_3)
	movlw	high(08h)
	movwf	((_Cur_3))+1
	line	12
	
l834:	
	line	13
;OFF_TIMER_SELECTION.h: 12: }
;OFF_TIMER_SELECTION.h: 13: if(Cur_3==10)
	movlw	0Ah
	xorwf	(_Cur_3),w
	iorwf	(_Cur_3+1),w
	skipz
	goto	u3941
	goto	u3940
u3941:
	goto	l5417
u3940:
	line	15
	
l5415:	
;OFF_TIMER_SELECTION.h: 14: {
;OFF_TIMER_SELECTION.h: 15: Cur_3 =11;
	movlw	low(0Bh)
	movwf	(_Cur_3)
	movlw	high(0Bh)
	movwf	((_Cur_3))+1
	goto	l5417
	line	16
	
l835:	
	line	17
	
l5417:	
;OFF_TIMER_SELECTION.h: 16: }
;OFF_TIMER_SELECTION.h: 17: if(Cur_3>=13)
	movf	(_Cur_3+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Dh))^80h
	subwf	btemp+1,w
	skipz
	goto	u3955
	movlw	low(0Dh)
	subwf	(_Cur_3),w
u3955:

	skipc
	goto	u3951
	goto	u3950
u3951:
	goto	l837
u3950:
	line	19
	
l5419:	
;OFF_TIMER_SELECTION.h: 18: {
;OFF_TIMER_SELECTION.h: 19: Cur_1 = 2;
	movlw	low(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_Cur_1)
	movlw	high(02h)
	movwf	((_Cur_1))+1
	goto	l837
	line	20
	
l836:	
	line	21
;OFF_TIMER_SELECTION.h: 20: }
;OFF_TIMER_SELECTION.h: 21: while(RA2==1);
	goto	l837
	
l838:	
	
l837:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(42/8),(42)&7
	goto	u3961
	goto	u3960
u3961:
	goto	l837
u3960:
	goto	l833
	
l839:	
	line	22
	
l833:	
	line	24
;OFF_TIMER_SELECTION.h: 22: }
;OFF_TIMER_SELECTION.h: 24: if(RA1==1)
	btfss	(41/8),(41)&7
	goto	u3971
	goto	u3970
u3971:
	goto	l5425
u3970:
	line	26
	
l5421:	
;OFF_TIMER_SELECTION.h: 25: {
;OFF_TIMER_SELECTION.h: 26: k[Cur_3]++;
	movf	(_Cur_3),w
	movwf	(??_OFF_TIMER_SELECTION+0)+0
	addwf	(??_OFF_TIMER_SELECTION+0)+0,w
	addlw	_k&0ffh
	movwf	fsr0
	movlw	01h
	bcf	status, 7	;select IRP bank1
	addwf	indf,f
	incf	fsr0,f
	skipnc
	incf	indf,f
	line	27
;OFF_TIMER_SELECTION.h: 27: if(k[Cur_3]>9)
	movf	(_Cur_3),w
	movwf	(??_OFF_TIMER_SELECTION+0)+0
	addwf	(??_OFF_TIMER_SELECTION+0)+0,w
	addlw	_k&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(??_OFF_TIMER_SELECTION+1)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_OFF_TIMER_SELECTION+1)+0+1
	movlw	high(0Ah)
	subwf	1+(??_OFF_TIMER_SELECTION+1)+0,w
	movlw	low(0Ah)
	skipnz
	subwf	0+(??_OFF_TIMER_SELECTION+1)+0,w
	skipc
	goto	u3981
	goto	u3980
u3981:
	goto	l842
u3980:
	line	29
	
l5423:	
;OFF_TIMER_SELECTION.h: 28: {
;OFF_TIMER_SELECTION.h: 29: k[Cur_3] = 0;
	movf	(_Cur_3),w
	movwf	(??_OFF_TIMER_SELECTION+0)+0
	addwf	(??_OFF_TIMER_SELECTION+0)+0,w
	addlw	_k&0ffh
	movwf	fsr0
	movlw	low(0)
	movwf	indf
	incf	fsr0,f
	movlw	high(0)
	movwf	indf
	goto	l842
	line	30
	
l841:	
	line	31
;OFF_TIMER_SELECTION.h: 30: }
;OFF_TIMER_SELECTION.h: 31: while(RA1==1);
	goto	l842
	
l843:	
	
l842:	
	btfsc	(41/8),(41)&7
	goto	u3991
	goto	u3990
u3991:
	goto	l842
u3990:
	goto	l5425
	
l844:	
	goto	l5425
	line	32
	
l840:	
	line	34
	
l5425:	
;OFF_TIMER_SELECTION.h: 32: }
;OFF_TIMER_SELECTION.h: 34: h2 = k[5]*10;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	1+(_k)^080h+0Ah,w
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	movf	0+(_k)^080h+0Ah,w
	clrf	(?___wmul)
	addwf	(?___wmul)

	movlw	low(0Ah)
	movwf	0+(?___wmul)+02h
	movlw	high(0Ah)
	movwf	(0+(?___wmul)+02h)+1
	fcall	___wmul
	movf	(1+(?___wmul)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_h2+1)
	addwf	(_h2+1)
	movf	(0+(?___wmul)),w
	clrf	(_h2)
	addwf	(_h2)

	line	35
	
l5427:	
;OFF_TIMER_SELECTION.h: 35: h1 = k[6]*1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	1+(_k)^080h+0Ch,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_h1+1)
	addwf	(_h1+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	0+(_k)^080h+0Ch,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_h1)
	addwf	(_h1)

	line	36
	
l5429:	
;OFF_TIMER_SELECTION.h: 36: HH_F[TIME_STORE_ARRAY] = h2+h1;
	movf	(_h1),w
	addwf	(_h2),w
	movwf	(??_OFF_TIMER_SELECTION+0)+0
	movf	(_TIME_STORE_ARRAY),w
	addlw	_HH_F&0ffh
	movwf	fsr0
	movf	(??_OFF_TIMER_SELECTION+0)+0,w
	bsf	status, 7	;select IRP bank3
	movwf	indf
	line	38
	
l5431:	
;OFF_TIMER_SELECTION.h: 38: EEPROM_ADR = TIME_STORE_ARRAY+96;
	movf	(_TIME_STORE_ARRAY),w
	addlw	low(060h)
	movwf	(_EEPROM_ADR)
	movf	(_TIME_STORE_ARRAY+1),w
	skipnc
	addlw	1
	addlw	high(060h)
	movwf	1+(_EEPROM_ADR)
	line	39
	
l5433:	
;OFF_TIMER_SELECTION.h: 39: eeprom_write(EEPROM_ADR,HH_F[TIME_STORE_ARRAY]);
	movf	(_TIME_STORE_ARRAY),w
	addlw	_HH_F&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(??_OFF_TIMER_SELECTION+0)+0
	movf	(??_OFF_TIMER_SELECTION+0)+0,w
	movwf	(?_eeprom_write)
	movf	(_EEPROM_ADR),w
	fcall	_eeprom_write
	line	41
	
l5435:	
;OFF_TIMER_SELECTION.h: 41: m2 = k[8]*10;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	1+(_k)^080h+010h,w
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	movf	0+(_k)^080h+010h,w
	clrf	(?___wmul)
	addwf	(?___wmul)

	movlw	low(0Ah)
	movwf	0+(?___wmul)+02h
	movlw	high(0Ah)
	movwf	(0+(?___wmul)+02h)+1
	fcall	___wmul
	movf	(1+(?___wmul)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_m2+1)
	addwf	(_m2+1)
	movf	(0+(?___wmul)),w
	clrf	(_m2)
	addwf	(_m2)

	line	42
	
l5437:	
;OFF_TIMER_SELECTION.h: 42: m1 = k[9]*1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	1+(_k)^080h+012h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_m1+1)
	addwf	(_m1+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	0+(_k)^080h+012h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_m1)
	addwf	(_m1)

	line	43
	
l5439:	
;OFF_TIMER_SELECTION.h: 43: MM_F[TIME_STORE_ARRAY] = m2+m1;
	movf	(_m1),w
	addwf	(_m2),w
	movwf	(??_OFF_TIMER_SELECTION+0)+0
	movf	(_TIME_STORE_ARRAY),w
	addlw	_MM_F&0ffh
	movwf	fsr0
	movf	(??_OFF_TIMER_SELECTION+0)+0,w
	bsf	status, 7	;select IRP bank2
	movwf	indf
	line	45
	
l5441:	
;OFF_TIMER_SELECTION.h: 45: EEPROM_ADR = TIME_STORE_ARRAY+120;
	movf	(_TIME_STORE_ARRAY),w
	addlw	low(078h)
	movwf	(_EEPROM_ADR)
	movf	(_TIME_STORE_ARRAY+1),w
	skipnc
	addlw	1
	addlw	high(078h)
	movwf	1+(_EEPROM_ADR)
	line	46
;OFF_TIMER_SELECTION.h: 46: eeprom_write(EEPROM_ADR,MM_F[TIME_STORE_ARRAY]);
	movf	(_TIME_STORE_ARRAY),w
	addlw	_MM_F&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(??_OFF_TIMER_SELECTION+0)+0
	movf	(??_OFF_TIMER_SELECTION+0)+0,w
	movwf	(?_eeprom_write)
	movf	(_EEPROM_ADR),w
	fcall	_eeprom_write
	line	48
	
l5443:	
;OFF_TIMER_SELECTION.h: 48: s2 = k[11]*10;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	1+(_k)^080h+016h,w
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	movf	0+(_k)^080h+016h,w
	clrf	(?___wmul)
	addwf	(?___wmul)

	movlw	low(0Ah)
	movwf	0+(?___wmul)+02h
	movlw	high(0Ah)
	movwf	(0+(?___wmul)+02h)+1
	fcall	___wmul
	movf	(1+(?___wmul)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_s2+1)
	addwf	(_s2+1)
	movf	(0+(?___wmul)),w
	clrf	(_s2)
	addwf	(_s2)

	line	49
	
l5445:	
;OFF_TIMER_SELECTION.h: 49: s1 = k[12]*1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	1+(_k)^080h+018h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_s1+1)
	addwf	(_s1+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	0+(_k)^080h+018h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_s1)
	addwf	(_s1)

	line	50
;OFF_TIMER_SELECTION.h: 50: SS_F[TIME_STORE_ARRAY] = s2+s1;
	movf	(_s1),w
	addwf	(_s2),w
	movwf	(??_OFF_TIMER_SELECTION+0)+0
	movf	(_TIME_STORE_ARRAY),w
	addlw	_SS_F&0ffh
	movwf	fsr0
	movf	(??_OFF_TIMER_SELECTION+0)+0,w
	bsf	status, 7	;select IRP bank2
	movwf	indf
	line	52
	
l5447:	
;OFF_TIMER_SELECTION.h: 52: EEPROM_ADR = TIME_STORE_ARRAY+144;
	movf	(_TIME_STORE_ARRAY),w
	addlw	low(090h)
	movwf	(_EEPROM_ADR)
	movf	(_TIME_STORE_ARRAY+1),w
	skipnc
	addlw	1
	addlw	high(090h)
	movwf	1+(_EEPROM_ADR)
	line	53
	
l5449:	
;OFF_TIMER_SELECTION.h: 53: eeprom_write(EEPROM_ADR,SS_F[TIME_STORE_ARRAY]);
	movf	(_TIME_STORE_ARRAY),w
	addlw	_SS_F&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(??_OFF_TIMER_SELECTION+0)+0
	movf	(??_OFF_TIMER_SELECTION+0)+0,w
	movwf	(?_eeprom_write)
	movf	(_EEPROM_ADR),w
	fcall	_eeprom_write
	line	54
	
l845:	
	return
	opt stack 0
GLOBAL	__end_of_OFF_TIMER_SELECTION
	__end_of_OFF_TIMER_SELECTION:
;; =============== function _OFF_TIMER_SELECTION ends ============

	signat	_OFF_TIMER_SELECTION,88
	global	_divider
psect	text439,local,class=CODE,delta=2
global __ptext439
__ptext439:

;; *************** function _divider *****************
;; Defined at:
;;		line 53 in file "E:\02-CODING\06-KAP CODING\02-PIC 16F877A CONTROLLER\42-AUTO START test\code\LCD.h"
;; Parameters:    Size  Location     Type
;;  x               2    9[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  Temp            2    4[BANK0 ] int 
;;  Dig2            2    2[BANK0 ] int 
;;  Dig1            2    0[BANK0 ] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       6       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___awdiv
;;		_Lcd_Data
;;		___awmod
;; This function is called by:
;;		_RELAY_SELECTION
;;		_STATUS_READ
;;		_RUN_FULL_CYCLE
;; This function uses a non-reentrant model
;;
psect	text439
	file	"E:\02-CODING\06-KAP CODING\02-PIC 16F877A CONTROLLER\42-AUTO START test\code\LCD.h"
	line	53
	global	__size_of_divider
	__size_of_divider	equ	__end_of_divider-_divider
	
_divider:	
	opt	stack 5
; Regs used in _divider: [wreg+status,2+status,0+pclath+cstack]
	line	56
	
l5395:	
;LCD.h: 54: int Temp,Dig1,Dig2;
;LCD.h: 56: Temp = x;
	movf	(divider@x+1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(divider@Temp+1)
	addwf	(divider@Temp+1)
	movf	(divider@x),w
	clrf	(divider@Temp)
	addwf	(divider@Temp)

	line	58
	
l5397:	
;LCD.h: 58: Dig1 = Temp/10;
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(divider@Temp+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(divider@Temp),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(divider@Dig1+1)
	addwf	(divider@Dig1+1)
	movf	(0+(?___awdiv)),w
	clrf	(divider@Dig1)
	addwf	(divider@Dig1)

	line	59
	
l5399:	
;LCD.h: 59: Lcd_Data(Dig1+48);
	movf	(divider@Dig1),w
	addlw	030h
	fcall	_Lcd_Data
	line	61
	
l5401:	
;LCD.h: 61: Dig2 = Temp%10;
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(divider@Temp+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(divider@Temp),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(1+(?___awmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(divider@Dig2+1)
	addwf	(divider@Dig2+1)
	movf	(0+(?___awmod)),w
	clrf	(divider@Dig2)
	addwf	(divider@Dig2)

	line	62
	
l5403:	
;LCD.h: 62: Lcd_Data(Dig2+48);
	movf	(divider@Dig2),w
	addlw	030h
	fcall	_Lcd_Data
	line	63
	
l786:	
	return
	opt stack 0
GLOBAL	__end_of_divider
	__end_of_divider:
;; =============== function _divider ends ============

	signat	_divider,4216
	global	_Lcd_Intialization
psect	text440,local,class=CODE,delta=2
global __ptext440
__ptext440:

;; *************** function _Lcd_Intialization *****************
;; Defined at:
;;		line 46 in file "E:\02-CODING\06-KAP CODING\02-PIC 16F877A CONTROLLER\42-AUTO START test\code\LCD.h"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_Lcd_Command
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text440
	file	"E:\02-CODING\06-KAP CODING\02-PIC 16F877A CONTROLLER\42-AUTO START test\code\LCD.h"
	line	46
	global	__size_of_Lcd_Intialization
	__size_of_Lcd_Intialization	equ	__end_of_Lcd_Intialization-_Lcd_Intialization
	
_Lcd_Intialization:	
	opt	stack 6
; Regs used in _Lcd_Intialization: [wreg+status,2+status,0+pclath+cstack]
	line	47
	
l5393:	
;LCD.h: 47: Lcd_Command(0x02);
	movlw	(02h)
	fcall	_Lcd_Command
	line	48
;LCD.h: 48: Lcd_Command(0x28);
	movlw	(028h)
	fcall	_Lcd_Command
	line	49
;LCD.h: 49: Lcd_Command(0x0e);
	movlw	(0Eh)
	fcall	_Lcd_Command
	line	50
	
l783:	
	return
	opt stack 0
GLOBAL	__end_of_Lcd_Intialization
	__end_of_Lcd_Intialization:
;; =============== function _Lcd_Intialization ends ============

	signat	_Lcd_Intialization,88
	global	_Lcd_String
psect	text441,local,class=CODE,delta=2
global __ptext441
__ptext441:

;; *************** function _Lcd_String *****************
;; Defined at:
;;		line 38 in file "E:\02-CODING\06-KAP CODING\02-PIC 16F877A CONTROLLER\42-AUTO START test\code\LCD.h"
;; Parameters:    Size  Location     Type
;;  Str             1    wreg     PTR const unsigned char 
;;		 -> STR_25(17), STR_24(15), STR_23(10), STR_22(8), 
;;		 -> STR_21(5), STR_20(5), STR_19(5), STR_18(8), 
;;		 -> STR_17(14), STR_16(3), STR_15(5), STR_14(5), 
;;		 -> STR_13(8), STR_12(5), STR_11(5), STR_10(8), 
;;		 -> STR_9(14), STR_8(3), STR_7(14), STR_6(14), 
;;		 -> STR_5(8), STR_4(8), STR_3(8), STR_2(14), 
;;		 -> STR_1(3), 
;; Auto vars:     Size  Location     Type
;;  Str             1    4[COMMON] PTR const unsigned char 
;;		 -> STR_25(17), STR_24(15), STR_23(10), STR_22(8), 
;;		 -> STR_21(5), STR_20(5), STR_19(5), STR_18(8), 
;;		 -> STR_17(14), STR_16(3), STR_15(5), STR_14(5), 
;;		 -> STR_13(8), STR_12(5), STR_11(5), STR_10(8), 
;;		 -> STR_9(14), STR_8(3), STR_7(14), STR_6(14), 
;;		 -> STR_5(8), STR_4(8), STR_3(8), STR_2(14), 
;;		 -> STR_1(3), 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
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
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_Lcd_Data
;; This function is called by:
;;		_RELAY_SELECTION
;;		_ON_TIMER_SELECTION
;;		_STATUS_READ
;;		_RUN_FULL_CYCLE
;;		_main
;; This function uses a non-reentrant model
;;
psect	text441
	file	"E:\02-CODING\06-KAP CODING\02-PIC 16F877A CONTROLLER\42-AUTO START test\code\LCD.h"
	line	38
	global	__size_of_Lcd_String
	__size_of_Lcd_String	equ	__end_of_Lcd_String-_Lcd_String
	
_Lcd_String:	
	opt	stack 5
; Regs used in _Lcd_String: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;Lcd_String@Str stored from wreg
	movwf	(Lcd_String@Str)
	line	39
	
l5385:	
;LCD.h: 39: while(*Str != 0)
	goto	l5391
	
l778:	
	line	41
	
l5387:	
;LCD.h: 40: {
;LCD.h: 41: Lcd_Data(*Str++);
	movf	(Lcd_String@Str),w
	movwf	fsr0
	fcall	stringdir
	fcall	_Lcd_Data
	
l5389:	
	movlw	(01h)
	movwf	(??_Lcd_String+0)+0
	movf	(??_Lcd_String+0)+0,w
	addwf	(Lcd_String@Str),f
	goto	l5391
	line	42
	
l777:	
	line	39
	
l5391:	
	movf	(Lcd_String@Str),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u3911
	goto	u3910
u3911:
	goto	l5387
u3910:
	goto	l780
	
l779:	
	line	43
	
l780:	
	return
	opt stack 0
GLOBAL	__end_of_Lcd_String
	__end_of_Lcd_String:
;; =============== function _Lcd_String ends ============

	signat	_Lcd_String,4216
	global	_ADC_EEPROM_STORE
psect	text442,local,class=CODE,delta=2
global __ptext442
__ptext442:

;; *************** function _ADC_EEPROM_STORE *****************
;; Defined at:
;;		line 2 in file "E:\02-CODING\06-KAP CODING\02-PIC 16F877A CONTROLLER\42-AUTO START test\code\ADC_EEPROM_STORE.h"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
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
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_eeprom_write
;;		_eeprom_read
;; This function is called by:
;;		_RUN_FULL_CYCLE
;;		_main
;; This function uses a non-reentrant model
;;
psect	text442
	file	"E:\02-CODING\06-KAP CODING\02-PIC 16F877A CONTROLLER\42-AUTO START test\code\ADC_EEPROM_STORE.h"
	line	2
	global	__size_of_ADC_EEPROM_STORE
	__size_of_ADC_EEPROM_STORE	equ	__end_of_ADC_EEPROM_STORE-_ADC_EEPROM_STORE
	
_ADC_EEPROM_STORE:	
	opt	stack 6
; Regs used in _ADC_EEPROM_STORE: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	3
	
l5311:	
;ADC_EEPROM_STORE.h: 3: while((ADCON0=0X01|0X04)==1);
	goto	l5313
	
l858:	
	goto	l5313
	
l857:	
	
l5313:	
	movlw	(05h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(31)	;volatile
	xorlw	01h
	skipnz
	goto	u3801
	goto	u3800
u3801:
	goto	l5313
u3800:
	goto	l5315
	
l859:	
	line	4
	
l5315:	
;ADC_EEPROM_STORE.h: 4: ADC_INT=(ADRESH<<8)+ADRESL;
	movf	(30),w	;volatile
	movwf	(??_ADC_EEPROM_STORE+0)+0
	clrf	(??_ADC_EEPROM_STORE+0)+0+1
	movf	(??_ADC_EEPROM_STORE+0)+0,w
	movwf	(??_ADC_EEPROM_STORE+0)+1
	clrf	(??_ADC_EEPROM_STORE+0)+0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(158)^080h,w	;volatile
	addwf	0+(??_ADC_EEPROM_STORE+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_ADC_INT)
	movlw	0
	skipnc
	movlw	1
	addwf	1+(??_ADC_EEPROM_STORE+0)+0,w
	movwf	1+(_ADC_INT)
	line	6
	
l5317:	
;ADC_EEPROM_STORE.h: 6: if(ADC_INT < 900)
	movf	(_ADC_INT+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0384h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3815
	movlw	low(0384h)
	subwf	(_ADC_INT),w
u3815:

	skipnc
	goto	u3811
	goto	u3810
u3811:
	goto	l865
u3810:
	line	9
	
l5319:	
;ADC_EEPROM_STORE.h: 7: {
;ADC_EEPROM_STORE.h: 9: _delay((unsigned long)((10)*(20e6/4000000.0)));
	opt asmopt_off
movlw	16
movwf	(??_ADC_EEPROM_STORE+0)+0,f
u4997:
decfsz	(??_ADC_EEPROM_STORE+0)+0,f
	goto	u4997
	clrwdt
opt asmopt_on

	line	10
	
l5321:	
;ADC_EEPROM_STORE.h: 10: eeprom_write(170,STATE-1);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_STATE),w
	addlw	0FFh
	movwf	(??_ADC_EEPROM_STORE+0)+0
	movf	(??_ADC_EEPROM_STORE+0)+0,w
	movwf	(?_eeprom_write)
	movlw	(0AAh)
	fcall	_eeprom_write
	line	11
	
l5323:	
;ADC_EEPROM_STORE.h: 11: _delay((unsigned long)((10)*(20e6/4000000.0)));
	opt asmopt_off
movlw	16
movwf	(??_ADC_EEPROM_STORE+0)+0,f
u5007:
decfsz	(??_ADC_EEPROM_STORE+0)+0,f
	goto	u5007
	clrwdt
opt asmopt_on

	line	12
;ADC_EEPROM_STORE.h: 12: eeprom_write(171,ON_TIME_FLAG);
	movlw	0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(_ON_TIME_FLAG/8),(_ON_TIME_FLAG)&7
	movlw	1
	movwf	(??_ADC_EEPROM_STORE+0)+0
	movf	(??_ADC_EEPROM_STORE+0)+0,w
	movwf	(?_eeprom_write)
	movlw	(0ABh)
	fcall	_eeprom_write
	line	13
	
l5325:	
;ADC_EEPROM_STORE.h: 13: _delay((unsigned long)((10)*(20e6/4000000.0)));
	opt asmopt_off
movlw	16
movwf	(??_ADC_EEPROM_STORE+0)+0,f
u5017:
decfsz	(??_ADC_EEPROM_STORE+0)+0,f
	goto	u5017
	clrwdt
opt asmopt_on

	line	14
	
l5327:	
;ADC_EEPROM_STORE.h: 14: eeprom_write(172,ON_TIME_RUN_INT);
	movlw	0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(_ON_TIME_RUN_INT/8),(_ON_TIME_RUN_INT)&7
	movlw	1
	movwf	(??_ADC_EEPROM_STORE+0)+0
	movf	(??_ADC_EEPROM_STORE+0)+0,w
	movwf	(?_eeprom_write)
	movlw	(0ACh)
	fcall	_eeprom_write
	line	15
;ADC_EEPROM_STORE.h: 15: _delay((unsigned long)((10)*(20e6/4000000.0)));
	opt asmopt_off
movlw	16
movwf	(??_ADC_EEPROM_STORE+0)+0,f
u5027:
decfsz	(??_ADC_EEPROM_STORE+0)+0,f
	goto	u5027
	clrwdt
opt asmopt_on

	line	17
	
l5329:	
;ADC_EEPROM_STORE.h: 17: eeprom_write(173,RSS);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_RSS),w
	movwf	(??_ADC_EEPROM_STORE+0)+0
	movf	(??_ADC_EEPROM_STORE+0)+0,w
	movwf	(?_eeprom_write)
	movlw	(0ADh)
	fcall	_eeprom_write
	line	18
	
l5331:	
;ADC_EEPROM_STORE.h: 18: _delay((unsigned long)((10)*(20e6/4000000.0)));
	opt asmopt_off
movlw	16
movwf	(??_ADC_EEPROM_STORE+0)+0,f
u5037:
decfsz	(??_ADC_EEPROM_STORE+0)+0,f
	goto	u5037
	clrwdt
opt asmopt_on

	line	19
;ADC_EEPROM_STORE.h: 19: eeprom_write(174,RMM);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_RMM),w
	movwf	(??_ADC_EEPROM_STORE+0)+0
	movf	(??_ADC_EEPROM_STORE+0)+0,w
	movwf	(?_eeprom_write)
	movlw	(0AEh)
	fcall	_eeprom_write
	line	20
	
l5333:	
;ADC_EEPROM_STORE.h: 20: _delay((unsigned long)((10)*(20e6/4000000.0)));
	opt asmopt_off
movlw	16
movwf	(??_ADC_EEPROM_STORE+0)+0,f
u5047:
decfsz	(??_ADC_EEPROM_STORE+0)+0,f
	goto	u5047
	clrwdt
opt asmopt_on

	line	21
	
l5335:	
;ADC_EEPROM_STORE.h: 21: eeprom_write(175,RHH);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_RHH),w
	movwf	(??_ADC_EEPROM_STORE+0)+0
	movf	(??_ADC_EEPROM_STORE+0)+0,w
	movwf	(?_eeprom_write)
	movlw	(0AFh)
	fcall	_eeprom_write
	line	22
;ADC_EEPROM_STORE.h: 22: _delay((unsigned long)((10)*(20e6/4000000.0)));
	opt asmopt_off
movlw	16
movwf	(??_ADC_EEPROM_STORE+0)+0,f
u5057:
decfsz	(??_ADC_EEPROM_STORE+0)+0,f
	goto	u5057
	clrwdt
opt asmopt_on

	line	24
	
l5337:	
;ADC_EEPROM_STORE.h: 24: eeprom_write(176,FSS);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_FSS),w
	movwf	(??_ADC_EEPROM_STORE+0)+0
	movf	(??_ADC_EEPROM_STORE+0)+0,w
	movwf	(?_eeprom_write)
	movlw	(0B0h)
	fcall	_eeprom_write
	line	25
	
l5339:	
;ADC_EEPROM_STORE.h: 25: _delay((unsigned long)((10)*(20e6/4000000.0)));
	opt asmopt_off
movlw	16
movwf	(??_ADC_EEPROM_STORE+0)+0,f
u5067:
decfsz	(??_ADC_EEPROM_STORE+0)+0,f
	goto	u5067
	clrwdt
opt asmopt_on

	line	26
;ADC_EEPROM_STORE.h: 26: eeprom_write(177,FMM);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_FMM),w
	movwf	(??_ADC_EEPROM_STORE+0)+0
	movf	(??_ADC_EEPROM_STORE+0)+0,w
	movwf	(?_eeprom_write)
	movlw	(0B1h)
	fcall	_eeprom_write
	line	27
	
l5341:	
;ADC_EEPROM_STORE.h: 27: _delay((unsigned long)((10)*(20e6/4000000.0)));
	opt asmopt_off
movlw	16
movwf	(??_ADC_EEPROM_STORE+0)+0,f
u5077:
decfsz	(??_ADC_EEPROM_STORE+0)+0,f
	goto	u5077
	clrwdt
opt asmopt_on

	line	28
	
l5343:	
;ADC_EEPROM_STORE.h: 28: eeprom_write(178,FHH);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_FHH),w
	movwf	(??_ADC_EEPROM_STORE+0)+0
	movf	(??_ADC_EEPROM_STORE+0)+0,w
	movwf	(?_eeprom_write)
	movlw	(0B2h)
	fcall	_eeprom_write
	line	29
;ADC_EEPROM_STORE.h: 29: _delay((unsigned long)((10)*(20e6/4000000.0)));
	opt asmopt_off
movlw	16
movwf	(??_ADC_EEPROM_STORE+0)+0,f
u5087:
decfsz	(??_ADC_EEPROM_STORE+0)+0,f
	goto	u5087
	clrwdt
opt asmopt_on

	line	31
	
l5345:	
;ADC_EEPROM_STORE.h: 31: CYCLE_START = eeprom_read(169);
	movlw	(0A9h)
	fcall	_eeprom_read
	movwf	(??_ADC_EEPROM_STORE+0)+0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(_CYCLE_START/8),(_CYCLE_START)&7
	btfss	0+(??_ADC_EEPROM_STORE+0)+0,0
	goto	u3825
	bsf	(_CYCLE_START/8),(_CYCLE_START)&7
u3825:

	line	32
	
l5347:	
;ADC_EEPROM_STORE.h: 32: STATE = eeprom_read(170);
	movlw	(0AAh)
	fcall	_eeprom_read
	movwf	(??_ADC_EEPROM_STORE+0)+0
	clrf	(??_ADC_EEPROM_STORE+0)+0+1
	movf	0+(??_ADC_EEPROM_STORE+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_STATE)
	movf	1+(??_ADC_EEPROM_STORE+0)+0,w
	movwf	(_STATE+1)
	line	33
	
l5349:	
;ADC_EEPROM_STORE.h: 33: ON_TIME_FLAG = eeprom_read(171);
	movlw	(0ABh)
	fcall	_eeprom_read
	movwf	(??_ADC_EEPROM_STORE+0)+0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(_ON_TIME_FLAG/8),(_ON_TIME_FLAG)&7
	btfss	0+(??_ADC_EEPROM_STORE+0)+0,0
	goto	u3835
	bsf	(_ON_TIME_FLAG/8),(_ON_TIME_FLAG)&7
u3835:

	line	34
	
l5351:	
;ADC_EEPROM_STORE.h: 34: ON_TIME_RUN_INT = eeprom_read(172);
	movlw	(0ACh)
	fcall	_eeprom_read
	movwf	(??_ADC_EEPROM_STORE+0)+0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(_ON_TIME_RUN_INT/8),(_ON_TIME_RUN_INT)&7
	btfss	0+(??_ADC_EEPROM_STORE+0)+0,0
	goto	u3845
	bsf	(_ON_TIME_RUN_INT/8),(_ON_TIME_RUN_INT)&7
u3845:

	line	36
	
l5353:	
;ADC_EEPROM_STORE.h: 36: RSS = eeprom_read(173);
	movlw	(0ADh)
	fcall	_eeprom_read
	movwf	(??_ADC_EEPROM_STORE+0)+0
	clrf	(??_ADC_EEPROM_STORE+0)+0+1
	movf	0+(??_ADC_EEPROM_STORE+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_RSS)
	movf	1+(??_ADC_EEPROM_STORE+0)+0,w
	movwf	(_RSS+1)
	line	37
	
l5355:	
;ADC_EEPROM_STORE.h: 37: RMM = eeprom_read(174);
	movlw	(0AEh)
	fcall	_eeprom_read
	movwf	(??_ADC_EEPROM_STORE+0)+0
	clrf	(??_ADC_EEPROM_STORE+0)+0+1
	movf	0+(??_ADC_EEPROM_STORE+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_RMM)
	movf	1+(??_ADC_EEPROM_STORE+0)+0,w
	movwf	(_RMM+1)
	line	38
	
l5357:	
;ADC_EEPROM_STORE.h: 38: RHH = eeprom_read(175);
	movlw	(0AFh)
	fcall	_eeprom_read
	movwf	(??_ADC_EEPROM_STORE+0)+0
	clrf	(??_ADC_EEPROM_STORE+0)+0+1
	movf	0+(??_ADC_EEPROM_STORE+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_RHH)
	movf	1+(??_ADC_EEPROM_STORE+0)+0,w
	movwf	(_RHH+1)
	line	40
	
l5359:	
;ADC_EEPROM_STORE.h: 40: FSS = eeprom_read(176);
	movlw	(0B0h)
	fcall	_eeprom_read
	movwf	(??_ADC_EEPROM_STORE+0)+0
	clrf	(??_ADC_EEPROM_STORE+0)+0+1
	movf	0+(??_ADC_EEPROM_STORE+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_FSS)
	movf	1+(??_ADC_EEPROM_STORE+0)+0,w
	movwf	(_FSS+1)
	line	41
	
l5361:	
;ADC_EEPROM_STORE.h: 41: FMM = eeprom_read(177);
	movlw	(0B1h)
	fcall	_eeprom_read
	movwf	(??_ADC_EEPROM_STORE+0)+0
	clrf	(??_ADC_EEPROM_STORE+0)+0+1
	movf	0+(??_ADC_EEPROM_STORE+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_FMM)
	movf	1+(??_ADC_EEPROM_STORE+0)+0,w
	movwf	(_FMM+1)
	line	42
	
l5363:	
;ADC_EEPROM_STORE.h: 42: FHH = eeprom_read(178);
	movlw	(0B2h)
	fcall	_eeprom_read
	movwf	(??_ADC_EEPROM_STORE+0)+0
	clrf	(??_ADC_EEPROM_STORE+0)+0+1
	movf	0+(??_ADC_EEPROM_STORE+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_FHH)
	movf	1+(??_ADC_EEPROM_STORE+0)+0,w
	movwf	(_FHH+1)
	line	44
	
l5365:	
;ADC_EEPROM_STORE.h: 44: if( (RSS != 0) || (RMM != 0) || (RHH != 0) || (FSS != 0) || (FMM != 0) || (FHH != 0) )
	movf	((_RSS+1)),w
	iorwf	((_RSS)),w
	skipz
	goto	u3851
	goto	u3850
u3851:
	goto	l5377
u3850:
	
l5367:	
	movf	((_RMM+1)),w
	iorwf	((_RMM)),w
	skipz
	goto	u3861
	goto	u3860
u3861:
	goto	l5377
u3860:
	
l5369:	
	movf	((_RHH+1)),w
	iorwf	((_RHH)),w
	skipz
	goto	u3871
	goto	u3870
u3871:
	goto	l5377
u3870:
	
l5371:	
	movf	((_FSS+1)),w
	iorwf	((_FSS)),w
	skipz
	goto	u3881
	goto	u3880
u3881:
	goto	l5377
u3880:
	
l5373:	
	movf	((_FMM+1)),w
	iorwf	((_FMM)),w
	skipz
	goto	u3891
	goto	u3890
u3891:
	goto	l5377
u3890:
	
l5375:	
	movf	(_FHH+1),w
	iorwf	(_FHH),w
	skipnz
	goto	u3901
	goto	u3900
u3901:
	goto	l5381
u3900:
	goto	l5377
	
l863:	
	line	46
	
l5377:	
;ADC_EEPROM_STORE.h: 45: {
;ADC_EEPROM_STORE.h: 46: ADC_SAVE_VAL = 1;
	movlw	low(01h)
	movwf	(_ADC_SAVE_VAL)
	movlw	high(01h)
	movwf	((_ADC_SAVE_VAL))+1
	line	47
	
l5379:	
;ADC_EEPROM_STORE.h: 47: eeprom_write(179,ADC_SAVE_VAL);
	movf	(_ADC_SAVE_VAL),w
	movwf	(??_ADC_EEPROM_STORE+0)+0
	movf	(??_ADC_EEPROM_STORE+0)+0,w
	movwf	(?_eeprom_write)
	movlw	(0B3h)
	fcall	_eeprom_write
	line	48
;ADC_EEPROM_STORE.h: 48: }
	goto	l865
	line	50
	
l861:	
	line	52
	
l5381:	
;ADC_EEPROM_STORE.h: 50: else
;ADC_EEPROM_STORE.h: 51: {
;ADC_EEPROM_STORE.h: 52: ADC_SAVE_VAL = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_ADC_SAVE_VAL)
	clrf	(_ADC_SAVE_VAL+1)
	line	53
	
l5383:	
;ADC_EEPROM_STORE.h: 53: eeprom_write(179,ADC_SAVE_VAL);
	movf	(_ADC_SAVE_VAL),w
	movwf	(??_ADC_EEPROM_STORE+0)+0
	movf	(??_ADC_EEPROM_STORE+0)+0,w
	movwf	(?_eeprom_write)
	movlw	(0B3h)
	fcall	_eeprom_write
	goto	l865
	line	54
	
l864:	
	goto	l865
	line	55
	
l860:	
	line	56
	
l865:	
	return
	opt stack 0
GLOBAL	__end_of_ADC_EEPROM_STORE
	__end_of_ADC_EEPROM_STORE:
;; =============== function _ADC_EEPROM_STORE ends ============

	signat	_ADC_EEPROM_STORE,88
	global	_Lcd_Data
psect	text443,local,class=CODE,delta=2
global __ptext443
__ptext443:

;; *************** function _Lcd_Data *****************
;; Defined at:
;;		line 23 in file "E:\02-CODING\06-KAP CODING\02-PIC 16F877A CONTROLLER\42-AUTO START test\code\LCD.h"
;; Parameters:    Size  Location     Type
;;  Data            1    wreg     const unsigned char 
;; Auto vars:     Size  Location     Type
;;  Data            1    2[COMMON] const unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
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
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Lcd_String
;;		_divider
;;		_ON_TIMER_SELECTION
;;		_OFF_TIMER_SELECTION
;; This function uses a non-reentrant model
;;
psect	text443
	file	"E:\02-CODING\06-KAP CODING\02-PIC 16F877A CONTROLLER\42-AUTO START test\code\LCD.h"
	line	23
	global	__size_of_Lcd_Data
	__size_of_Lcd_Data	equ	__end_of_Lcd_Data-_Lcd_Data
	
_Lcd_Data:	
	opt	stack 5
; Regs used in _Lcd_Data: [wreg+status,2+status,0]
;Lcd_Data@Data stored from wreg
	movwf	(Lcd_Data@Data)
	line	24
	
l5291:	
;LCD.h: 24: PORTD = (Data & 0XF0);
	movf	(Lcd_Data@Data),w
	andlw	0F0h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	25
	
l5293:	
;LCD.h: 25: RD2 = 1;
	bsf	(66/8),(66)&7
	line	26
	
l5295:	
;LCD.h: 26: RD3 = 1;
	bsf	(67/8),(67)&7
	line	27
	
l5297:	
;LCD.h: 27: _delay((unsigned long)((5)*(20e6/4000.0)));
	opt asmopt_off
movlw	33
movwf	((??_Lcd_Data+0)+0+1),f
	movlw	118
movwf	((??_Lcd_Data+0)+0),f
u5097:
	decfsz	((??_Lcd_Data+0)+0),f
	goto	u5097
	decfsz	((??_Lcd_Data+0)+0+1),f
	goto	u5097
	clrwdt
opt asmopt_on

	line	28
	
l5299:	
;LCD.h: 28: RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	30
	
l5301:	
;LCD.h: 30: PORTD = ((Data<<4) & 0xF0);
	movf	(Lcd_Data@Data),w
	movwf	(??_Lcd_Data+0)+0
	movlw	(04h)-1
u3795:
	clrc
	rlf	(??_Lcd_Data+0)+0,f
	addlw	-1
	skipz
	goto	u3795
	clrc
	rlf	(??_Lcd_Data+0)+0,w
	andlw	0F0h
	movwf	(8)	;volatile
	line	31
	
l5303:	
;LCD.h: 31: RD2 = 1;
	bsf	(66/8),(66)&7
	line	32
	
l5305:	
;LCD.h: 32: RD3 = 1;
	bsf	(67/8),(67)&7
	line	33
	
l5307:	
;LCD.h: 33: _delay((unsigned long)((5)*(20e6/4000.0)));
	opt asmopt_off
movlw	33
movwf	((??_Lcd_Data+0)+0+1),f
	movlw	118
movwf	((??_Lcd_Data+0)+0),f
u5107:
	decfsz	((??_Lcd_Data+0)+0),f
	goto	u5107
	decfsz	((??_Lcd_Data+0)+0+1),f
	goto	u5107
	clrwdt
opt asmopt_on

	line	34
	
l5309:	
;LCD.h: 34: RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	35
	
l774:	
	return
	opt stack 0
GLOBAL	__end_of_Lcd_Data
	__end_of_Lcd_Data:
;; =============== function _Lcd_Data ends ============

	signat	_Lcd_Data,4216
	global	_Lcd_Command
psect	text444,local,class=CODE,delta=2
global __ptext444
__ptext444:

;; *************** function _Lcd_Command *****************
;; Defined at:
;;		line 8 in file "E:\02-CODING\06-KAP CODING\02-PIC 16F877A CONTROLLER\42-AUTO START test\code\LCD.h"
;; Parameters:    Size  Location     Type
;;  cmd             1    wreg     const unsigned char 
;; Auto vars:     Size  Location     Type
;;  cmd             1    2[COMMON] const unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
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
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Lcd_Intialization
;;		_RELAY_SELECTION
;;		_ON_TIMER_SELECTION
;;		_OFF_TIMER_SELECTION
;;		_STATUS_READ
;;		_RUN_FULL_CYCLE
;;		_main
;; This function uses a non-reentrant model
;;
psect	text444
	file	"E:\02-CODING\06-KAP CODING\02-PIC 16F877A CONTROLLER\42-AUTO START test\code\LCD.h"
	line	8
	global	__size_of_Lcd_Command
	__size_of_Lcd_Command	equ	__end_of_Lcd_Command-_Lcd_Command
	
_Lcd_Command:	
	opt	stack 6
; Regs used in _Lcd_Command: [wreg+status,2+status,0]
;Lcd_Command@cmd stored from wreg
	movwf	(Lcd_Command@cmd)
	line	9
	
l5271:	
;LCD.h: 9: PORTD = (cmd & 0XF0);
	movf	(Lcd_Command@cmd),w
	andlw	0F0h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	10
	
l5273:	
;LCD.h: 10: RD2 = 0;
	bcf	(66/8),(66)&7
	line	11
	
l5275:	
;LCD.h: 11: RD3 = 1;
	bsf	(67/8),(67)&7
	line	12
	
l5277:	
;LCD.h: 12: _delay((unsigned long)((5)*(20e6/4000.0)));
	opt asmopt_off
movlw	33
movwf	((??_Lcd_Command+0)+0+1),f
	movlw	118
movwf	((??_Lcd_Command+0)+0),f
u5117:
	decfsz	((??_Lcd_Command+0)+0),f
	goto	u5117
	decfsz	((??_Lcd_Command+0)+0+1),f
	goto	u5117
	clrwdt
opt asmopt_on

	line	13
	
l5279:	
;LCD.h: 13: RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	15
	
l5281:	
;LCD.h: 15: PORTD = ((cmd<<4) & 0xF0);
	movf	(Lcd_Command@cmd),w
	movwf	(??_Lcd_Command+0)+0
	movlw	(04h)-1
u3785:
	clrc
	rlf	(??_Lcd_Command+0)+0,f
	addlw	-1
	skipz
	goto	u3785
	clrc
	rlf	(??_Lcd_Command+0)+0,w
	andlw	0F0h
	movwf	(8)	;volatile
	line	16
	
l5283:	
;LCD.h: 16: RD2 = 0;
	bcf	(66/8),(66)&7
	line	17
	
l5285:	
;LCD.h: 17: RD3 = 1;
	bsf	(67/8),(67)&7
	line	18
	
l5287:	
;LCD.h: 18: _delay((unsigned long)((5)*(20e6/4000.0)));
	opt asmopt_off
movlw	33
movwf	((??_Lcd_Command+0)+0+1),f
	movlw	118
movwf	((??_Lcd_Command+0)+0),f
u5127:
	decfsz	((??_Lcd_Command+0)+0),f
	goto	u5127
	decfsz	((??_Lcd_Command+0)+0+1),f
	goto	u5127
	clrwdt
opt asmopt_on

	line	19
	
l5289:	
;LCD.h: 19: RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	20
	
l771:	
	return
	opt stack 0
GLOBAL	__end_of_Lcd_Command
	__end_of_Lcd_Command:
;; =============== function _Lcd_Command ends ============

	signat	_Lcd_Command,4216
	global	___awmod
psect	text445,local,class=CODE,delta=2
global __ptext445
__ptext445:

;; *************** function ___awmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files\HI-TECH Software\PICC\9.83\sources\awmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] int 
;;  dividend        2    2[COMMON] int 
;; Auto vars:     Size  Location     Type
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         7       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_divider
;; This function uses a non-reentrant model
;;
psect	text445
	file	"C:\Program Files\HI-TECH Software\PICC\9.83\sources\awmod.c"
	line	5
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
	opt	stack 5
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	8
	
l5237:	
	clrf	(___awmod@sign)
	line	9
	btfss	(___awmod@dividend+1),7
	goto	u3691
	goto	u3690
u3691:
	goto	l5241
u3690:
	line	10
	
l5239:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	11
	clrf	(___awmod@sign)
	bsf	status,0
	rlf	(___awmod@sign),f
	goto	l5241
	line	12
	
l3097:	
	line	13
	
l5241:	
	btfss	(___awmod@divisor+1),7
	goto	u3701
	goto	u3700
u3701:
	goto	l5245
u3700:
	line	14
	
l5243:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	goto	l5245
	
l3098:	
	line	15
	
l5245:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u3711
	goto	u3710
u3711:
	goto	l5263
u3710:
	line	16
	
l5247:	
	clrf	(___awmod@counter)
	bsf	status,0
	rlf	(___awmod@counter),f
	line	17
	goto	l5253
	
l3101:	
	line	18
	
l5249:	
	movlw	01h
	
u3725:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u3725
	line	19
	
l5251:	
	movlw	(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	goto	l5253
	line	20
	
l3100:	
	line	17
	
l5253:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u3731
	goto	u3730
u3731:
	goto	l5249
u3730:
	goto	l5255
	
l3102:	
	goto	l5255
	line	21
	
l3103:	
	line	22
	
l5255:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u3745
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u3745:
	skipc
	goto	u3741
	goto	u3740
u3741:
	goto	l5259
u3740:
	line	23
	
l5257:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	goto	l5259
	
l3104:	
	line	24
	
l5259:	
	movlw	01h
	
u3755:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u3755
	line	25
	
l5261:	
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u3761
	goto	u3760
u3761:
	goto	l5255
u3760:
	goto	l5263
	
l3105:	
	goto	l5263
	line	26
	
l3099:	
	line	27
	
l5263:	
	movf	(___awmod@sign),w
	skipz
	goto	u3770
	goto	l5267
u3770:
	line	28
	
l5265:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	goto	l5267
	
l3106:	
	line	29
	
l5267:	
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	goto	l3107
	
l5269:	
	line	30
	
l3107:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
;; =============== function ___awmod ends ============

	signat	___awmod,8314
	global	___awdiv
psect	text446,local,class=CODE,delta=2
global __ptext446
__ptext446:

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files\HI-TECH Software\PICC\9.83\sources\awdiv.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         4       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         9       0       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_divider
;; This function uses a non-reentrant model
;;
psect	text446
	file	"C:\Program Files\HI-TECH Software\PICC\9.83\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 5
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l5197:	
	clrf	(___awdiv@sign)
	line	10
	btfss	(___awdiv@divisor+1),7
	goto	u3591
	goto	u3590
u3591:
	goto	l5201
u3590:
	line	11
	
l5199:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	12
	clrf	(___awdiv@sign)
	bsf	status,0
	rlf	(___awdiv@sign),f
	goto	l5201
	line	13
	
l3029:	
	line	14
	
l5201:	
	btfss	(___awdiv@dividend+1),7
	goto	u3601
	goto	u3600
u3601:
	goto	l5207
u3600:
	line	15
	
l5203:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l5205:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	goto	l5207
	line	17
	
l3030:	
	line	18
	
l5207:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	19
	
l5209:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u3611
	goto	u3610
u3611:
	goto	l5229
u3610:
	line	20
	
l5211:	
	clrf	(___awdiv@counter)
	bsf	status,0
	rlf	(___awdiv@counter),f
	line	21
	goto	l5217
	
l3033:	
	line	22
	
l5213:	
	movlw	01h
	
u3625:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u3625
	line	23
	
l5215:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	goto	l5217
	line	24
	
l3032:	
	line	21
	
l5217:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u3631
	goto	u3630
u3631:
	goto	l5213
u3630:
	goto	l5219
	
l3034:	
	goto	l5219
	line	25
	
l3035:	
	line	26
	
l5219:	
	movlw	01h
	
u3645:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u3645
	line	27
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u3655
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u3655:
	skipc
	goto	u3651
	goto	u3650
u3651:
	goto	l5225
u3650:
	line	28
	
l5221:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	29
	
l5223:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	goto	l5225
	line	30
	
l3036:	
	line	31
	
l5225:	
	movlw	01h
	
u3665:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u3665
	line	32
	
l5227:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u3671
	goto	u3670
u3671:
	goto	l5219
u3670:
	goto	l5229
	
l3037:	
	goto	l5229
	line	33
	
l3031:	
	line	34
	
l5229:	
	movf	(___awdiv@sign),w
	skipz
	goto	u3680
	goto	l5233
u3680:
	line	35
	
l5231:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	goto	l5233
	
l3038:	
	line	36
	
l5233:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	goto	l3039
	
l5235:	
	line	37
	
l3039:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
	global	___wmul
psect	text447,local,class=CODE,delta=2
global __ptext447
__ptext447:

;; *************** function ___wmul *****************
;; Defined at:
;;		line 3 in file "C:\Program Files\HI-TECH Software\PICC\9.83\sources\wmul.c"
;; Parameters:    Size  Location     Type
;;  multiplier      2    0[COMMON] unsigned int 
;;  multiplicand    2    2[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  product         2    4[COMMON] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ON_TIMER_SELECTION
;;		_OFF_TIMER_SELECTION
;; This function uses a non-reentrant model
;;
psect	text447
	file	"C:\Program Files\HI-TECH Software\PICC\9.83\sources\wmul.c"
	line	3
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
	opt	stack 6
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	4
	
l5185:	
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	goto	l5187
	line	6
	
l2889:	
	line	7
	
l5187:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u3551
	goto	u3550
u3551:
	goto	l2890
u3550:
	line	8
	
l5189:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	
l2890:	
	line	9
	movlw	01h
	
u3565:
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	addlw	-1
	skipz
	goto	u3565
	line	10
	
l5191:	
	movlw	01h
	
u3575:
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	addlw	-1
	skipz
	goto	u3575
	line	11
	movf	((___wmul@multiplier+1)),w
	iorwf	((___wmul@multiplier)),w
	skipz
	goto	u3581
	goto	u3580
u3581:
	goto	l5187
u3580:
	goto	l5193
	
l2891:	
	line	12
	
l5193:	
	movf	(___wmul@product+1),w
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	movf	(___wmul@product),w
	clrf	(?___wmul)
	addwf	(?___wmul)

	goto	l2892
	
l5195:	
	line	13
	
l2892:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
;; =============== function ___wmul ends ============

	signat	___wmul,8314
	global	_EMERGCY_START_STOP
psect	text448,local,class=CODE,delta=2
global __ptext448
__ptext448:

;; *************** function _EMERGCY_START_STOP *****************
;; Defined at:
;;		line 2 in file "E:\02-CODING\06-KAP CODING\02-PIC 16F877A CONTROLLER\42-AUTO START test\code\EMERGCY_START_STOP.h"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
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
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_RUN_FULL_CYCLE
;;		_main
;; This function uses a non-reentrant model
;;
psect	text448
	file	"E:\02-CODING\06-KAP CODING\02-PIC 16F877A CONTROLLER\42-AUTO START test\code\EMERGCY_START_STOP.h"
	line	2
	global	__size_of_EMERGCY_START_STOP
	__size_of_EMERGCY_START_STOP	equ	__end_of_EMERGCY_START_STOP-_EMERGCY_START_STOP
	
_EMERGCY_START_STOP:	
	opt	stack 7
; Regs used in _EMERGCY_START_STOP: [wreg+status,2]
	line	3
	
l5175:	
;EMERGCY_START_STOP.h: 3: while(RA5==1)
	goto	l868
	
l869:	
	line	5
	
l5177:	
;EMERGCY_START_STOP.h: 4: {
;EMERGCY_START_STOP.h: 5: EM_ST_SP_COUNT++;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_EM_ST_SP_COUNT),f
	skipnc
	incf	(_EM_ST_SP_COUNT+1),f
	movlw	high(01h)
	addwf	(_EM_ST_SP_COUNT+1),f
	line	7
;EMERGCY_START_STOP.h: 7: while(RA5==1);
	goto	l870
	
l871:	
	
l870:	
	btfsc	(45/8),(45)&7
	goto	u3501
	goto	u3500
u3501:
	goto	l870
u3500:
	goto	l5183
	
l872:	
	line	9
;EMERGCY_START_STOP.h: 9: while(EM_ST_SP_COUNT==1)
	goto	l5183
	
l874:	
	line	11
	
l5179:	
;EMERGCY_START_STOP.h: 10: {
;EMERGCY_START_STOP.h: 11: PORTB = 0X00;
	clrf	(6)	;volatile
	line	12
;EMERGCY_START_STOP.h: 12: PORTC = 0X00;
	clrf	(7)	;volatile
	line	14
;EMERGCY_START_STOP.h: 14: while(RA5==1)
	goto	l875
	
l876:	
	line	16
	
l5181:	
;EMERGCY_START_STOP.h: 15: {
;EMERGCY_START_STOP.h: 16: EM_ST_SP_COUNT = 0;
	clrf	(_EM_ST_SP_COUNT)
	clrf	(_EM_ST_SP_COUNT+1)
	line	18
;EMERGCY_START_STOP.h: 18: while(RA5==1);
	goto	l877
	
l878:	
	
l877:	
	btfsc	(45/8),(45)&7
	goto	u3511
	goto	u3510
u3511:
	goto	l877
u3510:
	goto	l875
	
l879:	
	line	19
	
l875:	
	line	14
	btfsc	(45/8),(45)&7
	goto	u3521
	goto	u3520
u3521:
	goto	l5181
u3520:
	goto	l5183
	
l880:	
	goto	l5183
	line	20
	
l873:	
	line	9
	
l5183:	
	movlw	01h
	xorwf	(_EM_ST_SP_COUNT),w
	iorwf	(_EM_ST_SP_COUNT+1),w
	skipnz
	goto	u3531
	goto	u3530
u3531:
	goto	l5179
u3530:
	goto	l868
	
l881:	
	line	21
	
l868:	
	line	3
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(45/8),(45)&7
	goto	u3541
	goto	u3540
u3541:
	goto	l5177
u3540:
	goto	l883
	
l882:	
	line	22
	
l883:	
	return
	opt stack 0
GLOBAL	__end_of_EMERGCY_START_STOP
	__end_of_EMERGCY_START_STOP:
;; =============== function _EMERGCY_START_STOP ends ============

	signat	_EMERGCY_START_STOP,88
	global	_eeprom_read
psect	text449,local,class=CODE,delta=2
global __ptext449
__ptext449:

;; *************** function _eeprom_read *****************
;; Defined at:
;;		line 7 in file "eeread.c"
;; Parameters:    Size  Location     Type
;;  addr            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  addr            1    1[COMMON] unsigned char 
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
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ADC_EEPROM_STORE
;;		_RUN_FULL_CYCLE
;;		_main
;; This function uses a non-reentrant model
;;
psect	text449
	file	"C:\Program Files\HI-TECH Software\PICC\9.83\sources\eeread.c"
	line	7
	global	__size_of_eeprom_read
	__size_of_eeprom_read	equ	__end_of_eeprom_read-_eeprom_read
	
_eeprom_read:	
	opt	stack 6
; Regs used in _eeprom_read: [wreg+status,2+status,0]
;eeprom_read@addr stored from wreg
	line	9
	movwf	(eeprom_read@addr)
	line	8
	
l1582:	
	line	9
# 9 "C:\Program Files\HI-TECH Software\PICC\9.83\sources\eeread.c"
clrwdt ;#
psect	text449
	line	10
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	btfsc	(3169/8)^0180h,(3169)&7
	goto	u3491
	goto	u3490
u3491:
	goto	l1582
u3490:
	goto	l5171
	
l1583:	
	line	11
	
l5171:	
	movf	(eeprom_read@addr),w
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movwf	(269)^0100h	;volatile
	movlw	(03Fh)
	movwf	(??_eeprom_read+0)+0
	movf	(??_eeprom_read+0)+0,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	andwf	(396)^0180h,f	;volatile
	bsf	(3168/8)^0180h,(3168)&7
	clrc
	btfsc	(3168/8)^0180h,(3168)&7
	setc
	movlw	0
	skipnc
	movlw	1

	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movf	(268)^0100h,w	;volatile
	goto	l1584
	
l5173:	
	line	12
	
l1584:	
	return
	opt stack 0
GLOBAL	__end_of_eeprom_read
	__end_of_eeprom_read:
;; =============== function _eeprom_read ends ============

	signat	_eeprom_read,4217
	global	_eeprom_write
psect	text450,local,class=CODE,delta=2
global __ptext450
__ptext450:

;; *************** function _eeprom_write *****************
;; Defined at:
;;		line 7 in file "C:\Program Files\HI-TECH Software\PICC\9.83\sources\eewrite.c"
;; Parameters:    Size  Location     Type
;;  addr            1    wreg     unsigned char 
;;  value           1    0[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  addr            1    2[COMMON] unsigned char 
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
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_RELAY_SELECTION
;;		_ON_TIMER_SELECTION
;;		_OFF_TIMER_SELECTION
;;		_ADC_EEPROM_STORE
;;		_RUN_FULL_CYCLE
;;		_main
;; This function uses a non-reentrant model
;;
psect	text450
	file	"C:\Program Files\HI-TECH Software\PICC\9.83\sources\eewrite.c"
	line	7
	global	__size_of_eeprom_write
	__size_of_eeprom_write	equ	__end_of_eeprom_write-_eeprom_write
	
_eeprom_write:	
	opt	stack 6
; Regs used in _eeprom_write: [wreg+status,2+status,0]
;eeprom_write@addr stored from wreg
	movwf	(eeprom_write@addr)
	line	8
	
l2199:	
	goto	l2200
	
l2201:	
	
l2200:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	btfsc	(3169/8)^0180h,(3169)&7
	goto	u3461
	goto	u3460
u3461:
	goto	l2200
u3460:
	goto	l5151
	
l2202:	
	
l5151:	
	movf	(eeprom_write@addr),w
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movwf	(269)^0100h	;volatile
	movf	(eeprom_write@value),w
	movwf	(268)^0100h	;volatile
	
l5153:	
	movlw	(03Fh)
	movwf	(??_eeprom_write+0)+0
	movf	(??_eeprom_write+0)+0,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	andwf	(396)^0180h,f	;volatile
	
l5155:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(24/8),(24)&7
	
l5157:	
	btfss	(95/8),(95)&7
	goto	u3471
	goto	u3470
u3471:
	goto	l2203
u3470:
	
l5159:	
	bsf	(24/8),(24)&7
	
l2203:	
	bcf	(95/8),(95)&7
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	bsf	(3170/8)^0180h,(3170)&7
	
l5161:	
	movlw	(055h)
	movwf	(397)^0180h	;volatile
	movlw	(0AAh)
	movwf	(397)^0180h	;volatile
	
l5163:	
	bsf	(3169/8)^0180h,(3169)&7
	
l5165:	
	bcf	(3170/8)^0180h,(3170)&7
	
l5167:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(24/8),(24)&7
	goto	u3481
	goto	u3480
u3481:
	goto	l2206
u3480:
	
l5169:	
	bsf	(95/8),(95)&7
	goto	l2206
	
l2204:	
	goto	l2206
	
l2205:	
	line	10
;	Return value of _eeprom_write is never used
	
l2206:	
	return
	opt stack 0
GLOBAL	__end_of_eeprom_write
	__end_of_eeprom_write:
;; =============== function _eeprom_write ends ============

	signat	_eeprom_write,8313
psect	text451,local,class=CODE,delta=2
global __ptext451
__ptext451:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end

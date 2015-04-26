#ifdef		SIMULATOR
#ifdef		RUNFAST
DelayConst	EQU	$08	;bestäms under förberedelserna
#else
DelayConst	EQU	$01	;bestäms under förberedelserna?!?!??!?!
#endif
#else
DelayConst	EQU	$04	;konstant för laborationssystemet
#endif


; Adress till omkopplare och display
DipSwitch	EQU	$0600
HexDisplay	EQU	$0400
;Adress till borrmaskinens styrregister
DrillControl	EQU	$0400

;.....borrmaskinens statusregister
DrillStatus	EQU	$0401
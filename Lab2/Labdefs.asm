#ifdef		SIMULATOR
#ifdef		RUNFAST
DelayConst	EQU	$08	;best�ms under f�rberedelserna
#else
DelayConst	EQU	$01	;best�ms under f�rberedelserna?!?!??!?!
#endif
#else
DelayConst	EQU	$04	;konstant f�r laborationssystemet
#endif


; Adress till omkopplare och display
DipSwitch	EQU	$0600
HexDisplay	EQU	$0400
;Adress till borrmaskinens styrregister
DrillControl	EQU	$0400

;.....borrmaskinens statusregister
DrillStatus	EQU	$0401
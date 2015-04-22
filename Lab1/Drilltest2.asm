;Drilltest2.asm
	USE	Labdefs.asm
	ORG	$1000
start:	LDAA	#0
	STAA	DrillControl
	JSR	TillRefPos
	JSR	Borra
	JSR	Vrid1Steg
	JSR	Borra
	JSR	Vrid1Steg
	JSR	Borra
	JSR	Vrid1Steg
	JSR	Vrid1Steg
	JSR	Vrid1Steg
	JSR	Borra
	JSR	GeLarm
stopp:	BRA	stopp

Vrid1Steg:
	LDAA	#2
	ORAA	DrillControl	;set bit1
	STAA	DrillControl	;Medurs
	
	ORAA	#1		;set bit0
	STAA	DrillControl
	ANDA	#$FE
	STAA	DrillControl	;unset bit0
	RTS
TillRefPos:
	LDAA	#1
	ANDA	DrillStatus
	CMPA	#1
	BEQ	IsRef
	JSR	Vrid1Steg
	BRA	TillRefPos
IsRef:	RTS
	
Borra:
	LDAA	#4
	ORAA	DrillControl
	STAA	DrillControl
	ORAA	#8
	STAA	DrillControl
CheckIfDown:
	LDAA	#4
	ANDA	DrillStatus
	CMPA	#4
	BNE	CheckIfDown
	LDAA	#$F7
	ANDA	DrillControl
	STAA	DrillControl
	LDAA	#$FB
	ANDA	DrillControl
	STAA	DrillControl
	RTS
	
	
	
	
	
	
GeLarm:
	LDAA	#$10
	ORAA	DrillControl
	STAA	DrillControl
	RTS
	
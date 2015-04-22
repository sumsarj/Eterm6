DelayConst:	EQU	$00
		ORG	$1000
		
Start:		CLRA
Delay:		LDX	#DelayConst
Next:		LEAX	-1,X
		LDY	#100
Next2:		LEAY	-1,Y
		CPY	#0
		BNE	Next2
		CPX	#0
		BNE	Next
		COMA
		STAA	$400
		BRA	Delay
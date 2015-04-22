skrivport	EQU	$9C3
styrord		EQU	$9C2

	ORG	$1000
	LDX	#tabell
start:	JSR	DisplayML15
	BRA	start



DisplayML15:
	LDAA	#1
	STAA	styrord
	LDAA	#$D0
	STAA	skrivport
	LDAA	#0
	STAA	styrord
counter:
	CMPA	#6
	BEQ	is6		
	LDAB	A,X
	STAB	skrivport
	INCA		;A <- A+1
	BRA	counter
is6:	LDAB	#0
	STAB	skrivport
	LDAB	#0
	STAB	skrivport
	RTS

	
tabell:	FCB	1,2,3,4,5,6
	
	
;	KeyboardML15
;
	ORG	$1000
	LDX	#tabell
start:	JSR	DisplayML15
	BRA	start
	
GetKbdML15:
	JSR	CheckKbdML15
	CMPB	#$FF
	BEQ	GetKbdML15
	NOP

CheckKbdML15:	
	LDAB	$9C0
	BMI	DAV_1
	PSHB
DAV_2:	LDAB	$9C0
	BPL	DAV_2
	PULB
	RTS
DAV_1:	LDAB	#$FF
	RTS

DisplayML15:
	LDAA	#1
	STAA	$9C2
	LDAA	#$D0
	STAA	$9C3
	LDAA	#0
qwe:	CMPA	#6
	BEQ	asd		
	PSHA		;M(9C3) <- M(A+X)
	PULB
	ABX
	STX	$9C2
	INCA		;A <- A+1
	BRA	qwe
asd:	LDAB	#0
	STAA	$9C3
	LDAB	#0
	STAA	$9C3
	
	
	
	
	
	
	
	
CheckKbd_First:	
	LDAB	$9C0
	BMI	First_DAV_1
	RTS
First_DAV_1:
	LDAB	#$FF
	RTS
	
tabell:	FCB	1,2,3,4,5,6
	

	
		
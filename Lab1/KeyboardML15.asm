;	KeyboardML15
;
	ORG	$1000
start:	JSR	GetKbdML15
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
	
	
CheckKbd_First:	
	LDAB	$9C0
	BMI	First_DAV_1
	RTS
First_DAV_1:
	LDAB	#$FF
	RTS

	

	
		
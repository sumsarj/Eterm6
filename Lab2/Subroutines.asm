;Subroutine Outzero
InPort		EQU	$600
OutPort		EQU	$400

		USE	../Lab1/Labdefs.asm
		ORG	$1000
start:
		LDAB	#$FF
		STAB	DCShadow
		
		LDAB	InPort
		
		JSR	Outzero
		
		LDAA	DCShadow
		STAA	OutPort
		JMP	start
Outzero:	
		CMPB	#7
		BPL	Outzero_done
		LDAA	#1
		CMPB	#1
		BEQ	bitclear
		
loop:	
		LSLA
		CBA	
		BNE	loop
		
bitclear:	
		COMA
		ANDA	DCShadow
		STAA	DCShadow
		STAA	DrillControl
		
Outzero_done:	RTS	
DCShadow	RMB	1	;DrillControl Shadow
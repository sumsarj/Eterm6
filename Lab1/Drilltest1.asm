; Drilltest1.s12
	USE	Labdefs.asm
	ORG	$1000
Dtest1:
	LDAA	DipSwitch	;L�s styrord
	STAA	DrillControl	;Skriv styrord
	BRA	Dtest1
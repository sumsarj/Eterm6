; Drilltest1.s12
	USE	Labdefs.asm
	ORG	$1000
Dtest1:
	LDAA	DipSwitch	;Läs styrord
	STAA	DrillControl	;Skriv styrord
	BRA	Dtest1
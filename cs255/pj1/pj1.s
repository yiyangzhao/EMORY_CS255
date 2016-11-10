* ********************************************************************
* Do not touch the following 2 xdef lists:
* ********************************************************************
        xdef Start, Stop, End
        xdef A, B, GCD

* ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
* You can add more xdef here to export labels to emacsim
* ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


* +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
*      Put your assembler program here - between the start and stop label
*      DO NOT define any variables here - see the variable section below
* +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Start:

	move.l A, D0
	move.l B, D1
	cmp.l D0, D1
	blt L1
	move.l D0, B
	move.l D1, A
L1

	move.l A, D0
	move.l B, D1 *Don't ask me why I skipped D2. I have awful mathmatic skill.
	move.l D0, D3
	
	DIVS D1, D3
	SWAP D3
	ext.l D3

Loop	cmp.l #0, D3
	ble LoopExit
	
	move.l D1, D0
	move.l D3, D1
	move.l D0, D3
	DIVS D1, D3
	SWAP D3
	ext.l D3

	bra Loop

LoopExit
	move.l D1,GCD



* ********************************************************************
* Don't touch the stop label - you need it to stop the program
* ********************************************************************
Stop:   nop



* +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
*    Variable Section -   Put your variables here IF you need more
*
*    DO NOT define A, B and GCD !!!
*    They are already defined below
*
* You can add more variables below this line if you need them
* +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++






* ********************************************************************
* XXXX Don't touch anything below this line !!!
* ********************************************************************
A:      dc.l  168
B:      dc.l  651
GCD:    ds.l  1

End:    nop
        end

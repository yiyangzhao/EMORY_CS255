*@author Yiyang Zhao
*@honor_code I worked on this assignment alone, using only this semester's course materials.


        xdef BubbleSort


BubbleSort:
******************************************************
* Write your bubble sort assembler subroutine here
******************************************************
*@param array starting address in D0
*@param size of array in D1
*A0:outerloop address pointer
*A1:innerloop address pointer
*A3:end address of arrray
*D3:(A1)
*D4:4(A1)
*D5:psuedo-An since cmpa is not supported
*D6:boolean, 0=done,1=not done
initialize:
	movea.l D0,A0
	move.l D1,D2
	muls #4,D2
	sub.l #4,D2
	add.l D0,D2
	movea.l D2,A3

oloopbegin:
	move.l A3,D5
	cmpa.l D5,A0
	bge oloopend
	movea.l D0,A1
	move.l #0,D6
	
iloopbegin:
	move.l A3,D5
	cmpa.l D5,A1
	bge iloopend
	move.l (A1),D3
	move.l 4(A1),D4
	cmp.l D3,D4
	bge skipif
doif:	
	move.l D3,4(A1)
	move.l D4,(A1)
	move.l #1,D6
skipif:
	adda.l #4,A1
	bra iloopbegin
iloopend:
	adda.l #4,A0
	cmp.l #0,D6
	beq oloopend
	bra oloopbegin
oloopend:

	rts

* *****************************************************************************
* If you need local variables, you can add variable definitions below this line
* *****************************************************************************

        end

	xdef InsertList

InsertList:

* ********************************************************************
* Put your InsertList function here 
* ********************************************************************

pre:
	move.l a6,-(a7)
	move.l a7,a6
	suba.l #4,a7
	move.l 12(a6),d0 *head
	cmp.l #0,d0
	beq headnull

headnotnull:
	move.l 12(a6),a0
	move.l 0(a0),d0
	move.l 8(a6),a0
	move.l (a0),d1
	cmp d1,d0
	ble sort	

headnull:
	move.l 8(a6),a0
	move.l 12(a6),d0
	move.l d0,4(a0)
	move.l 8(a6),d0
	move.l a6,a7
	move.l (a7)+,a6
	rts
sort:
	move.l 12(a6),a0
	move.l 4(a0),-(a7)
	move.l 8(a6),-(a7)
	bsr InsertList
	adda.l #8,a7
	move.l d0,-4(a6)
	move.l 12(a6),a0
	move.l -4(a6),4(a0)
	move.l 12(a6),d0
	move.l a6,a7
	move.l (a7)+,a6
	rts






        end

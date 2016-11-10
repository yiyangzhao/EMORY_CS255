* ====================================================================
* Do not touch the following 2 xdef lists:
* ====================================================================
        xdef Stop1, Stop2, Stop3, Stop4
        xdef Start, Stop, End
	xdef ans
	xref F
* ********************************************************************
* Add more xdef directives below if you need more external labels
* - You can only add a label as a break point (stop location) in EGTAPI
* - if the label has been xdef !!!
* - And I am pretty sure you need to use break point for debugging 
* - in this project...
* ********************************************************************

Start:
		move.l #-3, -(a7)
		move.l #5, -(a7)
		move.l #5, -(a7)
		bsr F
		adda.l #12, a7
		move.l d0, ans
Stop1:

		move.l #5, -(a7)
		move.l #-4, -(a7)
		move.l #5, -(a7)
		bsr F
		adda.l #12, a7
		move.l d0, ans
Stop2:

		move.l #2, -(a7)
		move.l #5, -(a7)
		move.l #9, -(a7)
		bsr F
		adda.l #12, a7
		move.l d0, ans
Stop3:

		move.l #2, -(a7)
		move.l #2, -(a7)
		move.l #2, -(a7)
		bsr F
		adda.l #12, a7
		move.l d0, ans
Stop4:

		move.l #5, -(a7)
		move.l #5, -(a7)
		move.l #5, -(a7)
		bsr F
		adda.l #12, a7
		move.l d0, ans

* ====================================================================
* Don't touch the stop label - you need it to stop the program
* ====================================================================
Stop:   nop
        nop

ans:	ds.l  1


*====================================================================
* Don't add anything below this line...
* ====================================================================
End:
        end

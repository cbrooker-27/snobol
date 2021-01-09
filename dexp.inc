*	DEXP.INC
*
*	Here's an advanced function that demonstrates the use
*	of SNOBOL4's CODE function.
*
*	Program structuring would be enhanced if there were a simple
*	way to make one line function definitions, rather than coding
*	a DEFINE call and a goto around the function body.  Function
*	DEXP allows these one line definitions.  A typical call:
*		DEXP('AVERAGE(X,Y) = (X + Y) / 2')
*	You can even have multistatement definitions.  This call defines
*	function SIGN(X) that returns 1 if X is positive, -1 if negative,
*	and null if X = 0:
*		DEXP('SIGN(X) = GT(X,0) 1 ; SIGN = LT(X,0) -1 ;')
*
*	This is one of the many programs and functions from
*	"Algorithms in SNOBOL4," by James F. Gimpel.
*
	DEFINE('DEXP(PROTO)NAME,ARGS')			:(DEXP_END)

*	Remove leading blanks, get function name and remove argument list.
DEXP	PROTO POS(0) SPAN(' ') =
	PROTO BREAK('(') . NAME BAL . ARGS = NAME

*	Build the code for the function body, then define it.
	CODE(NAME ' ' PROTO ' :S(RETURN)F(FRETURN)')
	DEFINE(NAME ARGS)				:(RETURN)
DEXP_END

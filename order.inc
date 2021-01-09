*	ORDER.INC
*
*	Function to sort the characters within a word.  For example,
*		ORDER('PURPLE') returns 'ELPPRU'.
*
*	The collating sequence can be altered by replacing &ALPHABET
*	with a string containing the desired sequence.
*
*	The function can be exercised with the CODE.SNO program:
*		SNOBOL4 CODE
*		?	SLOAD('ORDER.INC')
*		?=ORDER('PURPLE')
*		ELPPRU
*		?=ORDER('987654321')
*		123456789
*
*	The function is useful when strings are used to represent
*	sets, where individual characters are the set elements.
*	Elements can be added to a set by string concatenation, and
*	deleted by pattern matching with null replacement.
*	Set equality and subset checking can use the order function
*	to produce a standard ordering.
*
*	ORDER is also an interesting function because of the clever
*	coding used to implement an insertion sort.  Characters are
*	removed one at a time from the argument, and inserted at the
*	correct point in the output variable, ORDER.
*
*	This is one of the many programs and functions from
*	"Algorithms in SNOBOL4," by James F. Gimpel.
*
*
	DEFINE('ORDER(S)T,HIGHS,S1')
	ORDER_PAT1 = LEN(1) . T
	ORDER_PAT2 = BREAK(*T) REM . HIGHS
	ORDER_PAT3 = (BREAK(*HIGHS) | REM) . S1		:(ORDER_END)

*	Get next character from argument
ORDER	S ORDER_PAT1 =					:F(RETURN)

*	Put all characters >= T into HIGHS
	&ALPHABET ORDER_PAT2

*	Find first occurence of one of these higher characters,
*	and insert at that point.
	ORDER ORDER_PAT3 = S1 T				:(ORDER)
ORDER_END

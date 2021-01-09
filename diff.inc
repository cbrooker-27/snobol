*	DIFF.INC
*
*	Function to return the difference of two strings.  Given
*	strings S1 and S2, returns the set difference S1 - S2.
*	
*		DIFF('PURPLE','LEP') returns 'UR'.
*
*	Handy for set arithmetic, and to obtain character sets.
*	For example, DIFF(&ALPHABET, &LCASE &UCASE) returns the
*	full ASCII set less the upper- and lower-case characters.
*
*	Requires &ANCHOR = 0
*
*	This is one of the many programs and functions from
*	"Algorithms in SNOBOL4," by James F. Gimpel.

	DEFINE('DIFF(S1,S2)')				:(DIFF_END)
DIFF	DIFF = S1
	IDENT(S2)					:S(RETURN)
	S2 = SPAN(S2)

* Remove any occurances of S2's characters from result.
DIFF_1	DIFF S2 =				:S(DIFF_1)F(RETURN)

DIFF_END

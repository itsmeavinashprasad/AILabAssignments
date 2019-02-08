/* To replace nth element by another element X in L, leaving the resultant list in L1. */

/* if to replace 0-th element, return L as it is */
replace_nth(L, 0, _, L):- 
	!.

/* if list is empty, and N is not zero, then given operation is not possible */	
replace_nth([], _, _, []):-  
	write('Length of the given list is smaller than N'), 
	!.

/* replace 1st element with X */
replace_nth([_|Rest], 1, X, [X|Rest]):- 
	!.
	
/* if n-th element is not traversed, keep going */
replace_nth([H|Rest], N, X, [H|R1]):- 
	N1 is N-1, 
	replace_nth(Rest, N1, X, R1).
/* To replace nth element by another element X in L, leaving the resultant list in L1. */
replace_nth([], 0, _, _):- 
	!.

replace_nth([], _, _, []):-  
	write('Length of list is smaller than N'), 
	!.

replace_nth([_|Rest], 0, X, [X|Rest]):- 
	!.
	
replace_nth([H|Rest], N, X, [H|R1]):- 
	N1 is N-1, 
	replace_nth(Rest, N1, X, R1).
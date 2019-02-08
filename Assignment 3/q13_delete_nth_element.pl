/* To delete nth element in L, leaving the rest */

/* if to delete 0-th element, return L as it is */
delete_nth(L, 0, L):-
	!.

/* if list is empty, and N is not zero, then given operation is not possible */	
delete_nth([], _, []):- 
	write('Length of the given list is smaller than N'), !.

/* if N=1, discard first element */
delete_nth([_|Rest], 1, Rest):-
	!.

/* if n-th element is not traversed, keep going */
delete_nth([X|Rest], N, [X|R1]):- 
	N1 is N-1, 
	delete_nth(Rest, N1, R1).
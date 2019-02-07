/* To delete nth element in L, leaving the rest in L1 */

delete_nth([], 0, _):-
	!.
delete_nth([], _, []):- 
	write('Length of list is smaller than N'), !.

delete_nth([_|Rest], 0, Rest):-
	!.

delete_nth([X|Rest], N, [X|R1]):- 
	N1 is N-1, 
	delete_nth(Rest, N1, R1).
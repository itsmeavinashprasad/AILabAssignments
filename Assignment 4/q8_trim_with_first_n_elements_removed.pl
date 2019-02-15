/* trim(N, L, L1) that defines L1 to be obtained from L with first N elements removed */

trim(0, L, L):-
	!.

trim(N, [], []):-
	write("N is grater than length of the list provided."),
	!.

trim(N, [Head|Rest], L):-
	N1 is N-1,
	trim(N1, Rest, L).
/* To recursively add two integers */
rec_add(X, 0, X):-
	!.

/* if N2<0, then swap N1 and N2 */
rec_add(N1, N2, Result):-
	N2 < 0,
	rec_add(N2, N1, Result),
	!.

/* when N2 is positive */
rec_add(N1, N2, Result):-
	N2_2 is N2-1,
	rec_add(N1, N2_2, Result_1),
	Result is Result_1+1.

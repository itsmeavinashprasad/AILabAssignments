/* To recursively add two integers */
rec_add(X, 0, X):-
	!.


/* when N1 and N2 both are negative */
rec_add(N1, N2, Result):-
	N1 < 0,
	N2 < 0,
	N1_2 is -N1,
	N2_2 is -N2,
	rec_add(N1_2, N2_2, Result_1),
	Result is -Result_1,
	!.

/* if N2<0, then swap N1 and N2 */
rec_add(N1, N2, Result):-
	N2 < 0,
	rec_add(N2, N1, Result),
	!.

/* when N2 is positive */
rec_add(N1, N2, Result):-
	N2 > 0,
	N2_2 is N2-1,
	rec_add(N1, N2_2, Result_1),
	Result is Result_1+1.

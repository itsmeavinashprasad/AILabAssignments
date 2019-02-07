/* consult("q9_recursive_addition"). */

/* To subtract two integers recursively */
rec_sub(N1, 0, N1):-
	!.

/* if N2<0, then swap N2 = -N2, then recursively add*/
rec_sub(N1, N2, Result):-
	N2 < 0,
	N2_2 is -N2,
	rec_add(N1, N2_2, Result),
	!.

/* when N2 is positive */
rec_sub(N1, N2, Result):-
	N2_1 is N2-1,
	rec_sub(N1, N2_1, Result_1),
	Result is Result_1-1.

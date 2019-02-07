/* consult("q9_recursive_addition"). */

/* To multiply two integers recursively */
rec_mul(X, 0, 0):-
	!.
rec_mul(0, X, 0):-
	!.

rec_mul(X, 1, X):-
	!.

/* when N1<0, N2<0 */
rec_mul(N1, N2, Result):-
	N1 < 0,
	N2 < 0,
	N1_2 is -N1,
	N2_2 is -N2,
	rec_mul(N1_2, N2_2, Result),
	!.


/* when N2<0, N1>0, swap N1 and N2*/
rec_mul(N1, N2, Result):-
	N1 > 0,
	N2 < 0,
	rec_mul(N2, N1, Result),
	!.

/* when N2 is positive */
rec_mul(N1, N2, Result):-
	N2_2 is N2-1,
	rec_mul(N1, N2_2, Result_1),
	rec_add(N1, Result_1, Result).

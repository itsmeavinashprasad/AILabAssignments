/* To recursively add two integers */
rec_add(X, 0, X):-
	!.

rec_add(N1, N2, Result):-
	N2_2 is N2-1,
	rec_add(N1, N2_2, Result_1),
	Result is Result_1+1.

/* To multiply two integers recursively */
rec_mul(X, 0, 0):-
	!.
rec_mul(0, X, 0):-
	!.

rec_mul(X, 1, X):-
	!.

rec_mul(N1, N2, Result):-
	N2_2 is N2-1,
	rec_mul(N1, N2_2, Result_1),
	rec_add(N1, Result_1, Result).
/* To recursively add two integers */
rec_add(X, 0, X):-
	!.

rec_add(N1, N2, Result):-
	N2_2 is N2-1,
	rec_add(N1, N2_2, Result_1),
	Result is Result_1+1.
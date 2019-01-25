/* To subtract two integers recursively */

rec_sub(N1, 0, N1):-
	!.

rec_sub(N1, N2, Result):-
	N2_1 is N2-1,
	rec_sub(N1, N2_1, Result_1),
	Result is Result_1-1.
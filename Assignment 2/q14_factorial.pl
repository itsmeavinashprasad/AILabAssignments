/* To find N! */
fact(1,1):-
	!.

fact(N, Result):-
	N1 is N-1,
	fact(N1, Result_1),
	Result is Result_1*N.
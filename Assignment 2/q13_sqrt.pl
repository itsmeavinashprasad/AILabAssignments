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

/* To find the square root of an integer */

sqrt(N, Result):-
	Probe is 1,
	sqrt_2(N, Probe, Result_1),
	Result is Result_1.

sqrt_2(N, Probe, Result):-
	rec_mul(Probe, Probe, Result_1),
	Result_1 > N,
	Result is Probe-1,!.

sqrt_2(N, Probe, Result):-
	rec_mul(Probe, Probe, Result_1),
	Result_1 =< N,
	Probe_1 is Probe+1,
	sqrt_2(N, Probe_1, Result_2),
	Result is Result_2.


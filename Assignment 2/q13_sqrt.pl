/* To find the square root of an integer */

sqrt(N, Result):-
	Probe is 1,
	sqrt_2(N, Probe, Result_1),
	Result is Result_1.

sqrt_2(N, Probe, Result):-
	Result_1 is Probe*Probe,
	Result_1 > N,
	Result is Probe-1,!.

sqrt_2(N, Probe, Result):-
	Result_1 is Probe*Probe,
	Result_1 =< N,
	Probe_1 is Probe+1,
	sqrt_2(N, Probe_1, Result_2),
	Result is Result_2.


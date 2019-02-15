/* To find factorial N using accumulator */

/* wrapper */
fact(N, Result):-
	fact_acc(N, 1, Result).

/* break condition */
fact_acc(0, Ac, Ac):-
	!.

fact_acc(N, Ac, Result):-
	N > 0,
	N_1 is N-1,
	Ac_1 is Ac*N,
	fact_acc(N_1, Ac_1, Result).

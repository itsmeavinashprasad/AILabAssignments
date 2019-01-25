/* append */
append([], L, L).

append([X | Rest], L1, [X | L2]):-
	append(Rest, L1, L2).

/* n-th fibonacci number */
fib_2(1,0):-
	!.
fib_2(2,1):-
	!.
fib_2(N, R):-
	N1 is N-1,
	N2 is N-2,
	fib_2(N1, R1),
	fib_2(N2, R2),
	R is R1+R2.

/* generate list upto n-th fibonacci number */
fib(0, []):-
	!.

fib(N, L):-
	N1 is N-1,
	fib(N1, L1),
	fib_2(N, R),
	append(L1, [R], L2),
	L is L2.		
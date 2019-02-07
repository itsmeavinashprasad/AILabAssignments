/* generate n-th fibonacci number */
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

/* generate list upto n-th fibonacci number, starting with 1st one */
fib(N, L):-
	fib_3(N, 1, L).

/* recursion break */
fib_3(N, Iter, L):-
	Iter is N+1,
	L = [],
	!.

fib_3(N, Iter, [Head | Rest]):-
	fib_2(Iter, Head),
	Iter_1 is Iter+1,
	fib_3(N, Iter_1, Rest).

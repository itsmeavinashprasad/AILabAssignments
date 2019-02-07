/*generate function*/
gen(X,X,[X]):-
	!.

gen(N1, N2, L):-
	N3 is N1+1,
	gen(N3, N2, L1),
 	L = [N1 | L1].

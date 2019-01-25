/*append*/
append([], L, L).

append([X | Rest], L1, [X | L2]):-
	append(Rest, L1, L2).

/*generate function*/
gen(X,X,[X]).

gen(N1,N2,L):-
	N3 is N1+1,
	gen(N3,N2,L1),
	L is [N1 | L1].

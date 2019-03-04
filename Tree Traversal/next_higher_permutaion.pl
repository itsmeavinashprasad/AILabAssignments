select(X, [X|Rest], Rest).
select(X, [Y|Rest], [Y|Rest1]):-
	select(X, Rest, Rest1).

permutation([],[]).
permutation(L, [H|T]):-
	select(H, L, R),
	permutation(R, T).


next_higher_perm(L,L1):-
	higher_perm(L, L1),
	not(far_higher_perm(L,L1)),!.


higher_perm(L, L1):-
	permutation(L, L1),
	higher(L1, L).

higher([H1|T1], [H|T]):-
	H1>H,!.
higher([H|T1], [H|T]):-
	higher(T1, T).

far_higher_perm(L, L1):-
	higher_perm(L, L2),
	higher(L1, L2).

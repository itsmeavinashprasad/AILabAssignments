ordered([]):-
	!.
ordered([X]):-
	!.
ordered([X|[Y|Rest]]):-
	X =< Y,
	!,
	ordered([Y|Rest]).

select(X, [X|Rest], Rest).
select(X, [Y|Rest], [Y|Rest1]):-
	select(X, Rest, Rest1).

permutation([],[]).
permutation(L, [H|T]):-
	select(H, L, R),
	permutation(R, T).

permutation_sort([],[]):-
	!.
permutation_sort(L, L1):-
	permutation(L,L1),
	ordered(L1),
	!.

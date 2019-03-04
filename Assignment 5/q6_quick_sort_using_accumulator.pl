quick_sort(L, L1):-
	quick_acc(L, [], L1).


quick_acc([],A,A):-
	!.
quick_acc([X|Rest], A, L):-
	partition(Rest, X, Lt, Gt),
	quick_acc(Gt, A, GtSorted),
	quick_acc(Lt, [X|GtSorted], L).


partition([],_,[],[]):-
	!.
partition([H|Rest], X, [H|Lt], Gt):-
	H =< X ,
	!,
	partition(Rest, X, Lt, Gt).
partition([H|Rest], X, Lt, [H|Gt]):-
	H > X ,
	partition(Rest, X, Lt, Gt).

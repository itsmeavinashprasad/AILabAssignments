insertion_sort([],[]):-
	!.

insertion_sort([H|Rest], Sorted):-
	insertion_sort(Rest, Sorted1),
	insert(H, Sorted1, Sorted).

insert(X,[],[X]):-
	!.
insert(X, [H|Rest], [X|[H|Rest]]):-
	X =< H,
	!.
insert(X, [H|Rest], [H|Rest1]):-
	X > H,
	insert(X, Rest, Rest1).
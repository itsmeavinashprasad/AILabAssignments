merge_sort([],[]):-
	!.
merge_sort([X],[X]):-
	!.
merge_sort(Unsorted, Sorted):-
	divide(Unsorted, L1, L2),
	merge_sort(L1, Sorted1),
	merge_sort(L2, Sorted2),
	merge(Sorted1, Sorted2, Sorted).


divide([],[],[]):-
	!.
divide([X], [X], []):-
	!.
divide([X|[Y|Rest]], [X|L1], [Y|L2]):-
	divide(Rest, L1, L2).

merge([],[],[]):-
	!.
merge(X,[],X):-
	!.
merge([],X,X):-
	!.
merge([X|L1], [Y|L2], [X|L3]):-
	X<Y,
	!,
	merge(L1, [Y|L2], L3).
merge([X|L1], [Y|L2], [Y|L3]):-
	X>Y,
	!,
	merge([X|L1], L2, L3).
merge([X|L1], [Y|L2], [X|[Y|L3]]):-
	X=Y,
	merge(L1, L2, L3).
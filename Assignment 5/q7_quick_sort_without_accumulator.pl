quicksort2([], []):- 
	!.
quicksort2([Head|Rest], Sorted):- 
	partition(Rest, Head, Lt, Gt),
	quicksort2(Lt, LtSorted), 
	quicksort2(Gt, GtSorted), 
	append(LtSorted, [Head|GtSorted], Sorted).

partition([],_,[],[]):-
	!.
partition([H|Rest], X, [H|Lt], Gt):-
	H =< X ,
	!,
	partition(Rest, X, Lt, Gt).
partition([H|Rest], X, Lt, [H|Gt]):-
	H > X ,
	partition(Rest, X, Lt, Gt).

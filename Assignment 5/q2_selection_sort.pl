select(X, [X|Rest], Rest).
select(X, [Y|Rest], [Y|Rest1]):-
	select(X, Rest, Rest1).

smaller(_,[]):-
	!.
smaller(X, [H|Rest]):-
	X =< H,
	smaller(X, Rest).

least(X, L, R):-
	select(X, L, R),
	smaller(X, R).

selection_sort([],[]):-
	!.
selection_sort(L, [H|T]):-
	least(H, L, R),
	selection_sort(R,T).
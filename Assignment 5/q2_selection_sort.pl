% select X from list(2nd) and return rest(3rd)
select(X, [X|Rest], Rest).
select(X, [Y|Rest], [Y|Rest1]):-
	select(X, Rest, Rest1).

% returns true if if X is smallest in list(2nd) 
smaller(_,[]):-
	!.
smaller(X, [H|Rest]):-
	X =< H,
	smaller(X, Rest).

% selects one element from list, checks if it is the least element, 
%if true then then return it
least(X, L, R):-
	select(X, L, R),
	smaller(X, R).

selection_sort([],[]):-
	!.
selection_sort(L, [H|T]):-
	least(H, L, R),
	selection_sort(R,T).
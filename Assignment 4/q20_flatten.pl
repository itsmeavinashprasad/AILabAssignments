flatten([],[]):-
	!.
	
flatten([First|Rest], L):-
	flatten(First, First1),
	flatten(Rest, Rest1),
	append(First1, Rest1, L),
	!.

flatten(X, [X]).
transpose([],[],[]):-
	!.

transpose([X], [Y], [(X,Y)]):-
	!.

transpose(L, [], L):-
	write("List 2 exhausted too early ..."),
	!.

transpose([], L, L):-
	write("List 1 exhausted too early ..."),
	!.

transpose([First1|Rest1],[First2|Rest2], [(First1,First2)|L]):-
	transpose(Rest1, Rest2, L).
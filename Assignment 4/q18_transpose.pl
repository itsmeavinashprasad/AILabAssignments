/* Transpose L1, L2 into L. 					*/
/* That is, 									*/
/*	if L1= [a, b, c] and L2= [1, 2, 3], then	*/
/*	L= [(a, 1), (b, 2), (c, 3)]					*/


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
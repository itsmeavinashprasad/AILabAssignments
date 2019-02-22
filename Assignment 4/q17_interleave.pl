/* Interleave alternate elements of L1 and L2 into L. For example,	*/
/*			if L1= [a, b, c] and									*/
/* 			L2= [1, 2], then L= [a, 1, b, 2, c]						*/

interleave([],[],[]):-
	!.

interleave([X],[],[X]):-
	!.

interleave(L,[],L):-
	write("List 2 exhausted early ..."),
	!.
interleave([],L,L):-
	write("List 1 exhausted early ..."),
	!.

interleave([First1|Rest1], [First2|Rest2], [First1|[First2|L]]):-
	interleave(Rest1, Rest2, L).
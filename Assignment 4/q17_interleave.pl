/* interleave() */

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
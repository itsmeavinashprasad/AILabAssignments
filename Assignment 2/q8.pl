/*append*/
append([], L, L).

append([X | Rest], L1, [X | L2]):-
	append(Rest, L1, L2).

/* split in two lists */
split_in_two([X],P,N):-
	X < 0,
	append([X], N, N1),
	N is N1,!.

split_in_two([X],P,N):-
	X >= 0,
	append([X], P, P1),
	P is P1.

split_in_two([X|Rest], P,N):-
	split_in_two(Rest,P,N).
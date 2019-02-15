/* remove_every_other(L, L1) that is true if list L1 is just list L with every other */
/* element removed (the two lists should have the same first element) */

remove_every_other([], []):-
	!.
remove_every_other( [Head | Rest], [Head | L]):-
	remove_every_other2(Rest, L).

remove_every_other2( [], [] ):-
	!.
remove_every_other2( [Head | Rest], L ):-
	remove_every_other(Rest, L).

	
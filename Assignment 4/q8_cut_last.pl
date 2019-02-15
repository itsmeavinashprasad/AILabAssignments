/* cutlast(L, L1) that defines L1 to be obtained from L with last element removed */

cutlast([], []):-
	!.

cutlast([X], []):-
	!.

cutlast([Head | Rest], [Head|L]):-
	cutlast(Rest, L).


	

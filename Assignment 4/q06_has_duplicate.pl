/* To determine whether an element is a member of a set. */
our_member(X, [X|_]):-
	!.
our_member(X, [_|Rest]):- 
	our_member(X, Rest).

/* has_duplicate(L), that determines whether list L has duplicate elements. */

has_duplicate( [Head|Rest] ):- 
	our_member(Head, Rest),
	1 is 1,
	!.

has_duplicate( [Head|Rest] ):- 
	has_duplicate(Rest).

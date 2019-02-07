/* our member */
our_member(X, [X | _ ]):-
	!.

our_member(X, [ _ | Rest]):-
	our_member(X, Rest).

/* To add an element to a list provided it is not present in the list. */

/* add X to empty list */
our_add( X , [], [X]):- 
	!.

/* if X is present in L, i.e. our_member() returns true, then donot add anything in L */
our_add( X, L, L ):-
	our_member(X, L),
	!.

our_add( X, L, [ X | L]).
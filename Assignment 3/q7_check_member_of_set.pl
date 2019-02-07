/* To determine whether an element is a member of a set. */
our_member1(X, [X|_]):-
	!.
our_member1(X, [_|Rest]):- 
	our_member1(X, Rest).
/* To determine whether an element is a member of a set. */
our_member(X, [X|_]):-
	!.
our_member(X, [_|Rest]):- 
	our_member(X, Rest).

/* To remove duplicate elements from a list without using accumulator */

rem_dup([],[]):-
	!.

rem_dup([Head | Rest], L):-
	our_member(Head, Rest),
	!,
	rem_dup(Rest, L).
	

rem_dup([Head | Rest], [Head | L]):-
	rem_dup(Rest, L).

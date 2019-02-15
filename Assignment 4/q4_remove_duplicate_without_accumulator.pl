/* To determine whether an element is a member of a set. */
our_member(X, [X|_]):-
	!.
our_member(X, [_|Rest]):- 
	our_member(X, Rest).

/* reverse result */
reverse([], Ac, Ac):-
	!.
reverse([Head | Rest], Ac, L):-
	reverse(Rest, [Head|Ac], L).

/* To remove duplicate elements from a list without using accumulator */

rem_dup(L, L1):-
	reverse(L, [], L2),
	rem_dup2(L2, L3),
	reverse(L3, [], L1).

rem_dup2([],[]):-
	!.

rem_dup2([Head | Rest], L):-
	our_member(Head, Rest),
	!,
	rem_dup2(Rest, L).
	

rem_dup2([Head | Rest], [Head | L]):-
	rem_dup2(Rest, L).

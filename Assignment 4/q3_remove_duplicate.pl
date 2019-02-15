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


/* To remove duplicate elements from a list using accumulator */

rem_dup(L1, L):-
	rem_dup_acc(L1, [], L2),
	reverse(L2, [], L).

rem_dup_acc([], Ac, Ac):-
	!.

rem_dup_acc([Head|Rest], Ac, L):-
	our_member(Head, Ac),
	!,
	rem_dup_acc(Rest, Ac, L).	

rem_dup_acc([Head|Rest], Ac, L):-
	rem_dup_acc(Rest, [Head|Ac], L).

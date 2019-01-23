/* append */
append([], L, L).

append([X | Rest], L1, [X | L2]):-
	append(Rest, L1, L2).


/* determine whether an element is member of a list using append */
our_member1(X,L):-
	append(_, [X|_], L).
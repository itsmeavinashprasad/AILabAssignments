/* append */
append([], L, L).

append([X | Rest], L1, [X | L2]):-
	append(Rest, L1, L2).

/* reverse using append	 */
reverse([],[]).
reverse([Head | Tail], L):-
	reverse(Tail, Z),
	append(Z, [Head], L).

% append
append([], L, L).

append([X | Rest], L1, [X | L2]):-
	append(Rest, L1, L2).

% determine whether two elements are next to each other

next_to(X, Y, L):-
	append(_, [X | [Y | _ ] ], L ).



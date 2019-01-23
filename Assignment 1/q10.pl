% append
append([], L, L).

append([X | Rest], L1, [X | L2]):-
	append(Rest, L1, L2).

% last
last(L, X):-
	append(_, [X], L).

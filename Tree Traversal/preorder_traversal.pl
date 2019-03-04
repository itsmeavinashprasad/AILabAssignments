pre_order(nil, []).
pre_order(bt(Left, Root, Right), L):-
	pre_order(Left, L1),
	pre_order(Right, L2),
	append([Root|L1], L2, L).

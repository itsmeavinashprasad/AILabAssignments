post_order(nil, []).
post_order(bt(Left, Root, Right), L):-
	post_order(Left, L1),
	post_order(Right, L2),
	append(L1, L2, L3),
	append(L3, [Root], L).
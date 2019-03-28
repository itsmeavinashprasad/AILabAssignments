post_order(nil, []).
post_order(bst(Left, Root, Right), L):-
	post_order(Left, L1),
	post_order(Right, L2),
	append(L1, L2, L3),
	append(L3, [Root], L).
	



% bt( bt(bt(nil,d,nil), b, bt(nil, e, nil)) ,a, bt(bt(nil,f,nil), c, bt(nil, g, nil)))
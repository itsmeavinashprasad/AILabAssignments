pre_order(nil, []).
pre_order(bt(Left, Root, Right), L):-
	pre_order(Left, L1),
	pre_order(Right, L2),
	append([Root|L1], L2, L).




% bt( bt(bt(nil,d,nil), b, bt(nil, e, nil)) ,a, bt(bt(nil,f,nil), c, bt(nil, g, nil)))
/*
bt( bt(bt(nil,d,nil), b, bt(nil, e, nil)) ,a, bt(bt(nil,f,nil), c, bt(nil, g, nil)))
*/

in_order(nil, []).
in_order(bt(Left, Root, Right), L):-
	in_order(Left, L1),
	in_order(Right, L2),
	append(L1, [Root|L2], L).
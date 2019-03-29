pre_order(nil, []).
pre_order(bst(Left, Root, Right), L):-
	pre_order(Left, L1),						% get pre order traversal outcome of left subtree
	pre_order(Right, L2),						% get pre order traversal outcome of right subtree
	append([Root|L1], L2, L).					% join Root, L1, L2




% bt( bt(bt(nil,d,nil), b, bt(nil, e, nil)) ,a, bt(bt(nil,f,nil), c, bt(nil, g, nil)))
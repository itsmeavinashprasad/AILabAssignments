in_order(nil, []).
in_order(bst(Left, Root, Right), L):-
	in_order(Left, L1),									% get in order traversal outcome of left subtree
	in_order(Right, L2),								% get in order traversal outcome of right subtree
	append(L1, [Root|L2], L).							% join L1, Root, L2




% bt( bt(bt(nil,d,nil), b, bt(nil, e, nil)) ,a, bt(bt(nil,f,nil), c, bt(nil, g, nil)))

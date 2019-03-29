post_order(nil, []).
post_order(bst(Left, Root, Right), L):-
	post_order(Left, L1),							% get post order traversal outcome of left subtree
	post_order(Right, L2),							% get post order traversal outcome of right subtree
	append(L1, L2, L3),								
	append(L3, [Root], L).							% join, L1, L2, Root
	



% bt( bt(bt(nil,d,nil), b, bt(nil, e, nil)) ,a, bt(bt(nil,f,nil), c, bt(nil, g, nil)))
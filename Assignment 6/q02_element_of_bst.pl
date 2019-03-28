element_bst(X, bst(Left, X, Right)):-
	!.

element_bst(X, bst(Left, Root, Right)):-
	X =< Root,
	element_bst(X, Left),
	!
	;
	X > Root,
	element_bst(X, Right).



% sample bst
% bst(nil, 4, nil)
% bst(nil, 4, bst(nil,5,nil) )
% bst(bst(nil,3,nil), 4, nil)
% bst(bst(nil,2,nil), 4, bst(nil,6,nil))


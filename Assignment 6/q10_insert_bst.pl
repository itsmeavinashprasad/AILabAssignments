insert_bst(X, nil, bst(nil, X, nil)):-							% if given tree is empty, then make a node and return
	!.

% X to be placed in left subtree
insert_bst(X, bst(Left, Root, Right), bst(Left1, Root, Right)):-
	X < Root,
	!,
	insert_bst(X, Left, Left1).

% X to be placed in right subtree
insert_bst(X, bst(Left, Root, Right), bst(Left, Root, Right1)):-
	insert_bst(X, Right, Right1).


% sample bst
% bst(nil, 4, nil)
% bst(nil, 4, bst(nil,5,nil) )
% bst(bst(nil,3,nil), 4, nil)
% bst(bst(nil,2,nil), 4, bst(nil,6,nil))

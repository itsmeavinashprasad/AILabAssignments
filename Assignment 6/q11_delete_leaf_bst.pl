delete_leaf_bst(X, Tree, Deleted_tree):-
	insert_bst(X, Deleted_tree, Tree).




% bst( bst(nil, 3, bst(nil, 4, nil)), 5, bst( bst(nil, 4, nil), 6, nil))

%        5
%       / \
%      3     6
%     / \   / \
%   nil  4 4 nil
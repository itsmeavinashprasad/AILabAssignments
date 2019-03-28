% Case 1: if X is less than Root, traverse down to the left subtree
delete_node_bst( X, bst(Left, Root, Right), bst(Left1, Root, Right)):-
	X < Root,
	delete_node_bst(X, Left, Left1),
	!.

% Case 2: if X is greater than Root, traverse down to the right subtree
delete_node_bst( X, bst(Left, Root, Right), bst(Left, Root, Right1)):-
	X > Root,
	delete_node_bst(X, Right, Right1),
	!.


% Case 3:   X is the root node
% Case 3.a: X is the leaf node
delete_node_bst(X, bst(nil, X, nil), nil):-
	!.

% Case 3.b: X has no right subtree, then swap X with root of left subtree
delete_node_bst(X, bst(Left, X, nil), Left):-
	!.

% Case 3.c: X has no right subtree, then swap X with root of left subtree
delete_node_bst(X, bst(nil, X, Right), Right):-
	!.

% Case 3.d: X has both left and right subtree, then 
%			i. find the inorder_successor
% 			ii. delete the inorder_successor node from right subtree
% 			iii. copy inorder_successor to the root key
delete_node_bst(X, bst(Left, X, Right), bst(Left, Inorder_successor, Right1)):-
	inorder_successor( Right, Inorder_successor),
	delete_node_bst( Inorder_successor, Right, Right1).



inorder_successor( bst(nil, Root, Right), Root):-
	!.
inorder_successor( bst(Left, Root, Right), Inorder_successor):-
	inorder_successor(Left, Inorder_successor).



% bst(bst(bst(nil, 20, nil), 30, bst(nil, 40, nil)), 50, bst(bst(nil, 60, nil), 70, bst(nil, 80, nil)))
%              50 
%             /  \ 
%          30      70 
%         /  \    /  \ 
%       20   40  60   80 

% bt is bst if left and right subtree is bst
is_bst(bst(nil , Root , nil)):-
	!.
is_bst(bst(Left , Root , Right)):-
	is_bst_left(Root, Left),
	is_bst_right(Root, Right).


is_bst_left(Root, nil):-
	!.
is_bst_left(Root, bst(Left, Root2, Right)):-
	Root2 =< Root,								% if root <= parent
	is_bst_left(Root2, Left),
	is_bst_right(Root2, Right).


is_bst_right(Root, nil):-
	!.
is_bst_right(Root, bst(Left, Root2, Right)):-
	Root2 >= Root,								% if root >= parent
	is_bst_left(Root2, Left),
	is_bst_right(Root2, Right).	


% sample bst
% bst(nil, 4, nil)
% bst(nil, 4, bst(nil,5,nil) )
% bst(bst(nil,3,nil), 4, nil)
% bst(bst(nil,2,nil), 4, bst(nil,6,nil))

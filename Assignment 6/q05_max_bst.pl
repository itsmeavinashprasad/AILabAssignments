max_bst(bst(_, Root, nil), Root):-
	!.
max_bst(bst(_, Root, Right), Max):-
	max_bst(Right, Max).

% sample bst
% bst(nil, 4, nil)
% bst(nil, 4, bst(nil,5,nil) )
% bst(bst(nil,3,nil), 4, nil)
% bst(bst(nil,2,nil), 4, bst(nil,6,nil))

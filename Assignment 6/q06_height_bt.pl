get_height( Tree, Height ):-
	get_height2(Tree, Height, 0).


max_height(H1, H2, H):-
	H1 >= H2,
	H is H1,
	!
	;
	H is H2.

get_height2(nil, Height, Height):-
	!.
get_height2( bt(Left, Root, Right), Height, Acc ):-
	get_height2( Left, Height1, Acc),
	get_height2( Right, Height2, Acc),
	max_height(Height1, Height2, H),
	Height is H+1.


% sample bt
% bt(nil, a, nil)
% bt( nil, a, bt(nil,b,nil) )
% bt(bt(nil,b,nil), a, nil)
% bt(bt(nil,b,nil), a, bt(nil,c,nil))



is_bt(bt(nil, X, nil)):-
	!.

is_bt(bt(Left, Root, Right)):-
	is_bt(Left),
	is_bt(Right).


% sample bt
% bt(nil, a, nil)
% bt( nil, a, bt(nil,b,nil) )
% bt(bt(nil,b,nil), a, nil)
% bt(bt(nil,b,nil), a, bt(nil,c,nil))

element_bt(X, bt(Left, X, Right)):-
	!.

element_bt(X, bt(Left, Root, Right)):-
	element_bt(X, Left), 
	!
	;
	element_bt(X, Right).



% sample bt
% bt(nil, a, nil)
% bt( nil, a, bt(nil,b,nil) )
% bt(bt(nil,b,nil), a, nil)
% bt(bt(nil,b,nil), a, bt(nil,c,nil))


% consult(insert_bst)
% consult(in_order)

sort_bst(UnsortedList, SortedList):-
	insert_all(UnsortedList, nil, BST),
	write(BST),
	in_order(BST, SortedList).

insert_all([], BST, BST).
insert_all([Head|Rest], AccTree, Tree):-
	insert_bst(Head, AccTree, AccTree1),
	insert_all(Rest, AccTree1, Tree).



% [50, 30, 40, 20, 70, 60, 80]
% bst(bst(bst(nil, 20, nil), 30, bst(nil, 40, nil)), 50, bst(bst(nil, 60, nil), 70, bst(nil, 80, nil)))
%              50 
%             /  \ 
%          30      70 
%         /  \    /  \ 
%       20   40  60   80 


% consult(insert_bst)
% consult(delete_node_bst)

sort_bst2(UnsortedList, SortedList):-
	insert_all(UnsortedList, nil, BST),				% insert all elements 
	write("==> Resultant BST: "),
	writeln(BST),
	delete_and_sort(BST,SortedList).				


% inserts all elements in the list in BST, using Accumulator
insert_all([], BST, BST).
insert_all([Head|Rest], AccTree, Tree):-
	write("-> inserting: "),
	writeln(Head),
	insert_bst(Head, AccTree, AccTree1),
	insert_all(Rest, AccTree1, Tree).

% find minimum element in bst (left most element), put it in the list
delete_and_sort(nil, []).
delete_and_sort(BST, SortedList):-
	get_min(BST, MinNode),
	write("-> Minimun Element: "),
	writeln(MinNode),
	delete_node_bst(MinNode, BST, BST1),
	delete_and_sort(BST1, SortedList1),
	SortedList = [MinNode|SortedList1].

% returns the left most element
get_min(bst(nil, Root, _), Root).
get_min( bst(Left, Root, _), Root1):-
	get_min(Left, Root1).
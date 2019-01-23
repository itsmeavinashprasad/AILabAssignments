% To find whether an element is a member of a list.

check_if_present(Item, [Item | Tail]):-
	check_if_present(Item, Tail).
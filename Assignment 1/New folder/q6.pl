get_last([X]):- 
	write("Last element of the list is: "),
	write(X).

get_last([Head | Tail]):-
	get_last(Tail).
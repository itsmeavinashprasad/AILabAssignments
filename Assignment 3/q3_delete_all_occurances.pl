/* To delete all occurrences of an element from a list. */

delete_all( _, [], []):-
	!.


delete_all( X, [ X | Rest], Rest_1):-
	delete_all(X, Rest, Rest_1),
	!.


delete_all(X, [ Y | Rest], [ Y | Rest_1]):-
	delete_all(X, Rest, Rest_1).
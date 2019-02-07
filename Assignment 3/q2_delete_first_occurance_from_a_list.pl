/* To delete first occurrence of an element from a list. */

/* return as it is if the list is empty */
efface(_, [], []):-
	!.

/* if X is the first element, return Rest */
efface(X, [X | Rest], Rest):-
	!.

/* if Y is not the first element from Rest, check for next occurance */
efface(X, [ Y | Rest ], [ Y | Rest_1 ]):-
	efface(X, Rest, Rest_1).
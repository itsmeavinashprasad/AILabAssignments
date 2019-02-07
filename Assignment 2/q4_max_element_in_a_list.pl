/*  max of two */
max(X,Y,X):-
	X >= Y.
max(X,Y,Y):-
	X < Y.

/* max in list */
max_list([X],X):-
	!.

max_list([X | Rest], Max):-
	max_list(Rest, Max1),
	max(X, Max1, Max).
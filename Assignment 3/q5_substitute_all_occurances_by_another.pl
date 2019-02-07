/* To substitute all occurrences of an element by another element in a list */

substitute_all(_, _, [], []):-
	!.

substitute_all( X, Y, [X|Rest], [Y|Rest_1]):-
	substitute_all(X, Y, Rest, Rest_1),
	!.

substitute_all(X, Y, [Z|Rest], [Z|Rest_1]):-
	substitute_all(X, Y, Rest, Rest_1).
/* To remove the first occurrence of an element X in L with Y giving the result in L1. */

substitute_first(_, _, [], []):-
	!.

substitute_first( X, Y, [X|Rest], [Y|Rest]):-
	!.

substitute_first(X, Y, [Z|Rest], [Z|Rest_1]):-
	substitute_first(X, Y, Rest, Rest_1).
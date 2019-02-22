/* Define a predicate to “flatten” a list by constructing a list containing no 	*/
/* lists as elements, but containing all of the atoms of the original list. For */
/* example, consider the following goal and its corresponding answer.			*/
/* ?- flatten ([a, [b, c], [[d], [ ], e]], L).									*/
/* {L= [a, b, c, d, e]}															*/

flatten([],[]):-
	!.
	
flatten([First|Rest], L):-
	flatten(First, First1),
	flatten(Rest, Rest1),
	append(First1, Rest1, L),
	!.

flatten(X, [X]).
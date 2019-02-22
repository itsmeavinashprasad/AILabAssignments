/* circular_left_shift(L, L1). 			*/
/* That is,								*/
/* 	if L= [a, b, c, d, e, f] then		*/
/* 	L1= [f, a, b, c, d, e,]				*/

circular_right_shift([], []):-
	!.
	
circular_right_shift([X], [X]):-
	!.

circular_right_shift([X|[Y]], [Y|[X]]):-
	!.

circular_right_shift(L, L1):-
	reverse(L, [Last | L2]),
	reverse(L2, L3),
	L1 = [Last|L3].


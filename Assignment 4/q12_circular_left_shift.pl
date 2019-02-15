/* consult(q5) */

/* circular_left_shift(L, L1). 			*/
/* That is,								*/
/* 	if L= [a, b, c, d, e, f] then		*/
/* 	L1= [b, c, d, e, f, a] 				*/

circular_left_shift([], []):-
	!.
	
circular_left_shift([X], [X]):-
	!.

circular_left_shift([X|[Y]], [Y|[X]]):-
	!.

circular_left_shift([First | Rest], L1):-
	reverse(Rest, L2),
	L3 = [First|L2],
	reverse(L3, L1).


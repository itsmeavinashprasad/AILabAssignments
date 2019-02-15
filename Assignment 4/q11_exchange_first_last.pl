/* consult(q5_reverse_using_acc) */
/* exchange_first_last(L, L1), defines that L1 to be obtained from L with first and last elements exchanged */

exchange_first_last([], []):-
	!.

exchange_first_last([X], [X]):-
	!.
	
exchange_first_last([X|[Y]], [Y|[X]]):-
	!.
	
exchange_first_last( [First | Rest], L1):-
	reverse(Rest, [Last | Rest2]),
	L2 = [First | Rest2],
	reverse(L2, L3),
	L1 = [Last | L3].
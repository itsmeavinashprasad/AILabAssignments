/* To delete two middle elements from an even-numbered list L into a list L1 */


delete_middle_even([],[]):-
	!.

delete_middle_even( [X|[Y]], [] ):-
	!.

delete_middle_even( [First | L], L1):-
	reverse(L,[Last | L2]),
	delete_middle_even(L2, L3),
	L4 = [Last | L3],
	reverse(L4, L5),
	L1 = [First| L5].

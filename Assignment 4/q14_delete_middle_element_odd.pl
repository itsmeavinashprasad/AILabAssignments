/* To delete the middle element from an odd-numbered list L into a list L1 */

delete_middle_odd([],[]):-
	!.

delete_middle_odd([X],[]):-
	!.

delete_middle_odd( [First | L], L1):-
	reverse(L,[Last | L2]),
	delete_middle_odd(L2, L3),
	L4 = [Last | L3],
	reverse(L4, L5),
	L1 = [First| L5].

/* unfold (L, L1) that reverses the elements of (an odd numbered) list L, 		*/
/* from 1 to middle-1 elements and middle+1 to last element and store the		*/
/* result in L1 																*/


unfold([],[]):-
	!.

unfold([X],[X]):-
	!.

unfold(L,L1):-
	unfold2(L, L1, [], Temp).

unfold2([X], [X], L_acc, L_temp):-
	reverse(L_acc, L_temp),
	!.


unfold2([First|Rest], L1, L_acc, L_temp):-
	L_acc_1 = [First|L_acc],
	reverse(Rest, [Last|Rest2]),
	L_acc_2 = [Last|L_acc_1],
	reverse(Rest2, Rest3),
	unfold2(Rest3, L1_1, L_acc_2, [First_temp | [Second_temp|L_temp]]),
	L1_2 = [First_temp|L1_1],
	reverse(L1_2, L1_3),
	L1_4 = [Second_temp|L1_3],
	reverse(L1_4, L1).

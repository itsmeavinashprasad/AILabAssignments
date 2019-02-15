/* To find length of a list using accumulator */

len(L, Result):-
	len_acc(L, 0, Result).

len_acc([], Ac, Ac):-	
	!.

len_acc([Head | Rest], Ac, Result):-
	Ac_1 is Ac+1,
	len_acc(Rest, Ac_1, Result).
/* To reverse a list using accumulator */

reverse(L, L1):-
	reverse_acc(L, [], L1).

reverse_acc([], Ac, Ac):-
	!.
reverse_acc([Head | Rest], Ac, L):-
	reverse_acc(Rest, [Head|Ac], L).
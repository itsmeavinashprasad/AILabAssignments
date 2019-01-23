% sum of all elements
sum([],0).

sum([X | Rest], Sum):-
	sum(Rest, Sum1),
	Sum is X+Sum1.
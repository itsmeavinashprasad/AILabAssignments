inner_product([],[],0):-
	!.

inner_product([X], [Y], Result):-
	Result is X*Y,
	!.

inner_product(L,[],0):-
	!.

inner_product([],L,0):-
	!.

inner_product([First1|Rest1], [First2|Rest2], Result):-
	inner_product(Rest1, Rest2, Result1),
	Result is (First1*First2) + Result1.
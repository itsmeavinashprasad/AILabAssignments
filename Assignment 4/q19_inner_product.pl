/* Suppose that L1 and L2 are lists of numeric values. Find Inner product 	*/
/* (L1, L2, X) that defines X to be inner product of two vectors L1, L2. 	*/


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
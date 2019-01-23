length1([], 0).
length1( [ X | Rest ], s(N) ):-
	length1(Rest, N).

same_length1( List1, List2):-
	length1(List1, M), 
	length1(List2, N),
	M = N.

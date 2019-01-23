% assuming own number system 

length1([], init).
length1( [ X | Rest ], s(N) ):-
	length1(Rest, N).

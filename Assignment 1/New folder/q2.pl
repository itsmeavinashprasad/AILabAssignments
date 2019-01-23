if_len_two(List):-
	len(Len, List),
	write("\nLength is :- "),
	write(Len),
	Len = 2.
	
len(0,[]).
len( L , [H|T]):-
	len(X, T),
	L is (X + 1) .
	

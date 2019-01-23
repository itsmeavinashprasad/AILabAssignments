compare_len_of_lists(List1, List2):-
	len(Len1, List1),
	len(Len2, List2),
	Len1 = Len2.

len(0,[]).
len( L , [H|T]):-
	len(X, T),
	L is (X + 1).
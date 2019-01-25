/* length of a list */

len([],0).

len([X | Rest], Len):-
	len(Rest, Len1),
	Len is Len1+1.
% length of a list

len([],0).

len([X | Rest], Len):-
	len(Rest, Len1),
	Len is Len1+1.

% sum of all elements
sum([],0).

sum([X | Rest], Sum):-
	sum(Rest, Sum1),
	Sum is X+Sum1.

% avg of list
avg(L, Avg):-
	len(L, Len),
	sum(L, Sum),
	Avg is Sum/Len.
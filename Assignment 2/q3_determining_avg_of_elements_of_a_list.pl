/* consult(q2_determining_length_of_a_list) */

/* sum of all elements */
sum([],0).

sum([X | Rest], Sum):-
	sum(Rest, Sum1),
	Sum is X+Sum1.

/* avg of list */
avg([], 0):-
	!.

avg(L, Avg):-
	len(L, Len),
	sum(L, Sum),
	Avg is Sum/Len.
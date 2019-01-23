get_ret_val(X, Retval):-
	X =< 100,
	Retval is 0.
get_ret_val(X, Retval):-
	X > 100,
	Retval is 1.

count_greater([],0).
count_greater([X | Rest], Count):-
	count_greater(Rest, Count1),
	get_ret_val(X, Retval),
	Count is Count1+Retval.
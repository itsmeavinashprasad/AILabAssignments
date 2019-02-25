/* bubble_sort() */

bubble_sort(Unsorted, Sorted):-
	swap(Unsorted, Temp),
	bubble_sort(Temp, Sorted).

bubble_sort(Sorted, Sorted).


swap([X|[Y|Rest]], [Y|[X|Rest]]):-
	X>Y,
	!.

swap([X|Rest], [X|Rest1]):-
		swap(Rest, Rest1).
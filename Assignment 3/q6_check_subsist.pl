/* To determine whether a list is a sub list of another list.  */
/* A list is a sub list of another list if it’s elements are present in another list */
/* consecutively and in the same order. */

subList([], _).

subList([X|A], [X|B]):- 
	my_prefix(A, B), !.

subList([X|A], [Y|B]):- 
	subList([X|A], B).

my_prefix([], _).
my_prefix([X|L], [X|M]):- 
	my_prefix(L, M).
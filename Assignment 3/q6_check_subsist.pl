/* To determine whether a list is a sub list of another list.  */
/* A list is a sub list of another list if it’s elements are present in another list */
/* consecutively and in the same order. */

/* empty list is sublist of all lists */
subList([], _).

/* first match found, then recursively check for others */
subList([X|A], [X|B]):- 
	my_prefix(A, B), !.


/* if first elements are different, then skip till first match found */
subList([X|A], [Y|B]):- 
	subList([X|A], B).


/*  */
subList_2([], _).
subList_2([X|L], [X|M]):- 
	subList_2(L, M).
/* To determine whether a list is a sub list of another list.  */
/* A list is a sub list of another list if it’s elements are present in another list */
/* consecutively and in the same order. */

/* empty list is sublist of all lists */
subList([], _).

/* first match found, then recursively check for others */
subList([X|A], [X|B]):- 
	subList_2(A, B), !.


/* if first elements are different, then skip till first match found */
/* Y is discarded from 2nd list, but X is not discarded from 1st list  */
subList([X|A], [Y|B]):- 
	subList([X|A], B).


/* assumed that already first match has been found, then X must present in 2nd list */
/* untill 1st list becomes empty */
subList_2([], _).
subList_2([X|L], [X|M]):- 
	subList_2(L, M).
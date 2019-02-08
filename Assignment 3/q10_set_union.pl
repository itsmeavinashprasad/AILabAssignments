/* consult(our_member1) */

/* To determine union of two sets */

/* if first set union is 2nd set */
set_union([], L, L):- 
	!.

/* if X is present in both sets, then eliminate X from 1st set */
set_union([X|L1], L2, L3):- 
	our_member1(X, L2), !, 
	set_union(L1, L2, L3).

/* if X is present only in 1st set, then append X in L3 */
set_union([X|L1], L2, [X|L3]):- 
	set_union(L1, L2, L3).
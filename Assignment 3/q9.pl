/* consult(our_member1) */

/* To determine intersection of two sets. */
set_intersection([], L, []):- 
	!.

/* X is a member of first set and 2nd set, then include X in 3rd set */
set_intersection([X|L1], L2, [X|L3]):- 
	our_member1(X, L2), !, 
	set_intersection(L1, L2, L3).

/* X in 1st set, not in 2nd, dont include */
set_intersection([X|L1], L2, L3):- 
	set_intersection(L1, L2, L3).
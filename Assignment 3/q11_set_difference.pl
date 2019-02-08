/* consult(our_member1) */

/* To determine difference of two sets. */

/* if first set is empty, return first set */
set_diff([], L, []):- 
	!.

/* if X present in both sets, then discard X from 1st set */
set_diff([X|L1], L2, L3):- 
	our_member1(X, L2), !, 
	set_diff(L1, L2, L3).

/* if X present only in first set then append X in Result L3 */
set_diff([X|L1], L2, [X|L3]):- 
	set_diff(L1, L2, L3).
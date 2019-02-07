/* consult(our_member1) */
/* consult(set_union) */
/* consult(set_intersection) */
/* consult(set_diff) */
/* To determine symmetric difference of two sets */

symm_diff(L1, L2, L3):- 
	set_union(L1, L2, X), 
	set_intersection(L1, L2, Y), 
	set_diff(X, Y, L3).
/* consult(our_member1) */

/* To determine union of two sets */

set_union([], L, L):- 
	!.

set_union([X|L1], L2, L3):- 
	our_member1(X, L2), !, 
	set_union(L1, L2, L3).

set_union([X|L1], L2, [X|L3]):- 
	set_union(L1, L2, L3).
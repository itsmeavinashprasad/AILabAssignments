/* consult(our_member1) */

/* append */
append([], L, L):- 
	!.

append([H|T], L, [H|R]) :- 
	append(T, L, R).

/* To determine whether a set is a subset of another set. */

/* empty set is sibset of all sets */
subset([], _):- 
	!.

/* if first element is same, then recursively check for others, excluding H */
subset([H|T1], [H|T2]) :- 
	!, 
	subset(T1, T2).

/* if first element is different, then */
/* -> check if H1 is member of 2nd Set */
/* ->  append H2 at the end of T2, to be checked later on */
subset([H1|T1], [H2|T2]) :- 
	our_member1(H1, T2), 
	append(T2, [H2], S), 
	subset([H1|T1], S).

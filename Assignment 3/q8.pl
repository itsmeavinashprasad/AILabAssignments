/* consult(our_member1) */

/* append */
append([], L, L):- 
	!.

append([H|T], L, [H|R]) :- 
	append(T, L, R).

/* To determine whether a set is a subset of another set. */

subset([], _):- 
	!.
subset([H|T1], [H|T2]) :- 
	!, 
	subset(T1, T2).

subset([H1|T1], [H2|T2]) :- 
	our_member1(H1, T2), 
	append(T2, [H2], S), 
	subset([H1|T1], S).

/* consult(q5_reverse_using_acc) */
/* consult(q9_trim_with_first_n_elements_removed) */
/* trimlast(N, L, L1) defines that L1 to be obtained from L with last N elements removed */

trimlast(N, L, L1):-
	reverse(L, L2),
	trim(N, L2, L3),
	reverse(L3, L1).

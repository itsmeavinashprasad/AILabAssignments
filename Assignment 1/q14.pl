append([], L, L).

append([X | Rest], L1, [X | L2]):-
	append(Rest, L1, L2).

reverse([],[]).
reverse([H | T], L):-
	reverse(T, Z),
	append(Z, [H], L).

palindrome(L):-
	reverse(L, L).
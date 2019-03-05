/* template([1/Y1, 2/Y2, 3/Y3, 4/Y4, 5/Y5, 6/Y6, 7/Y7, 8/Y8]). */
template([X1/1, X2/2, X3/3, X4/4, X5/5, X6/6, X7/7, X8/8]).

solution([]).
solution([X/Y|Others]):-
	our_member(X, [1,2,3,4,5,6,7,8]),
	solution(Others),
	no_attack(X/Y, Others).

no_attack(_,[]).
no_attack(X/Y, [X1/Y1|Others]):-
	X=\=X1,
	(X-X1)=\=(Y-Y1),
	(X-X1)=\=(Y1-Y),
	no_attack(X/Y, Others).

our_member(X,[X|Rest]).
our_member(X, [Y|Rest]):-
	our_member(X, Rest).

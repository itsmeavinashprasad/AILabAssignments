% gcd of two elements
min(X,Y,X):-
	X < Y,!.
min(X,Y,Y):-
	X >= Y.

max(X,Y,X):-
	X >= Y,!.
max(X,Y,Y):-
	X < Y.


gcd(X,Y,S):-
	min(X,Y,Min),
	max(X,Y,Max),
	Rem is mod(Max,Min),
	gcd_next(Max,Min,S).

gcd_next(X,Y,S):-
	0 is mod(Max,Min),
	S is Min,!.

gcd_next(X,Y,S):-
	0 > mod(Max,Min),
	gcd(Max-Min, Min, S1),
	S is S1.


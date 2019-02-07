subset([], _):- !.
subset([H|T1], [H|T2]) :- !, subset(T1, T2).
subset([H1|T1], [H2|T2]) :- in_set(H1, T2), append(T2, [H2], S), subset([H1|T1], S).

in_set(X, [X|_]):- !.
in_set(X, [_|T]) :- in_set(X, T).

append([], L, L):- !.
append([H|T], L, [H|R]) :- append(T, L, R).
water_jug(X,Y):-	
	X > 4,
	writeln('Invalid Input!!'),
	!.

water_jug(X,Y):-	
	Y > 3,
	writeln('Invalid Input!!'),
	!.

water_jug(0,0):-
	print_transition(0, 0, 4, 0),
	water_jug(4,0).

water_jug(0,0):-
	print_transition(0, 0, 0, 3),
	water_jug(0, 3).

water_jug(0, 1):-
	print_transition(0,1,4,1),
	water_jug(4,1).

water_jug(0,2):-
	print_transition(0,2,2,0),
	water_jug(2,0).

water_jug(0, 3):-
	print_transition(0, 3, 3, 0),
	water_jug(3, 0).

water_jug(1,0):-	
	print_transition(1, 0, 0, 1),
	water_jug(0, 1).

water_jug(1,1):-	
	print_transition(1, 1, 1, 0),
	water_jug(1, 0).

water_jug(1,2):-
	print_transition(1,2,0,2),
	water_jug(0,2).

water_jug(1,3):-	
	print_transition(1, 3, 1, 0),
	water_jug(1, 0).

water_jug(3, 0):-
	print_transition(3, 0, 3, 3),
	water_jug(3, 3).

water_jug(3, 1):-
	print_transition(3, 1, 3, 0),
	water_jug(3, 0).

water_jug(3,2):-
	print_transition(3,2,0,2),
	water_jug(0,2).

water_jug(3,3):-
	print_transition(3,3,4,2),
	water_jug(4,2).

water_jug(4,0):-
	print_transition(4, 0, 1, 3),
	water_jug(1, 3).

water_jug(4,1):-
	print_transition(4, 1, 2, 3),
	water_jug(2, 3).

water_jug(4,2):-
	print_transition(4, 2, 0, 2),
	water_jug(0, 2).

water_jug(4,3):-
	print_transition(4,3,4,0),
	water_jug(4,0).

water_jug(4,3):-
	print_transition(4,3,0,3),
	water_jug(0,3).

water_jug(2, _):-
	writeln('--> Problem Solved').

print_transition(X1, Y1, X2, Y2):-
	write('('),write(X1),write(','),write(Y1), write(') --> ('), write(X2),write(','), write(Y2), writeln(')').


% 0 0 -> 4 0 -> 1 3 -> 1 0 -> 0 1 -> 4 1 -> 2 3
% 0 0 -> 0 3 -> 3 0 -> 3 3 -> 4 2 -> 0 2 -> 2 0


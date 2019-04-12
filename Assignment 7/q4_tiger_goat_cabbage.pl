/* state(Man , Tiger, Goat, Cabbage) */

/* checks whether the reached state is safe or not */
unsafe( state(M,T,G,C)):-
	M \= T , T = G
	;
	M \= G , G = C.

/* ============================= NEW POSITION AFTER CROSSING ================================ */
position_after_crossing(right,left).
position_after_crossing(left,right).

/* ============================= MOVEMENTS ================================ */

/* man travels with tiger */
move( state(M,T,G,C) , state(M2,T2,G,C), 'Man Travels with Tiger ' ):-
	M=T,
	position_after_crossing(M,M2),
	position_after_crossing(T,T2).

/* man travels with goat */
move( state(M,T,G,C) , state(M2,T,G2,C), 'Man Travels with Goat   '):-
	M=G,
	position_after_crossing(M,M2),
	position_after_crossing(G,G2).

/* man travels with cabbage */
move( state(M,T,G,C) , state(M2,T,G,C2), 'Man Travels with Cabbage' ):-
	M=C,
	position_after_crossing(M,M2),
	position_after_crossing(C,C2).

/* man travels alone */
move( state(M,T,G,C) , state(M2,T,G,C), 'Man Travels Alone        ' ):-
	position_after_crossing(M,M2).


/* ============================= TRACE PATH ================================ */
path( state(M,T,G,C), state(M,T,G,C), _, [] ):-
	true.

path( state(M,T,G,C), state(M2,T2,G2,C2), States_visited, [S | Movements] ):-
	move( state(M,T,G,C), state(M3,T3,G3,C3), Current_Move ),
	not( unsafe( state(M3,T3,G3,C3) ) ),
	not( member( state(M3,T3,G3,C3), States_visited ) ),
	string_concat(Current_Move, ': \t\t', S1),
	display_state( M3,T3,G3,C3, S2 ),
	string_concat(S1,S2,S),
	path( 	state(M3,T3,G3,C3),
			state(M2,T2,G2,C2),
			[ state(M3,T3,G3,C3) | States_visited],
			Movements
		 ).


/* ============================= DISPLAY STATE ================================ */
display_state(left,left,left,left, 		'(Man, Tiger, Goat, Cabbage) <~\\__/~~~~~~~~~~~~~~~~~~~> ()').
display_state(left,left,left,right, 	'(Man, Tiger, Goat)          <~\\__/~~~~~~~~~~~~~~~~~~~> (Cabbage)').
display_state(left,left,right,left, 	'(Man, Tiger, Cabbage)       <~\\__/~~~~~~~~~~~~~~~~~~~> (Goat)').
display_state(left,left,right,right, 	'(Man, Tiger)                <~\\__/~~~~~~~~~~~~~~~~~~~> (Goat, Cabbage)').
display_state(left,right,left,left, 	'(Man, Goat, Cabbage)        <~\\__/~~~~~~~~~~~~~~~~~~~> (Tiger)').
display_state(left,right,left,right, 	'(Man, Goat)                 <~\\__/~~~~~~~~~~~~~~~~~~~> (Tiger, Cabbage)').
display_state(left,right,right,left, 	'(Man, Cabbage)              <~\\__/~~~~~~~~~~~~~~~~~~~> (Tiger, Goat)').
display_state(left,right,right,right, 	'(Man)                       <~\\__/~~~~~~~~~~~~~~~~~~~> (Tiger, Goat, Cabbage)').

display_state(right,left,left,left, 	'(Tiger, Goat, Cabbage)      <~~~~~~~~~~~~~~~~~~~\\__/~> (Man, )').
display_state(right,left,left,right, 	'(Tiger, Goat)               <~~~~~~~~~~~~~~~~~~~\\__/~> (Man, Cabbage)').
display_state(right,left,right,left, 	'(Tiger, Cabbage)            <~~~~~~~~~~~~~~~~~~~\\__/~> (Man, Goat)').
display_state(right,left,right,right, 	'(Tiger)                     <~~~~~~~~~~~~~~~~~~~\\__/~> (Man, Goat, Cabbage)').
display_state(right,right,left,left, 	'(Goat, Cabbage)             <~~~~~~~~~~~~~~~~~~~\\__/~> (Man, Tiger)').
display_state(right,right,left,right, 	'(Goat)                      <~~~~~~~~~~~~~~~~~~~\\__/~> (Man, Tiger, Cabbage)').
display_state(right,right,right,left, 	'(Cabbage)                   <~~~~~~~~~~~~~~~~~~~\\__/~> (Man, Tiger, Goat)').
display_state(right,right,right,right, 	'()                          <~~~~~~~~~~~~~~~~~~~\\__/~> (Man, Tiger, Goat, Cabbage)').


/* ============================= PRINT PATH ================================ */
print_path([]):-
	writeln('').
print_path([ Head | Rest]):-
	writeln(Head),
	print_path(Rest).

/* ============================= FIND SOLUTION ================================ */
tiger_goat_cabbage( ):-
	path( state(left,left,left,left), state(right,right,right,right), [], Movements ),
	print_path(Movements).


/* state(Missionaries on Left, Cannibals on Left, Position of Boat, Missionaries on Right, Cannibals on Right) 	*/
/* Initial State: 	state(3,3,left,0,0) 			*/
/* Goal State:		state(0,0,right,3,3) 			*/
legal_state( state(ML, CL, Boat, MR, CR) ):-
	ML >= 0, CL >= 0, MR >= 0, CR >= 0,
	(ML	>= CL 	; ML = 0	),
	(MR	>= CR 	; MR = 0	). 

/*====================== MOVEMENTS : LEFT --> RIGHT ==========================*/

/* L->R: 2 Missionaries */
move( state(ML, CL, left, MR, CR), state(ML2, CL, right, MR2, CR), 'L->R: 2 Missionaries'):-
	ML2 is ML-2,	MR2 is MR+2.
	
/* L->R: 2 Cannibals */
move( state(ML, CL, left, MR, CR), state(ML, CL2, right, MR, CR2), 'L->R: 2 Cannibals'):- 
	CL2 is CL-2,	CR2 is CR+2.

/* L->R: 1 Missionary */
move( state(ML, CL, left, MR, CR), state(ML2, CL, right, MR2, CR), 'L->R: 1 Missionary'):- 
	ML2 is ML-1,	MR2 is MR+1.

/* L->R: 1 Cannibal */
move( state(ML, CL, left, MR, CR), state(ML, CL2, right, MR, CR2), 'L->R: 1 Cannibal'):- 
	CL2 is CL-1,	CR2 is CR+1.
	
/* L->R: 1 Missionary, 1 Cannibal */
move( state(ML, CL, left, MR, CR), state(ML2, CL2, right, MR2, CR2), 'L->R: 1 of both'):- 
	ML2 is ML-1,	MR2 is MR+1,
	CL2 is CL-1,	CR2 is CR+1.

/*====================== MOVEMENTS : RIGHT --> LEFT ==========================*/

/* R->L: 2 Missionaries */
move( state(ML, CL, right, MR, CR), state(ML2, CL, left, MR2, CR), 'R->L: 2 Missionaries '):- 
	ML2 is ML+2,	MR2 is MR-2.

/* R->L: 2 Cannibals */
move( state(ML, CL, right, MR, CR), state(ML, CL2, left, MR, CR2), 'R->L: 2 Cannibals'):- 
	CL2 is CL+2,	CR2 is CR-2.

/* R->L: 1 Missionary */
move( state(ML, CL, right, MR, CR), state(ML2, CL, left, MR2, CR), 'R->L: 1 Missionary'):- 
	ML2 is ML+1,	MR2 is MR-1.

/* R->L: 1 Cannibal */
move( state(ML, CL, right, MR, CR), state(ML, CL2, left, MR, CR2), 'R->L: 1 Cannibal'):- 
	CL2 is CL+1,	CR2 is CR-1.

/* R->L: 1 Missionary, 1 Cannibal */
move( state(ML, CL, right, MR, CR), state(ML2, CL2, left, MR2, CR2), 'R->L: 1 of both'):- 
	ML2 is ML+1,	MR2 is MR-1,
	CL2 is CL+1,	CR2 is CR-1.


/* ============================================================================ */
/* path(Starting_State, Final_State, States_Vistied, Solution_Path) */

path( state(ML, CL, B, MR, CR), state(ML, CL, B, MR, CR), _, [] ):-
	true.

path( state(ML, CL, B, MR, CR), state(ML3, CL3, B3, MR3, CR3), States_Vistied, [S|Movements] ):-
	move( state(ML, CL, B, MR, CR), state(ML2, CL2, B2, MR2, CR2), Current_Move ),
	legal_state( state(ML2, CL2, B2, MR2, CR2) ),
	not( member( state(ML2, CL2, B2, MR2, CR2), States_Vistied ) ),
	string_concat(Current_Move, ': \t', S1),
	display_state(ML2,CL2,MR2,CR2,B2,S2),
	string_concat(S1, S2, S),
	path( 	state(ML2, CL2, B2, MR2, CR2), 
			state(ML3, CL3, B3, MR3, CR3), 
			[state(ML2, CL2, B2, MR2, CR2) | States_Vistied],
			Movements
		).

display_state( ML, CL, MR, CR, B, S8):-
	B = left,
	string_concat('(', ML, S1),
	string_concat(S1,',',S2),
	string_concat(S2, CL, S3),
	string_concat(S3, ') <~\\__/~~~~~~~~~~~~~~~~~~~> (',S4),
	string_concat(S4, MR, S5),
	string_concat(S5, ',', S6),
	string_concat(S6, CR, S7),
	string_concat(S7, ') \n',S8)
	;
	B = right,
	string_concat('(', ML, S1),
	string_concat(S1,',',S2),
	string_concat(S2, CL, S3),
	string_concat(S3, ') <~~~~~~~~~~~~~~~~~~~\\__/~> (',S4),
	string_concat(S4, MR, S5),
	string_concat(S5, ',', S6),
	string_concat(S6, CR, S7),
	string_concat(S7, ') \n',S8).


missionary_cannibal():-
	writeln('Initial State: \t\t(0,0) <~\\__/~~~~~~~~~~~~~~~~~~~> (0,0)'),
	path( state(3,3,left,0,0), state(0,0,right,3,3), [state(3,3,left,0,0)], Movements),
	print_path(Movements).

print_path([]):-
	writeln('').
print_path([ Head | Rest]):-
	write(Head),
	print_path(Rest).
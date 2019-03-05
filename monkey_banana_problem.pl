move(state(middle, on_box, middle, has_not),
	grasp,
	state(middle, on_box, middle, has)).

move(state(P, on_floor, P, H),
	climb,
	state(P, on_box, P, H)).

move(state(P1, on_floor, P1, H),
	push(P1, P2),
	state(P2, on_floor, P2, H)).

move(state(P1, on_floor, P, H),
	walk(P1, P2),
	state(P2, on_floor, P, H)).

canget(state(_, _, _, has)).
canget(OldState) :-
		move(OldState, Move, NewState),
		canget(NewState).
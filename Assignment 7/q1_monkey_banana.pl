/* state(MR, MB, PB, B)             */
/* MR:  Monkey's position with respect to room  */
/*    at_door, middle, at_window        */

/* MB:  Monkey's position wiith respect to box  */
/*    on_floor, on_box            */

/* PB: Position of box with respect to room   */
/*    at_door, at_window, middle        */

/* B:   Does Monkey has the banana or not     */
/*    has, has_not              */    

/* activities: grasp, climb, push, walk     */

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
    canget(NewState),
    write(OldState),
    write('-- '),
    write(Move),
    write(" --> "),
    writeln(NewState).

/* canget(state(at_door, on_floor, at_window, has_not)) */

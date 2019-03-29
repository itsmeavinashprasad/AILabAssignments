heap_sort(Unsorted, Sorted):-
    make_bt(Unsorted, BT),
    write("==> BT: "),
    writeln(BT),
    heapify(BT, Heapbt),
    write("==> Heap: "),
    writeln(Heapbt),
    remove_root(Heapbt, Sorted).

make_bt([],nil).
make_bt([Root|Unsorted], bt(Leftbt, Root, Rightbt)):-
    divide(Unsorted, Left, Right),
    make_bt(Left, Leftbt),
    make_bt(Right, Rightbt).

divide([], [], []):-
    !.
divide([X],[X],[]):-
    !.
divide([X|[Y|Rest]],[X|Left],[Y|Right]):-
    divide(Rest, Left, Right).  

heapify(nil, nil).
heapify(bt(Leftbt, Root, Rightbt), Heapbt):-
    heapify(Leftbt, LeftHeap),
    heapify(Rightbt, RightHeap),
    adjust(Root, LeftHeap, RightHeap, Heapbt).

/* both left and right sub heap are grater than root */
adjust(Root, LeftHeap, RightHeap, bt(LeftHeap, Root, RightHeap) ):- 
    heap_greater_than_root(Root, LeftHeap),
    heap_greater_than_root(Root, RightHeap),
    !.

/* left sub heap is lesser than root */
adjust(Root, bt(Left, LRoot, Right), RightHeap, bt(LeftHeap, LRoot, RightHeap) ):-  
    LRoot < Root,
    !,
    heap_greater_than_root(LRoot, RightHeap),
    adjust(Root, Left, Right, LeftHeap).

/* right sub heap is lesser than root */
adjust(Root, LeftHeap, bt(Left, RRoot, Right), bt(LeftHeap, RRoot, RightHeap) ):-   
    RRoot < Root,
    !,
    heap_greater_than_root(RRoot, LeftHeap),
    adjust(Root, Left, Right, RightHeap).

    

adjust(Root, LeftHeap, RightHeap, bt(LeftHeap, Root, RightHeap)).


heap_greater_than_root(Root, nil).
heap_greater_than_root(Root, bt(Left, Root1, Right)):-
    Root < Root1.

    
remove_root(bt(nil, Root, nil), [Root]).
remove_root(bt(LeftHeap, Root, RightHeap), [Root|Sorted] ):-
    write("-> removing :"),
    writeln(Root),
    reheapify(LeftHeap, RightHeap, Heapbt),
    write("-> Heap After Removing :"),
    writeln(Heapbt),
    remove_root(Heapbt, Sorted).


reheapify(nil,nil, nil).
reheapify(LeftHeap,nil, LeftHeap).
reheapify(nil, RightHeap, RightHeap).
reheapify(bt(LLeft, LRoot, LRight), bt(RLeft, RRoot, RRight), bt(Left, LRoot, bt(RLeft, RRoot, RRight))):-
    LRoot < RRoot,
    !,
    reheapify(LLeft, LRight, Left).
reheapify(bt(LLeft, LRoot, LRight), bt(RLeft, RRoot, RRight), bt(bt(LLeft, LRoot, LRight), RRoot, Right)):-
    reheapify(RLeft, RRight, Right).






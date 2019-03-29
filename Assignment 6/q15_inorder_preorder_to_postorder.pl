% slice inorder items as Left_inorder and Right_inorder keeping Root in the middle
divide_inorder([Root|Rest], Root, [], Rest):-
	!.
divide_inorder([X|Rest], Root, [X|Left_inorder], Right_inorder):-
	divide_inorder(Rest, Root, Left_inorder, Right_inorder).


% slice preorder items as Left_preorder and Right_preorder 
divide_preorder(L, 0, [], L):-
	!.
divide_preorder([X|Rest], N, [X|Left_preorder], Right_preorder):-
	N1 is N-1,
	divide_preorder(Rest, N1, Left_preorder, Right_preorder).



inorder_preorder_to_postorder([],[],[]):-
	!.
inorder_preorder_to_postorder(Inorder, [Root|Rest_preorder], Postorder):-				% derive root
	divide_inorder(Inorder, Root, Left_inorder, Right_inorder),							% divide inorder
	length(Left_inorder, N),															% derive length of left inorder items
	divide_preorder(Rest_preorder, N, Left_preorder, Right_preorder),					% slice first n elements of preorder
	inorder_preorder_to_postorder(Left_inorder, Left_preorder, Left_postorder),			% derive Left_postorder
	inorder_preorder_to_postorder(Right_inorder, Right_preorder, Right_postorder),		% derive Right_postorder
	append(Left_postorder, Right_postorder, Temp),
	append(Temp, [Root], Postorder).													% join Left, Right, Root
get_root_from_postorder([X], X, []):-
	!.
get_root_from_postorder([X|Rest], Root, [X|Rest1]):-
	get_root_from_postorder(Rest, Root, Rest1).


% slice inorder items as Left_inorder and Right_inorder keeping Root in the middle
divide_inorder([Root|Rest], Root, [], Rest):-
	!.
divide_inorder([X|Rest], Root, [X|Left_inorder], Right_inorder):-
	divide_inorder(Rest, Root, Left_inorder, Right_inorder).

% slice preorder items as Left_postorder and Right_postorder 
divide_postorder(L, 0, [], L):-
	!.
divide_postorder([X|Rest], N, [X|Left_postorder], Right_postorder):-
	N1 is N-1,
	divide_postorder(Rest, N1, Left_postorder, Right_postorder).

inorder_postorder_to_preorder([],[],[]).
inorder_postorder_to_preorder(Inorder, Postorder, Preorder):-
	get_root_from_postorder(Postorder, Root, Rest_postorder),						% derive root from Postorder(last element)
	divide_inorder(Inorder, Root, Left_inorder, Right_inorder),						% divide inorder
	length(Left_inorder, N),														% derive length of left inorder items
	divide_postorder(Rest_postorder, N, Left_postorder, Right_postorder),			% slice first n elements of preorder
	inorder_postorder_to_preorder(Left_inorder, Left_postorder, Left_preorder),		% derive Left_preorder
	inorder_postorder_to_preorder(Right_inorder, Right_postorder, Right_preorder),	% derive Right_preorder
	append([Root|Left_preorder], Right_preorder, Preorder).							% join Root, Left, Right
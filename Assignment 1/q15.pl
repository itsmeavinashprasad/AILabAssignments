double([], []).

double( [X | Others], [X | [X | Result] ]):-
	double(Others, Result).

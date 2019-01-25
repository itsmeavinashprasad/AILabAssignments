/* To subtract two integers recursively */

rec_sub(N1, 0, N1):-
	!.

rec_sub(N1, N2, Result):-
	N2_1 is N2-1,
	rec_sub(N1, N2_1, Result_1),
	Result is Result_1-1.

/* To divide two integers recursively and get the quotient */
rec_div(Dividend, Divisor, Result):-
	Divisor > Dividend,
	Result is 0,!.

rec_div(Dividend, Divisor, Result):-
	Dividend >= Divisor,
	rec_sub(Dividend, Divisor, Dividend_1),
	rec_div(Dividend_1, Divisor, Result_1),
	Result is Result_1+1.
	

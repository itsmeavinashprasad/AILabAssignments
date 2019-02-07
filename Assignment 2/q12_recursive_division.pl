/* consult(rec_sub)*/

/* To divide two integers recursively and get the quotient */

/* when Divisor is 0, print message */
rec_div(Dividend, 0, Result, Remainder):-
	write("Can not divide by 0 \n"),
	!.

/* when dividend<0, divisor>0 */
rec_div(Dividend, Divisor, Result, Remainder):-
	Dividend < 0,
	Divisor > 0,
	Dividend_1 is -Dividend,
	rec_div(Dividend_1, Divisor, Result_1, Remainder_1),
	Result is -Result_1,
	Remainder is -Remainder_1,
	!.

/* when dividend>0, divisor<0 */
rec_div(Dividend, Divisor, Result, Remainder):-
	Dividend > 0,
	Divisor < 0,
	Divisor_1 is -Divisor,
	rec_div(Dividend, Divisor_1, Result_1, Remainder),
	Result is -Result_1,
	!.

/* when dividend<0, divisor<0 */
rec_div(Dividend, Divisor, Result, Remainder):-
	Dividend < 0,
	Divisor < 0,
	Divisor_1 is -Divisor,
	Dividend_1 is -Dividend,
	rec_div(Dividend_1, Divisor_1, Result, Remainder),
	!.

/* recursion break */
rec_div(Dividend, Divisor, Result, Remainder):-
	Divisor > Dividend,
	Result is 0,
	Remainder is Dividend,
	!.

/* when divisor and dividend both positive */
rec_div(Dividend, Divisor, Result, Remainder):-
	Dividend >= 0,
	Divisor >= 0,
	Dividend >= Divisor,
	rec_sub(Dividend, Divisor, Dividend_1),
	rec_div(Dividend_1, Divisor, Result_1, Remainder),
	Result is Result_1+1.
	

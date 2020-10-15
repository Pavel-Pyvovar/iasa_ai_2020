count(S,E) :-
	write(S), nl,
	not(S = E),
	New_number is S + 1,
	count(New_number,E),
	write("This added call makes this clause non-tail recursive!").  	
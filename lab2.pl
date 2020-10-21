product(Term, Product, R2) :-
    R2 is Term * Product.

process(end_of_file, Product, R) :- R is Product, !.

process(Term, Product, R1) :-
    product(Term, Product, R2),
    processfile(R2, R),
    R1 is R.

processfile(Product, R) :-
    read(Term),
    process(Term, Product, R).

run(Input, Output) :-
    see(Input),
    read(Term),
    Product is Term,
    processfile(Product, R),
    seen,
    see(user),
    tell(Output),
    write(R),
    told,
    tell(user).

main :- 
    writeln("Input file "),
    read(Input),
    writeln("Output file "),
    read(Output),
    run(Input, Output).









    

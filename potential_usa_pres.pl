/* This program define predicate potential_USA_president */

% Note that SWI Prolog does not need domains, predicates and goal sections.
% It only requires clauses to be defined.

% CLAUSES

potential_USA_president(N) :-
    citizen(N),
    age(N, X),
    X > 40,
    % Note that SWI Prolog can write only one item at a time.
    write(N), nl,
    write("Can be the president").

potential_USA_president(N) :- 
    write(N), nl,
    write("Can not be the president").

citizen(trump).
citizen(biden).
age(trump, 74).
age(biden, 77).
age(pyvovar, 20).



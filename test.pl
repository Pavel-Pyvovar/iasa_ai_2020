print_all_pairs([]).

print_all_pairs([(X, Y)|T]) :-
    write('Property '), write(X), write(' has a value of '), write(Y), nl,
    print_all_pairs(T).

first([(X, _)|_], X).
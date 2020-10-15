potential_student(Name) :-
    math_score(Name, X),
    X > 190,
    lang_score(Name, Y),
    Y > 195,
    physics_score(Name, Z),
    Z > 185,
    age(Name, A),
    A > 17,
    write(Name), nl,
    write("Can enter university").

potential_student(Name) :-
    write(Name), nl,
    write("Can not be a university student").

math_score(andrew, 185).
math_score(alex, 200).

lang_score(andrew, 195).
lang_score(alex, 200).

physics_score(andrew, 175).
physics_score(alex, 200).

age(andrew, 17).
age(alex, 18).




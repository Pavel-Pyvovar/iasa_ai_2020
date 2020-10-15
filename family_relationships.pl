male(alan).
male(charles).
male(bob).
male(ivan).
female(beverly).
female(fay).
female(marilyn).
female(sally).
mother(marilyn, beverly).
mother(alan, sally).

father(alan, bob).
father(beverly, charles).
father(fay, bob).
father(marilyn, alan).

parent(X, Y) :- mother(X, Y).
parent(X, Y) :- father(X, Y).

% The brother of X is Y
brother(X, Y) :- 
    male(Y),
    parent(X, P),
    parent(Y, P).
    % X <> Y.

% The sister of X is Y
sister(X, Y) :- 
    female(Y),
    parent(X, P),
    parent(Y, P).

% The uncle of X is Y
uncle(X, U) :- 
    male(U),
    mother(X, P),
    brother(P, U)
    ;
    male(U),
    father(X, P),
    brother(P, U).

% G is a grandfather of X
grandfather(X, G) :-
    male(G),
    father(M, G),
    mother(X, M)
    ;
    male(G),
    father(D, G),
    father(X, D).
    







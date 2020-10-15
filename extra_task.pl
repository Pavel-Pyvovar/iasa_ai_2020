    % 26) Родич по однiй з лiнiй (3-4 колiна)

    female(sarah_armstrong_janes).
    female(catherin_middleton).
    female(rachel_meghan).
    female(sophie_rhys_janes).
    female(diana_spancer).
    female(margaret_windsor).
    female(elizabeth_ii_windsor).

    male(arthur_chatto).
    male(david_armstrong_janes).
    male(james_windsor).
    male(william_windsor).
    male(harry_windsor).
    male(charles_windsor).
    male(edward_windsor).
    male(philip_mountbatten).
    male(george_vi_windsor).

    father(margaret_windsor, george_vi_windsor).

    father(elizabeth_ii_windsor, george_vi_windsor).

    % Harry Windsor is the father of William Windsor.
    father(william_windsor, harry_windsor).

    % Charles Windsor is the father of Harry Windsor.
    father(harry_windsor, charles_windsor).

    % Philip Mountbatten is the father of Charles Windsor.
    father(charles_windsor, philip_mountbatten).

    father(sarah_armstrong_janes, david_armstrong_janes).

    % Rachel Meghan is the mother of William Windsor.
    mother(william_windsor, rachel_meghan).

    % Diana Spancer is the mother of Harry Windsor.
    mother(harry_windsor, diana_spancer).

    % Elizabeth the Second is the mother of Charles Windsor.
    mother(charles_windsor, elizabeth_ii_windsor).

    % Sophie Rhys Janes is the mother of James Windsor.
    mother(james_windsor, sophie_rhys_janes).

    % Elizabeth the Second is the mother of Edward Windsor.
    mother(elizabeth_ii_windsor, edward_windsor).

    mother(arthur_chatto, sarah_armstrong_janes).

    mother(david_armstrong_janes, margaret_windsor).

    parent(X, Y) :- mother(X, Y); father(X, Y).

    grandfather(X, Y) :-
        male(Y),
        parent(X, P),
        father(P, Y).

    grandmother(X, Y) :-
        female(Y),
        parent(X, P),
        mother(P, Y).

    greatgrandfather(X, Y) :-
        male(Y),
        parent(X, P),
        parent(P, GP),
        parent(GP, Y).

    greatgrandmother(X, Y) :-
        female(Y),
        parent(X, P),
        parent(P, GP),
        parent(GP, Y).

    greatgrandparent(X, Y) :-
        greatgrandmother(X, Y)
        ;
        greatgrandfather(X, Y).

    third_degree_relative(X, Y) :-
        parent(GGPX, Z),
        greatgrandparent(X, GGPX),
        parent(GGPY, Z),
        greatgrandparent(Y, GGPY).











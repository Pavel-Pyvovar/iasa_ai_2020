get_key((Key, _), Key).

insert(I, -, t(-, I, -)).

insert(I, t(L, X, R), t(P, Y, Q)) :-
    % I -- item to be inserted, (key, value) pair.
    % t(L, X, R) -- current state of the tree
    %   L -- left subtree 
    %   X -- root of the tree
    %   R -- right subtree
    % t(P, Y, Q) -- updated tree with item I inserted.
    (
        get_key(I, IK),
        get_key(X, XK),
        IK < XK
        % If the item's I key is smaller than of the root value,
        % then insert it into the left subtree.
    ->  insert(I, L, U),
        (P, Y, Q) = (U, X, R)
    ;   
        get_key(I, IK),
        get_key(X, XK),
        IK > XK
        % Otherwise, insert into right subtree.
    ->  insert(I, R, U),
        (P, Y, Q) = (L, X, U)
    ;   
        % Already in, nothing to do.
        (P, Y, Q) = (L, X, R)  
    ).

inl([N|Ns], T0, T) :-
    insert(N, T0, T1),
    inl(Ns, T1, T).
inl([], T, T).

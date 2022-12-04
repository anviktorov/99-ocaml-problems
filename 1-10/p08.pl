compress([], _).
compress([X], [X | []]).
compress([X1, X2 | XS], R) :-
    X1 = X2, compress([X2 | XS], R), !.
compress([X1, X2 | XS], [X1 | R]) :-
    X1 \= X2, compress([X2 | XS], R), !.

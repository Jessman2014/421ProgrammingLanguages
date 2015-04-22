starts([], _).
starts([X|L1], [X|L2]) :- starts(L1, L2).
ends(X, X).
ends(L1, [_|L2]) :- ends(L1, L2).
max([M], M).
max([X, Y|L], M) :- X =< Y, max([Y|L], M).
max([X, Y|L], M) :- X > Y, max([X|L], M).
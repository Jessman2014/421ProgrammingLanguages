path(a, a, []).
path(a, b, [a]).
path(b, c, [b]).

path(A, A, []).
path(A, B, [H|T]) :- not(member(A, T)), not(member(B, T)), not(member(H, T)), path(A, H, T).
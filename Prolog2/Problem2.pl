edge(a, b).
edge(b, c).
edge(c, d).
edge(b, e).
edge(e, f).
edge(f, g).
edge(g, b).

path(A, Z, Path) :- search(A, Z, [], P), reverse(P, Path).
search(Z, Z, V, [Z|V]).
search(A, Z, V, P) :- edge(A, Z), search(Z, Z, [A|V], P).
search(A, Z, V, P) :- A \= Z, edge(A,B), B\=Z, unique([A|V],B), search(B, Z, [A|V], P).
unique([], _).
unique([A|_], A) :- !, fail.
unique([_|L], A) :- unique(L, A).
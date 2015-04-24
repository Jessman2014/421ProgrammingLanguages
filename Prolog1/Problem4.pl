share(L, U) :- member(X, L), member(X, U).
undup(L, [H, J|T]) :- H \= J, member(H, L), undup(L, [J|T]).

sortedUnion(L1,_,U) :- undup(L1, U).
sortedUnion(_,L2,U) :- undup(L2, U).
sortedIntersection(L1, L2, U) :- append(L1, L2, Z), undup(Z, U).
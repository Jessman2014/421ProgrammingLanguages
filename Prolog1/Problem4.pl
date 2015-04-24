undup([], []).
undup([X], [X]).
undup([H, J|T], [K, L|S]) :- H = K, K \= L, H = J, undup([J|T], [K, L|S]).
undup([H, J|T], [K, L|S]) :- H = K, K \= L, H \= J, undup([J|T], [L|S]).
undup([H, J|T], [X]) :- H = J, H = X, undup([J|T], [X]).

sortedUnion(L1,_,U) :- undup(L1, U).
sortedUnion(_,L2,U) :- undup(L2, U).
sortedIntersection(L1, L2, U) :- append(L1, L2, Z), undup(Z, U).
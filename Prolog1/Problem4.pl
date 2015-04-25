remv(_, [], []).
remv(X, [X|T], T1) :- remv(X, T, T1).
remv(X, [H|T], [H|T1]) :- X \= H, remv(X, T, T1).
undup([], []).
undup(L, [H|T]) :- member(H, L), remv(H, L, Z), undup(Z, T).

sortedUnion(L1,_,U) :- undup(L1, U).
sortedUnion(_,L2,U) :- undup(L2, U).
sortedIntersection(L1, L2, U) :- append(L1, L2, Y), undup(Y, U).
sortedDiff(L1, [], L1).
sortedDiff(L1, [H|L2], U) :- undup(L1, W), remv(H, W, Z), sortedDiff(Z, L2, U).
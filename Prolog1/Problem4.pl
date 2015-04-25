remv(_, [], []).
remv(X, [X|T], T1) :- remv(X, T, T1).
remv(X, [H|T], [H|T1]) :- X \= H, remv(X, T, T1).
undup([], []).
undup([H|L], [H|U]) :- remv(H, L, Z), undup(Z, U).

sortedUnion([], L2, U) :- undup(L2, U).
sortedUnion(L1, [], U) :- undup(L1, U).
sortedUnion([X|L1], [X|L2], [X|U]) :- remv(X, L1, Y), remv(X, L2, Z), sortedUnion(Y, Z, U).
sortedUnion([X|L1], [Y|L2], [X|U]) :- X < Y, remv(X, L1, Z), sortedUnion(Z, [Y|L2], U).
sortedUnion([X|L1], [Y|L2], [Y|U]) :- X > Y, remv(Y, L2, Z), sortedUnion([X|L1], Z, U).
sortedIntersection([], _, []).
sortedIntersection(_, [], []).
sortedIntersection([X|L1], [X|L2], [X|U]) :- remv(X, L1, Y), remv(X, L2, Z), sortedIntersection(Y, Z, U).
sortedIntersection([X|L1], [Y|L2], U) :- X < Y, sortedIntersection(L1, [Y|L2], U).
sortedIntersection([X|L1], [Y|L2], U) :- X > Y, sortedIntersection([X|L1], L2, U).
sortedDiff([], _, []).
sortedDiff(L1, [], U) :- L1 \= [], undup(L1, U).
sortedDiff([X|L1], [X|L2], U) :- remv(X, L1, Y), remv(X, L2, Z), sortedDiff(Y, Z, U).
sortedDiff([X|L1], [Y|L2], [X|U]) :- X < Y, remv(X, L1, Z), sortedDiff(Z, [Y|L2], U).
sortedDiff([X|L1], [Y|L2], U) :- X > Y, sortedDiff([X|L1], L2, U).
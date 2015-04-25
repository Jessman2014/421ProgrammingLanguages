hailstone(X, [X], 1).
hailstone(X,[X|S], N) :- 0 is X mod 2, X1 is X / 2, N > 0, X > 0, N1 is N - 1, hailstone(X1,S, N1).
hailstone(X,[X|S], N) :- 1 is X mod 2, X1 is (3 * X) + 1, N > 0, X > 0, N1 is N - 1, hailstone(X1, S, N1).
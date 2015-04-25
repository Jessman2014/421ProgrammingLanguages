hailstone(_, [_], 1).
hailstone(X, [H|T], N) :- 

hailstone(1,[1]) :- !.
hailstone(N,[N|S]) :- 0 is N mod 2, N1 is N / 2, hailstone(N1,S).
hailstone(N,[N|S]) :- 1 is N mod 2, N1 is (3 * N) + 1, hailstone(N1, S).
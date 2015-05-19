crossing([toRight(_, _), toLeft(_), toRight(_, _), toLeft(_), toRight(_, _)]).
people([tom, elliot, vic, bill]).
toLeft(tom).
toLeft(elliot).
toRight(elliot, bill).
toRight(X, Y) :- X \= Y.

paddle(X, toLeft(X)).
paddle(X, toRight(X, _)).

%elliotPaddle(X, toLeft(X)).
%elliotPaddle(X, toRight(X, bill)).

passenger(X, toRight(_, X)).

paddledTwice(A) :- crossing(Crossings),
	people(People),
	member(A, People),
	member(B, People),
	member(C, People),
	member(D, People),
	member(E, Crossings),
	member(F, Crossings),
	member(G, Crossings),
	member(H, Crossings),
	member(I, Crossings),
	paddle(A, E),
	paddle(A, F),
	paddle(B, G),
	paddle(C, H),
	paddle(D, I),
	E \= F, E \= G, E \= H, E \= I,
	F \= G, F \= H, F \= I,
	G \= H, G \= I,
	H \= I,
	A \= B,	A \= C, A \= D, 
	B \= C,	B \= D,
	C \= D,
	member(A1, People),
	member(B1, People),
	member(C1, People),
	member(A2, Crossings),
	member(A2, Crossings),
	member(C2, Crossings),
	A2 \= B2, A2 \= C2, B2 \= C2,
	passenger(A1, A2),
	passenger(B1, B2),
	passenger(C1, C2),
	print(Crossings).
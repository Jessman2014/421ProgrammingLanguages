crossing([toRight(_, _), toLeft(_), toRight(_, _), toLeft(_), toRight(_, _)]).
people([tom, elliot, vic, bill]).

paddle(X, toLeft(X)).
paddle(X, toRight(X, Y)).
elliotPaddle(X, toLeft(X)).
elliotPaddle(X, toRight(X, bill)).

passenger(X, toRight(Y, X)).
paddledOrPass(X, toRight(X, Y)).
paddledOrPass(X, toRight(Y, X)).
paddledLeft(X, toLeft(X)).
notSamePerson(toRight(X, Y)) :- X \= Y.

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
	member(J, Crossings),
	elliotPaddle(elliot, J),
	member(toLeft(tom), Crossings),
	member(A1, People),
	member(B1, People),
	member(C1, People),
	member(A2, Crossings),
	member(B2, Crossings),
	member(C2, Crossings),
	A2 \= B2, A2 \= C2, B2 \= C2,
	notSamePerson(A2),
	notSamePerson(B2),
	notSamePerson(C2),
	passenger(A1, A2),
	passenger(B1, B2),
	passenger(C1, C2),
	member(D2, Crossings),
	member(E2, Crossings),
	A2 \= D2, B2 \= D2, C2 \= D2, E2 \= D2,
	A2 \= E2, B2 \= E2, C2 \= E2,
	paddledLeft(D1, D2),
	paddledLeft(E1, E2),
	paddledOrPass(D1, K),
	paddledOrPass(E1, L),
	member(K, Crossings),
	member(L, Crossings),
	print(Crossings).
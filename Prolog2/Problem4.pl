crossing([toRight(_, _), toLeft(_), toRight(_, _), toLeft(_), toRight(_, _)]).
people([tom, elliot, vic, bill]).

paddle(X, toLeft(X)).
%paddle(elliot, toRight(elliot, bill)).
%paddle(elliot, toRight(elliot, A)) :- A \= bill, fail, !.
%paddle(X, toRight(X, _)) :- X \= elliot, X \= tom.
paddle(X, toRight(X, _)).

stayOnOneSide([toRight(A1, A2)], PeopleLeft) :- length(PeopleLeft, 2), member(A1, PeopleLeft), 
	member(A2, PeopleLeft), A1 \= A2, !.
stayOnOneSide([toRight(A1, A2), toLeft(A2)|T], PeopleLeft) :- member(A1, PeopleLeft), member(A2, PeopleLeft), 
	delete(PeopleLeft, A1, Z), stayOnOneSide(T, Z), A1 \= A2.
stayOnOneSide([toRight(A1, A2), toLeft(A1)|T], PeopleLeft) :- member(A1, PeopleLeft), member(A2, PeopleLeft),
	delete(PeopleLeft, A2, Z), stayOnOneSide(T, Z), A1 \= A2.

paddledTwice(A) :- crossing(Crossings),
	people(People),
	stayOnOneSide(Crossings, People),
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
	C \= D, !, 
	print(Crossings).
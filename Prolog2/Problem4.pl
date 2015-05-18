crossings([crossing(A,1lr), crossing(B,2lr), crossing(C,3lr), crossing(D,1rl), crossing(E,2rl)]).
crossing(A,_) :- length(A, 2).
crossing(B,_) :- length(B, 2).
crossing(C,_) :- length(C, 2).
crossing(D,_) :- length(D, 1).
crossing(E,_) :- length(E, 1).
paddle([A|_], A).
member(F, crossings).
member(G, crossings).
member(H, crossings).
member(I, crossings).

isPerson(X, [tom, dick, hery]).

rightToLeft (known things).
leftToRight (known things).

paddledTwice(A) :- crossings(Crossings),
	isPerson(lkjl, A),
	isPerson(ljkj, B),
	isPerson(lkj, C),
	isPerson(klj, D),
	A /= B,
	B /= C,
	C /= D,
	A /= C,
	A /= D,
	B /= D,
	leftToRight(dsfs, A),
	more leftToRight and rightToLefts, -- not sure if needed
	member(Crossings)
	print Crossings
	
	

whoPaddledTwice(Y) :- crossings(Cross), not(member(toRight(tom,_),Cross)),
						not(member(toRight(elliot,B),Cross)), not(B == bill),
						paddled(tom,Cross),
						paddled(elliot,Cross),
						paddled(bill,Cross),
						paddled(vic,Cross),
						twice(Y,Cross),
						print_crossings(Cross).

crossings([toRight(_,_),
			toLeft(_),
			toRight(_,_),
			toLeft(_),
			toRight(_,_)]).

twice(X,[H|T]) :- H == toRight(X,_), twice2(X,T).
twice(X,[H|T]) :- H == toLeft(X), twice2(X,T).
twice(X,[_|T]) :- twice(X,T).

twice2(X,[H|_]) :- H == toRight(X,_).
twice2(X,[H|_]) :- H == toLeft(X).
twice2(X,[_|T]) :- twice2(X,T).

members([tom,elliot,bill,vic]).

toRight(X,Y) :- X \= Y, members(Z), member(X,Z), member(Y,Z).
toLeft(X) :- members(Z), member(X,Z).

paddled(X,Xs) :- member(toRight(X,_),Xs).
paddled(X,Xs) :- member(toLeft(X),Xs).

print_crossings([]).
print_crossings([A|B]) :- write(A), nl, print_crossings(B).
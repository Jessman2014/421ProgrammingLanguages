undup(A,B) :- undup(A, B, []).
undup([],[],_).
undup([H|T],[H|Out],Seen) :- not(member(H,Seen)), undup(T,Out, [H|Seen]).
undup([H|T],Out, Seen) :- member(H,Seen), undup(T,Out,Seen).

remv(_, [], []).
remv(X, [X|T], T1) :- remv(X, T, T1).
remv(X, [H|T], [H|T1]) :- X \= H, remv(X, T, T1).
undup([], []).
undup(L, [H|T]) :- member(H, L), remv(H, L, Z), dup(Z, T).

%sortList([X], [X]).
%sortList([H,J|T], [K|S]) :- H =< J, H = K, sortList([J|T], S).

sortedUnion(L1,_,U) :- undup(L1, U).
sortedUnion(_,L2,U) :- undup(L2, U).
sortedIntersection(L1, L2, U) :- append(L1, L2, Y), sort(Y, Z), undup(Z, U).
%sortAppend(L1, L2, U) :- append(L1, L2, Z), sort(Z), Z = U.
sentence([X1, X2, X3, X4, X5|T], Rest, sentence(nounPhrase(determiner(X1), noun(X2)), verbPhrase(verb(X3),nounPhrase(determiner(X4), noun(X5))))) :- noun_phrase([X1, X2, X3, X4, X5|T],S), verb_phrase(S, Rest), noun_phrase([X4,X5],_),!.

sentence([X1, X2, X3|T], Rest, sentence(nounPhrase(determiner(X1), noun(X2)), verb(X3))) :- noun_phrase([X1, X2, X3|T], S), verb_phrase(S, Rest),!.

sentence(X, X, hasNoStructure).

sentence(S,S0) :- noun_phrase(S,S1),verb_phrase(S1,S0),!.
noun_phrase(NP,NP0) :- determiner(NP,NP1),noun(NP1,NP0),!.
verb_phrase(VP,VP0) :- verb(VP,VP1), noun_phrase(VP1,VP0),!.
verb_phrase(VP,VP0) :- verb(VP,VP0), !.
determiner([a|Rest],Rest).
determiner([the|Rest],Rest).
noun([man|Rest],Rest), noun(man).
noun([cake|Rest],Rest), noun(cake).
verb([ate|Rest],Rest), verb(ate).
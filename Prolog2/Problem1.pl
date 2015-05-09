sentence(S,S0) :- noun_phrase(S,S1),verb_phrase(S1,S0).
noun_phrase(NP,NP0) :- determiner(NP,NP1),noun(NP1,NP0).
verb_phrase(VP,VP0) :- verb(VP,VP1), noun_phrase(VP1,VP0).
determiner([a|Rest],Rest).
determiner([the|Rest],Rest).
noun([man|Rest],Rest).
noun([cake|Rest],Rest).
verb([ate|Rest],Rest).

sentence([H|T], rest, struct) :- 
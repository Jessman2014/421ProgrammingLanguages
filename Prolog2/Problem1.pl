sentence(S, Rest, sentence(A, B)) :- noun_phrase(S, S1, A), verb_phrase(S1, Rest, B),!.
noun_phrase(NP, Rest, noun_phrase(A, B)) :- determiner(NP, NP1, A), noun(NP1, Rest, B),!.
verb_phrase(VP, Rest, verb_phrase(A, B)) :- verb(VP,VP1, A), noun_phrase(VP1, Rest, B),!.
verb_phrase(VP, Rest, verb_phrase(A)) :- verb(VP, Rest, A), !.
determiner([a|Rest], Rest, determiner(a)).
determiner([the|Rest], Rest, determiner(the)).
noun([man|Rest], Rest, noun(man)).
noun([cake|Rest], Rest, noun(cake)).
verb([ate|Rest], Rest, verb(ate)).
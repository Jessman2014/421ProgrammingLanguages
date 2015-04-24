% when (C,T) means class C meets at time T
when(275, 10).
when(261, 12).
when(381, 11).
when(398, 12).
when(399, 12).
% where (C,R) means class C meets in room R
where(275, owen102).
where(261, dear118).
where(381, cov216).
where(398, dear118).
where(399, cov216).
% enroll (S,C) means student S is enrolled in class C
enroll(mary, 275).
enroll(john, 275).
enroll(mary, 261).
enroll(john, 381).
enroll(jim, 399).

schedule(S, R, T) :- enroll(S, C), where(C, R), when(C, T).
usage(R, T) :- when(C, T), where(C, R).
conflict(C1, C2) :- when(C1, T), when(C2, T), where(C1, R), where(C2, R).
meet(S1, S2) :- enroll(S1, C), enroll(S2, C).
meet(S1, S2) :- enroll(S1, C1), enroll(S2, C2), when(C1, T1), when(C2, T2), T1 is T2 - 1, where(C1, R), where(C2, R).
meet(S1, S2) :- enroll(S1, C1), enroll(S2, C2), when(C1, T1), when(C2, T2), T1 is T2 + 1, where(C1, R), where(C2, R).
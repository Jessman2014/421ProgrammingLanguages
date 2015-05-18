sort([],[],[]) :- !.
sort([A],[],[A]) :- !.
sort([],[A],[A]) :- !.
sort([A|T], [B|S], [A|L]) :- A =< B,!, sort(T, [B|S], L).
sort([A|T], [B|S], [B|L]) :- A > B,!, sort([A|T], S, L).
mergeSort([],[]) :- !.
mergeSort([A],[A]) :- !.
mergeSort(A, B) :- append(A1, A2, A), length(A, L), round(L/2, L1), length(A1, L1), mergeSort(A1, B1), mergeSort(A2, B2),!, sort(B1, B2, B).
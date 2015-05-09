mergeSort([], []).
mergeSort([A], [A]) :- !.
mergeSort([A, B], [A, B]) :- A =< B, !.
mergeSort([A, B], [B, A]) :- A > B, !.
mergeSort(A, B) :- append(Y, Z, A), mergeSort(Y, Y1), mergeSort(Z, Z1), append(Y1, Z1, B). 
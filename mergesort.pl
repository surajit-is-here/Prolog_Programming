mergesort([], []).
mergesort([X], [X]).
mergesort(List, Sorted) :-
    split(List, Left, Right),  % Split List into two halves
    mergesort(Left, SortedLeft),  % Recursively sort the left half
    mergesort(Right, SortedRight),  % Recursively sort the right half
    merge(SortedLeft, SortedRight, Sorted).  % Merge the sorted halves

% split(List, Left, Right)
% Splits List into two halves and returns them as Left and Right
split([], [], []).
split([X], [X], []).
split([X,Y|List], [X|Left], [Y|Right]) :-
    split(List, Left, Right).

% merge(List1, List2, Merged)
% Merges two sorted lists (List1 and List2) into a single sorted list
merge([], List, List).
merge(List, [], List).
merge([X|List1], [Y|List2], [X|Merged]) :-
    X =< Y,
    merge(List1, [Y|List2], Merged).
merge([X|List1], [Y|List2], [Y|Merged]) :-
    X > Y,
    merge([X|List1], List2, Merged).

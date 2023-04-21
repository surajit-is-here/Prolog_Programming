% selectionsort(List, Sorted)
% Sorts the elements in List in ascending order using selection sort
% Returns the sorted list as Sorted

selectionsort([], []).
selectionsort(List, [Min|SortedTail]) :-
min_list(List, Min),  % Find the minimum element in List
select(Min, List, Rest),  % Remove the minimum element from List
selectionsort(Rest, SortedTail).  % Recursively sort the remaining elements

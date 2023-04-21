%reverse of a list
reverse([],[]).
reverse([X],[X]).
reverse([X|L],L1):-reverse(L,L2),append(L2,[X],L1).

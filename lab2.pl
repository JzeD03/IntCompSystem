%Добавить элемент в конец списка.

add_to_end(Element, [], [Element]).
add_to_end(Element, [Head|Tail], [Head|NewTail]) :-
    add_to_end(Element, Tail, NewTail).

%?- add_to_end(4, [1, 2, 3], Result).
    

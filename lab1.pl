%задание 7

%Имена

name(mary).
name(suizi).
name(dzhein).
name(sam).
name(bob).
name(patrici).

%Мэри, Сьюзи и Джейн работают в дневную смену

day(mary).
day(suizi).
day(dzhein).

%Сэм, Джейн, Боб и Патриция работают в вечерную смену

night(sam).
night(dzhein).
night(bob).
night(patrici).

%Знают друг друга те, кто работает в одну смену
knowns(X, Y) :- (day(X), day(Y)) ; (night(X), night(Y)).

%Запросы

%Знают ли друг друга Мэри и Джейн

%?- knowns(mary, dzhein).

%Кто работает в дневную смену?

%?- day(X).

%Есть ли кто-то, кто работает в обе смены

%?- (day(X), night(X)).

%Есть ли кто-то, кто не знает друг друга

%?- name(X), name(Y), \+(knowns(X, Y)), X \= Y.
max(X,Y,Y) :- X < Y,!.
max(X,Y,X) :- X >= Y.

max2(X,Y,M) :- X >= Y, !, M = X.
max2(_,Y,Y).

max2broken(_,Y,Y).
max2broken(X,Y,M) :- X >= Y, !, M = X.

spider(boris).

animal(boris).
animal(bugs).

% marc likes all animals except spiders
likes(marc, X) :- animal(X), not(spider(X)).

likes2(marc, X) :- spider(X), !, fail.
likes2(marc, X) :- animal(X).

not2(X) :- X, !, fail; true.

notBroken(X) :- X = false.

person(homer).
person(bart).

adult(homer).

child(P) :- not(adult(P)).

child2(P) :- person(P), not(adult(P)).


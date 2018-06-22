% binary "parent" relation, defined by facts:

parent(carl,curtis).
parent(ruth,curtis).
parent(carl,rob).
parent(ruth,rob).
parent(claire,sue).
parent(don,sue).
parent(claire,dianna).
parent(don,dianna).
parent(rob,megan).
parent(rob,justin).
parent(rob,jessica).
parent(sue,megan).
parent(sue,justin).
parent(sue,jessica).

% unary "male" relation, defined by facts:

male(carl).
male(don).
male(curtis).
male(rob).
male(justin).

% various relations, defined by rules:

child(X,Y) :- parent(Y,X).

grandparent(X,Z) :- parent(X,Y),parent(Y,Z).

grandfather(X,Z) :- grandparent(X,Z), male(X).
isGrandfather(X) :- grandfather(X,_).

female(X) :- not(male(X)).

ancestor(X,Y) :- parent(X,Y).
ancestor(X,Z) :- parent(X,Y),ancestor(Y,Z).

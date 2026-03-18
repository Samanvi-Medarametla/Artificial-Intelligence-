female(pam).
female(liz).
female(ann).
female(pat).

male(tom).
male(bob).
male(jim).

parent(pam,bob).
parent(tom,bob).
parent(bob,ann).
parent(bob,pat).
parent(liz,tom).
parent(jim,tom).

mother(X,Y):- female(X), parent(X,Y).
father(X,Y):- male(X), parent(X,Y).

grandparent(X,Y):- parent(X,Z), parent(Z,Y).
grandmother(X,Y):- female(X), grandparent(X,Y).
grandfather(X,Y):- male(X), grandparent(X,Y).

sister(X,Y):- female(X), parent(Z,X), parent(Z,Y), X\=Y.
brother(X,Y):- male(X), parent(Z,X), parent(Z,Y), X\=Y.
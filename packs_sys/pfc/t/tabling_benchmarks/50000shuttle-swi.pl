
:- table c/1.

entry(c(_)).

c(X) :- c(Y), 0 =< Y, Y < 50000, X is -Y-1.
c(X) :- c(Y), -50000 < Y, Y =< 0, X is -Y+1.
c(0).


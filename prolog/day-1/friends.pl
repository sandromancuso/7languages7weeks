likes(wallace, cheese).
likes(grommit, cheese).
likes(wendolene, sheep).

friend(X, Y) :- likes(X, Z), likes(Y, Z), \+(X = Y).
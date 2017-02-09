likes(johnny,itamar).
likes(itamar,suzie).
likes(sophie, isabell).
likes(johnny, isabell).
likes(james,Xin).
likes(Xin,james).
likes(harsh,kyle).
likes(jared,harsh).

love_possible(X, Y) :- likes(X, Y), likes(Y, X).
jealous(X,Z) :- likes(X,Y), likes(Y,Z).

:- use_module(library(clpb)).

dog(cardie).
dog(duncan).
dog(mia).
dog(scout).
owner(OwnerNumber) :- between(1,3,OwnerNumber).
belongs_to(Owner, Dog) :- owner(Owner), dog(Dog).
earlier(EarlierDog,LaterDog) :- dog(EarlierDog), dog(LaterDog).
younger(YoungerDog,OlderDog) :- dog(YoungerDog), dog(OlderDog), YoungerDog \= OlderDog, \+ sat(younger(OlderDog,YoungerDog)).
not_younger(DogA,DogB) :- \+ younger(DogA,DogB), dog(DogA), dog(DogB).


%Rule 1: If either Cardie or Duncan goes out earlier than the other, then Mia is younger than Duncan.
younger(mia, duncan) :- earlier(cardie,duncan); earlier(cardie,duncan).

%Rule 2: Mia is younger than Cardie, and if either Cardie or Duncan goes out earlier than the other, then Mia is not younger than Duncan.
younger(mia, cardie).
not_younger(duncan, mia) :- earlier(cardie,duncan); earlier(cardie,duncan).

%Rule 3: If it is not the case that Mia is younger than both Cardie and Duncan, then either Cardie goes out earlier than Duncan or Duncan goes out earlier than Cardie, but not both.
earlier(cardie,duncan) :- \+ earlier(duncan,cardie), \+ (younger(mia,cardie), younger(mia, duncan)).
earlier(duncan,cardie) :- \+ earlier(cardie,duncan), \+ (younger(mia,cardie), younger(mia, duncan)).

%Rule 4: The relation Y is antireflexive and antisymmetric.
%ok, just going to edit the younger/2 rule.

%Rule 5: For any two dogs, one goes out earlier than the other if and only if they each have an owner such that the earlier dog's owner has a smaller number.

%Rule 6: Every dog has exactly one owner, and O3 owns exactly one dog.

%Rule 7: Any dog is different from Scout if and only if Scout both goes out earlier than it and is younger than it. (Equivalently, Scout is the earliest and the youngest dog, with no ties.)

%Rule 8: There is a dog u such that for any dog v, v is younger than u if and only if v is Scout. (Equivalently, Scout and only Scout is younger than u.)

%Query 1: From Statements I, II, and III, there is only one possible setting of the truth values of the four propositions Y(m, c), Y(m, d), E(c, d), and E(d, c).
%Determine this setting and show that it is the only setting that works. You may use either a truth table or a deductive argument.

%Query 2: Assuming the truth of Statements I-VIII, determine which owner owns which dog, and determine the value of the predicate E(u, v) for all possible pairs of dogs u and v.

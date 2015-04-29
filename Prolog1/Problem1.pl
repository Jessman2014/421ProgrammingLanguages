pet(red, cat) :- pet(black, dog).
pet(white, cat) :- pet(white, dog).
pet(green, dog) :- pet(black, dog), pet(white, cat).
pet(black, cat) :- pet(red, dog), pet(white, dog).
pet(black, cat) :- pet(red, cat), pet(white, cat).
pet(black, dog).
pet(white, dog).
doesNotHaveCat(P) :- pet(P,_), not(pet(P, cat)).

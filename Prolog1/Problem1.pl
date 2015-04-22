pet(Red, cat) :- pet(Black, dog)
pet(White, cat) :- pet(White, dog)
pet(Green, dog) :- pet(Black, dog), pet(White, cat)
pet(Black, cat) :- pet(Red, dog), pet(White, dog)
pet(Black, cat) :- pet(Red, cat), pet(White, cat)
pet(Black, dog).
pet(White, dog).
myMaxRE [] = error "People who try to find the max of an empty list get a Python grep their neck till they're Ruby red and meet the final Clojure!"
myMaxRE [x] = [x]
myMaxRE (x:xs) = 
	if x > (head xs) then myMaxRE (x : (tail xs))
	else myMaxRE xs
mySumRE [] = error "I GNU you would put in an empty lisp! What a asp.net viewbag!"
mySumRE [x] = [x]
mySumRE (x:xs) = x + mySumRE xs
maxTwo z y =
	if z > y then z
	else y
myMaxFU [] = error "People who try to find the max of an empty list get hot steaming hot Java dumped on them!"
myMaxFU (x:xs) = foldl maxTwo x xs
mySumFU [] = error "People who try to find the sum of an empty list get a c-sharp object in the eye!"
mySumFU xs = foldl (+) 0 xs
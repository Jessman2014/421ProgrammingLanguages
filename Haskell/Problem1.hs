myMaxRE [x] = [x]
myMaxRE (x:xs) = 
	if x > (head xs) then myMaxRE (x : (tail xs))
	else myMaxRE xs

mySumRE [] = error "No sum of empty list"
mySumRE [x] = x
mySumRE (x:xs) = x + mySumRE xs

maxTwo z y =
	if z > y then z
	else y
myMaxFU (x:xs) = foldl maxTwo x xs
mySumFU xs = foldl (+) 0 xs
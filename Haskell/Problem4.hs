subList [x] = [x]
subList (x:xs) =
	if x == (head xs) then x : (subList xs)
	else [x]
rle [] = []
rle xs = 
	let sub = subList xs
	in [((head sub), (length sub))] ++ rle (drop (length sub) xs)
rldHelp (_,0) = []
rldHelp (a,b) = a : rldHelp (a,b-1)
rld [] = []
rld (x:xs) = rldHelp x ++ rld xs
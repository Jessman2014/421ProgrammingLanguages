pairHelp a b ps = [(a, b)] : ps
pair (x:xs) (y:ys) = 
	if (null xs || null ys) then pairHelp x y []
	else [(x, y)] : pair xs ys
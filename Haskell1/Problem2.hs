pair [] _ = []
pair _ [] = []
pair (x:xs) (y:ys) = (x, y) : pair xs ys
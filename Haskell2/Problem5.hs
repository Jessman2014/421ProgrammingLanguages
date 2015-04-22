perfect :: Int -> Bool
perfect n = n == sum [x | x <- [1..n], n `mod` x == 0, x /= n]
mullist xs = [x | x <- [1..], isProd xs x]

isProd [] _ = False
isProd (x:xs) n =  if n == 1 && x /= 1 then False
					else if x == 1 then True
					else if n `mod` x == 0 then isProdRecurse (x:xs) (quot n x)
					else isProdRecurse xs n
isProdRecurse _ 1 = True
isProdRecurse [] _ = False
isProdRecurse (x:xs) n = if n `mod` x == 0 then isProdRecurse (x:xs) (quot n x)
					else isProdRecurse xs n
sumFib (x:xs) (y:ys) = [x + y] ++ sumFib xs ys
fibs = 1:1:sumFib fibs (tail fibs)
fib 0 = 0
fib x = head (drop (x-1) (take x fibs))
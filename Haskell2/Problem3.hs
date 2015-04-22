data BinTree a = Empty | Branch (BinTree a) a (BinTree a) deriving (Show)
binTreeFromList :: Ord a => [a] -> BinTree a
binTreeFromList [] = Empty
binTreeFromList xs = (Branch (binTreeFromList (take (quot (length xs) 2) xs)) (xs !! (quot (length xs) 2)) (binTreeFromList (drop ((quot (length xs) 2)+1) xs)))
listFromBinTree :: Ord a => BinTree a -> [a]
listFromBinTree Empty = []
listFromBinTree (Branch a b c) = (listFromBinTree a) ++ b : (listFromBinTree c)
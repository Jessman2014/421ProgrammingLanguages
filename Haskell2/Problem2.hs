type Word = String
type Line = [Word]
type Page = [Line]
type Doc = [Page]
numWords :: Doc -> Int
numWords [] = 0
numWords (x:xs) = sum (map length x) + numWords xs
--[[["hello", "there"], ["whats", "uo", "kjl"]],[["jlj","sfds","jlks","sdfs"],["sfs","sdfsdf","sdf"]]]
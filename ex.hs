ex1 :: Int -> [Int]
ex1 x = [ 11^y | y <- [0 .. x]]

mult :: Int -> Int -> Int
mult a b = a*b

loop_pow :: Int -> Int -> Int
loop_pow a b = if b == 0 then 1 else (loop_pow a (b-1)) * a

remove_duplicates :: [Int] -> [Int] -> [Int]
remove_duplicates l1 l2 = if length l1 == 0 then l2 else (
    if (head l1) `elem` l2 then (remove_duplicates (tail l1) l2) else (remove_duplicates (tail l1) (l2 ++ [head l1])))


process :: [Int] -> [Int] -> [Int] -> Bool -> [Int]
process l1 l2 l3 cond = if cond then ( if  length l1 > 0 then (process (tail l1) l2 (l3 ++ [head l1]) False) else l3 ++ l2) 
    else ( if  length l2 > 0 then (process l1 (tail l2) (l3 ++ [head l2]) True) else l3 ++ l1)

mix_arrays :: [Int] -> [Int] -> [Int]
mix_arrays l1 l2 = process l1 l2 [] True

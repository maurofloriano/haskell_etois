fat :: Int -> Int
fat 0 = 1
fat n = n*fat(n-1)

fatorialList :: Int -> [Int] 
fatorialList n = [fat x | x <- [1 .. n]]

fibonacci 1 = 1
fibonacci 2 = 1
fibonacci n = fibonacci(n-1) + fibonacci(n-2)
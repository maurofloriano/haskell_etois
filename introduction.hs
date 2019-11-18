maiorQue :: Int -> Int -> Bool
maiorQue x y = (>) x y

m = maiorQue 2 3
main = print m

quadradoLista :: [Int] -> [Int]
quadradoLista l = [x*x | x<-l]

dobroLista :: [Int] 
dobroLista = [2*x | x <- [0 .. 10], x/=5]

tuple_test :: Char -> Int -> (Int, String) 
tuple_test x y = (y+9, x:[x])


data Dia = Segunda | Terca | Quarta | Quinta | Sexta | Sabado | Domingo 
agenda :: Dia -> String 
agenda Domingo = "TV ..."
agenda Sabado = "Festa"
agenda _ = "Trabalho"
import System.Environment

-- Ֆակտորիալի հաշվարկը, tail recursive
factorial' :: Integer -> Integer -> Integer
factorial' 1 r = r
factorial' n r = factorial' (n - 1) (n * r)

-- Ֆակտորիալի հաշվարկը
factorial :: Integer -> Integer
factorial n = factorial' n 1

-- Մուտքի կետ
main :: IO ()
main = do
    args <- getArgs
    if (not . null) args
    then print (factorial (read (head args) :: Integer))
    else putStrLn "Ոչինչ տրված չէ։"

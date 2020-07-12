import System.Environment

-- Ֆակտորիալի հաշվարկը
factorial :: Integer -> Integer
factorial n =
    if n == 1
    then 1
    else n * factorial (n - 1)

-- Մուտքի կետ
main :: IO ()
main = do
    args <- getArgs
    if not (null args)
    then print (factorial (read (head args) :: Integer))
    else putStrLn "Ոչինչ տրված չէ։"

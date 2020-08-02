
-- hexadecimal digits
hexDigit :: Int -> String
hexDigit n = ["0123456789abcdef" !! n]

toHex :: Int -> String
toHex n
    | n < 16    = hexDigit n
    | otherwise = (toHex $ div n 16) ++ (hexDigit $ rem n 16)



decToBin :: Int -> String
decToBin n =
    if n == 0
    then "0"
    else if n == 1
         then "1"
         else (decToBin (div n 2)) ++ (decToBin (rem n 2))

decToBin :: Int -> String
decToBin n =
    | n == 0 = "0"
    | n == 1 = "1"
    | otherwise (decToBin (div n 2)) ++ (decToBin (rem n 2))



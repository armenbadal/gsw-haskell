
-- hexadecimal digits
hexDigit :: Int -> String
hexDigit n = ["0123456789abcdef" !! n]

toHex :: Int -> String
toHex n
    | n < 16    = hexDigit n
    | otherwise = (toHex $ div n 16) ++ (hexDigit $ rem n 16)

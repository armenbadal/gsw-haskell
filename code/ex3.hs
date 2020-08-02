decToBin :: Int -> String
decToBin 0 = "0"
decToBin 1 = "1"
decToBin n = (decToBin (div n 2)) ++ (decToBin (rem n 2))

f 1 = 777
f x =
    g x
    where g i = i * i

main:: IO ()
main = do
    print(f 1)
    print(f 6)

main = interact $ 
    unlines . map (unwords . map show . solve . map read . words) . drop 1 . lines 

solve [a,b,n] = drop 1 . scanl1 (+) $ terms
    where term i = b * 2^i
          terms = a:(map term [0..(n-1)])

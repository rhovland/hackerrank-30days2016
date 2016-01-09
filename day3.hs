main = interact $ solve . read
{- `elem` [] is certainly worse than >= && <=, but it reads clearer, and performance isn't critical here -}
solve n
  | odd n = "Weird"
  | n `elem` [2..5] = "Not Weird"
  | n `elem` [6..20] = "Weird"
  | n > 20 = "Not Weird"
  | otherwise = undefined

main = interact $  
    unlines . solve . read
    
solve n = map f [1..n]
    where f ni = replicate (n-ni) ' ' ++ replicate ni '#'
          

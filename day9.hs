main = main'
main' = interact $ show . solve . map read . words

solve [a,b] = let (r,_,_) = extendedEuclid a b in r

{- solve as+bt = r -}
extendedEuclid :: Int -> Int -> (Int,Int,Int)
extendedEuclid a b = (r,s,t)
  where ((_,r,s,t),_) = extendedEuclid' ((0,a,1,0),(0,b,0,1))

extendedEuclid' :: ((Int,Int,Int,Int),(Int,Int,Int,Int)) ->
                   ((Int,Int,Int,Int),(Int,Int,Int,Int))
extendedEuclid' qrst0@((_,r1,s1,t1),(q2,r2,s2,t2))
  | r2==0 = qrst0
  | otherwise = extendedEuclid' qrst1
  where (q3,r3) = quotRem r1 r2
        s3 = s1-q3*s2
        t3 = t1-q3*t2
        qrst1 = ((q2,r2,s2,t2),(q3,r3,s3,t3))

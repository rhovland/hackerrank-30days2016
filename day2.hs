import Control.Applicative
main=do
    mtx <- words <$> getContents
    let [m,t,x] = map read mtx :: [Double]
    let tip = t*m/100
    let tax = x*m/100
    let fp = m+tip+tax
    putStrLn $ "The final price of the meal is $" ++ show (round fp) ++ "."
    

import qualified Data.Map as M
import Control.Applicative
import Control.Monad
import Data.Maybe

main = do
    t <- read <$> getLine
    pairs<-replicateM t $ do
        name <- getLine
        number <- getLine
        return (name,number)
    let m = M.fromList pairs
    qs <- lines <$> getContents
    forM_ qs $ \qi -> putStrLn $ fromMaybe "Not found" $
                      (++) <$> (pure $ qi ++ "=") <*> M.lookup qi m
     


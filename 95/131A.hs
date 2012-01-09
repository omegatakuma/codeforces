import Data.Char
cAps c 
 | isUpper c = toLower c
 | otherwise = toUpper c
fav n 
 | all isUpper $ tail n = map cAps n
 | otherwise = n
main = do
 m <- getLine
 putStrLn (fav m)

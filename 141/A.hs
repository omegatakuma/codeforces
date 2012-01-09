fav name host ans = do
 if (length ans) == (length answer)
  then do
     putStrLn "YES"
  else do
   putStrLn "NO" 
 where answer = host ++ name
main = do
 name <- getLine
 host <- getLine
 ans <- getLine
 fav name host ans

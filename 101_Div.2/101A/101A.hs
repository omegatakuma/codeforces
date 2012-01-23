import List
fav name host ans = do
 if sort ans == sort answer 
  then do
   putStrLn "YES"
  else do
   putStrLn "NO"
 where answer = name ++ host
main = do
 name <- getLine
 host <- getLine
 ans  <- getLine
 fav name host ans 

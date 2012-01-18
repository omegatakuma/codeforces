solve r c d result
 | r1 == x1 + x2 && r2 == x3 + x4 && d1 == x1 + x4 && c1 == x1 + x3 && c2 == x2 + x4 && d2 == x2 + x3 = do 
                             if x1 <= 0 || x2 <= 0 || x3 <= 0 || x4 <= 0 
                              then solve r c d (result+1)
                              else if 1 >= 10 || x2 >= 10 || x3 >= 10 || x4 >= 10 
                               then solve r c d (result+1)
                               else if x1 == x2 || x1 == x3 || x1 == x4 || x2 == x3 || x2 == x4 || x3 == x4 
                                then solve r c d (result+1)
                                else do
                                 putStrLn (take 3 (unwords(map show list)))
                                 putStrLn (drop 4 (unwords(map show list)))
 | result <= 9 = solve r c d (result+1)
 | otherwise   = putStrLn (show(-1))
 where
  r1 = (!!) r 0
  r2 = (!!) r 1
  c1 = (!!) c 0
  c2 = (!!) c 1
  d1 = (!!) d 0
  d2 = (!!) d 1
  x1 = ((!!) d 0)-result
  x2 = ((!!) c 1)-result
  x3 = ((!!) r 1)-result
  x4 = result
  list = [(((!!) d 0)-result),(((!!) c 1)-result),(((!!) r 1)-result),result]
main = do
 r <- fmap (map read . words) getLine 
 c <- fmap (map read . words) getLine
 d <- fmap (map read . words) getLine
 solve r c d 1

prime (x:xs) count= do
 if x >=2
  then do
   if x /= count
    then do
     if x`mod`count == 0
      then do
       prime xs (count+1) 
      else do
       prime (x:xs) (count+1)
    else do
     putStrLn (show(x))
     prime xs 2
 else do
  prime xs 2
main = do  
 n <- fmap (map read . words) getLine       
 let x = [(n !! 0)..(n !! 1)]
 prime x 2

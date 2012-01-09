import Data.List
fav n len result = do
 if ((length lists) - 1) >= len
   then do 
   if (lists !! len)`mod`5 == 0
    then do
     fav n (len+1) (((lists !! len)`div`5):result)
    else if (lists !! len)`mod`5 /= 0 && (lists !! len)`div`5 <= 1 
      then do
       fav n (len+1) ((lists !! len)`div`5+ 1:result)
      else do
       fav n (len+1) (1:result)
 else do
  putStrLn (show (sum result))
 where list = group n
       lists = map (length) list
main = do
 n <- getLine
 fav n 0 []

import Data.List
import Data.Char
fav n a1 c 
 | c == length a = solve n a 0 [] []
 | otherwise = if a !! c == 4 || a !! c == 7
                then fav n a1 (c+1)
				else putStrLn "NO"
 where a = map digitToInt a1
solve n a c r1 r2
 | c == length a = if sum r1 == sum r2
                    then putStrLn "YES"
					else putStrLn "NO"
 | otherwise = if c < (length a)`div`2
                then solve n a (c+1) (a!!c:r1) r2
				else if c < n
				 then solve n a (c+1) r1 (a!!c:r2)
				  else solve n a (c+1) r1 r2
main = do
 n <- fmap read getLine
 a1 <- getLine
 fav n a1 0

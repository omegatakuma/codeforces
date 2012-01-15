import List
solve list
 | y`mod`a == 0 || y <= 0 || x<= -a || x>=a = -1 
 | a > abs (x)*2 && y < a = 1 
 | odd (y`div`a) && ( abs (x)*2 >= a || x*2 <= -a) = -1
 | even (y`div`a) && (y`div`a < 2 && y`div`a <= a*2) = -1
 | 0 <= x = if x == 0 && odd dIv
             then -1
             else list1 !! dIv
 | 0 >= x = if x == 0 && odd dIv
             then -1
             else list0 !! dIv
 where a = (!!) list 0
       x = (!!) list 1
       y = (!!) list 2
       l0 = [2,5..(10^6)]++[3,6..(10^6)]
       l1 = [2,5..(10^6)]++[4,7..(10^6)]
       list0 = sort l0
       list1 = sort l1
       (dIv,mOd) = divMod (y-a) a
main = do
 list <- fmap (map read . words) getLine
 putStrLn (show(solve list))

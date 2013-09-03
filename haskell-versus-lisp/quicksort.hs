qsort :: (Num a, Ord a) => [a] -> [a]
qsort [] = []
qsort (x:xs) = lessT ++ [x] ++ greatT
  where
    lessT  = qsort [y | y <- xs, y <= x]
    greatT = qsort [y | y <- xs, y > x]

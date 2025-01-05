import System.IO
import Control.Monad
import Control.Arrow ((&&&))

pairs :: [a] -> [(a, a)]
pairs [] = []
pairs [x] = []
pairs (x:y:zs) = (x, y) : pairs (y : zs)


g :: (Int, Int) -> Int
g (x, y) = y - x

monotone :: [Int] -> Bool
monotone xs = all (< 0) xs || all (> 0) xs

smallGap = all ((\x -> x >= 1 && x <= 3) . abs)

isSafe xs =  monotone xs && smallGap xs

main = do
    contents <- readFile "input.txt"
    print
        . length . filter id
        . map (isSafe . map g . pairs . f . words) $ lines contents
f :: [String] -> [Int]
f = map read

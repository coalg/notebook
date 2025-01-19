import System.IO
import Control.Monad
import Control.Arrow ((&&&), (>>>))

pairs :: [a] -> [(a, a)]
pairs [] = []
pairs [x] = []
pairs (x:y:zs) = (x, y) : pairs (y : zs)


g :: (Int, Int) -> Int
g (x, y) = y - x

monotone :: [Int] -> Bool
monotone xs = all (< 0) xs || all (> 0) xs

smallGap :: [Int] -> Bool
smallGap = all (abs >>> ((>= 1) &&& (<= 3)) >>> uncurry (&&))

isSafe :: [Int] -> Bool
isSafe xs =  monotone xs && smallGap xs

solution1 :: String -> Int
solution1 = length . filter id . map (isSafe . map g . pairs . f . words) . lines

main = do
    contents <- readFile "input.txt"
    print . solution1 $ contents

f :: [String] -> [Int]
f = map read

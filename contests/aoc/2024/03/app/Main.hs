module Main where
import Text.Regex.Posix

toInt :: String -> Int
toInt = read

main :: IO ()
main = do
    content <- readFile "input"
    print $ map (map toInt . tail) (head (lines content) =~ "mul\\(([0-9]+),([0-9]+)\\)" :: [[String]])

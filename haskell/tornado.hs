import System.IO

shift :: String -> String
shift "" = ""
shift (c:cs) = cs ++ [c]

main = do putStr "Enter some text: "
          hFlush stdout
          text <- getLine
          putStr "Enter line amount: "
          hFlush stdout
          num <- getLine
          let tornado = take ((read num) + 1) $ iterate shift text
          mapM_ putStrLn tornado

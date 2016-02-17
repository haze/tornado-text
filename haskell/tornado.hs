import System.IO

shift "" = ""
shift (c:cs) = cs ++ [c]

main = do putStr "Enter some text: "
          hFlush stdout
          text <- getLine
          putStr "Enter line amount: "
          hFlush stdout
          num <- getLine
          let tornado = case reads num of [(x, "")] -> take (x + 1) $ iterate shift text
                                          _ -> iterate shift text
          mapM_ putStrLn tornado

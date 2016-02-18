shift : String -> String
shift str = strTail str ++ (singleton $ strHead str)

prompt : String -> IO String
prompt str = do putStr str
                fflush stdout
                getLine

loop : String -> IO ()
loop s = do putStrLn s
            loop $ shift s

main : IO ()
main = do text <- prompt "Enter some text: "
          case !(prompt "Enter line amount: ") of
            "" => loop text
            n  => traverse_ putStrLn $ take (cast n + 1) $ iterate shift text

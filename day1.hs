main=putStrLn $ unlines $ map p $ zip mtl stl
  where mtl = "PPPPRPPPR"
        stl = "dcbiSbdcS"
        
p (m,s) = pm m ++ " : " ++ ps s

pm 'P' = "Primitive"
pm 'R' = "Referenced"
pm _ = undefined

ps 'd' = "double"
ps 'c' = "char"
ps 'b' = "boolean"
ps 'i' = "int"
ps 'S' = "String"
ps _ = undefined

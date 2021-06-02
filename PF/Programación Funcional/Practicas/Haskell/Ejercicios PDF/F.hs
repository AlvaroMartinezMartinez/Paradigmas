--rt lista = tail lista ++ head lista

rt lista = drop 1 lista ++ take 1 lista
let rec repl e n =
  if (n > 0) then e::(repl e n-1) else [];;

let acc_repl e = 
  let rec aux acc n = 
    if (n > 0) then aux (e::acc) n-1 
               else acc
              in aux [];;
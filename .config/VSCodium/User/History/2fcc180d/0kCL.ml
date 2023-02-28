
let rec select p l1 l2= match l1,l2 with
  h1::t1, h2::t2 -> if (p l1 l2) then h1::select p t1 t2 
                                 else h2::select p t1 t2
| [], [] -> []
| _ -> raise (Invalid_argument "select");;
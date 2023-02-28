
let rec swap l = match l with
  (a,b)::t -> (b,a)::swap t
| _ -> [];;


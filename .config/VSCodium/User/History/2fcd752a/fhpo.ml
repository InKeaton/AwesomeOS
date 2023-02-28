
let rec cat l = match l with
  (a, b)::t -> a^b::cat t
  | _ -> [];;
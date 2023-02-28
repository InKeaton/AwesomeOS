
let rec agg = function
  h::d::t -> (h+d)::agg t
| h::[] -> h::[]
| [] -> [];;
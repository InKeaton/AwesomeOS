
let rec agg = function
  x as h::d::t -> (h+d)::agg t
| _ -> x;;
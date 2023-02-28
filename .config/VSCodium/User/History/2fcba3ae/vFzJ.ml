
let rec agg = function
  h::d::t -> (h+d)::agg t
| x as _ -> x;;

let rec agg = function
  h::d::t -> (h+d)::
| h::[] -> 
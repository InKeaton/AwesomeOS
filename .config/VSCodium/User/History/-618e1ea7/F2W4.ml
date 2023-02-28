
let rec dup = function
  [] -> []
| h::t -> h::h::(dup t);;
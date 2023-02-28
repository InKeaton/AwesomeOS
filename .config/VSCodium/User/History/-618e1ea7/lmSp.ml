
let rec dup x = function
  [] -> []
| h::t -> h::h::(dup t);;
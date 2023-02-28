
let rec dup x :
  [] -> [];;
| h:t -> h:h:(dup x);;
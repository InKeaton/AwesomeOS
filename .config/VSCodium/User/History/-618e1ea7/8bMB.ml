
let rec dup x = match x with
  [] -> [];;
| h:t -> h:h:(dup x);;

let rec find l l1 = match l1 with
  h::t -> if (l = h) then 1+find l t
                     else 0+find l t
| _ -> 0;

let rec find l l1 = match l1 with
  h::t -> if (l = h) then 1+find l t
                     else 0+find l t
| _ -> 0;;

find "a" ["a";"c";"c"] = 1;;
find "c" ["a";"c";"c"] = 2;;
find "c" ["a";"b";"c"] = 1;;
find "d" ["a";"b";"c"] = 0;;

let acc_find l =
  let rec aux acc l1 = match l1 with
    h::t -> aux (if (l = h) then 1+acc else 0+acc) t
  | [] -> acc
in aux 0;;

acc_find "a" ["a";"c";"c"] = 1;;
acc_find "c" ["a";"c";"c"] = 2;;
acc_find "c" ["a";"b";"c"] = 1;;
acc_find "d" ["a";"b";"c"] = 0;;
                       


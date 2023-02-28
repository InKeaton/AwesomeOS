
let rec swap l = match l with
  (a,b)::t -> (b,a)::swap t
| _ -> [];;

swap [(1,"one");(2,"two");(3,"three")] = [("one", 1); ("two", 2); ("three", 3)];;
swap []=[];;


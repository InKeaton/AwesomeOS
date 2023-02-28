
let rec swap l = match l with
  (a,b)::t -> (b,a)::swap t
| _ -> [];;

swap [(1,"one");(2,"two");(3,"three")] = [("one", 1); ("two", 2); ("three", 3)];;
swap []=[];;

let swap2 l = 
  let aux x = match x with
  (a,b) -> (b,a)
in List.map aux l;;

swap2 [(1,"one");(2,"two");(3,"three")] = [("one", 1); ("two", 2); ("three", 3)];;
swap2 []=[];;
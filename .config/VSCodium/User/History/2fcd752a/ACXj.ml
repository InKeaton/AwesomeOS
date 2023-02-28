
let rec cat l = match l with
  (a, b)::t -> (a^b)::cat t
  | _ -> [];;

cat [("hello"," world");("ciao ","mondo")]=["hello world"; "ciao mondo"];;
cat []=[];;

let cat2 l = List.map (fun (a, b) -> a^b) l;;

cat2 [("hello"," world");("ciao ","mondo")]=["hello world"; "ciao mondo"];;
cat2 []=[];;

let rec agg = function
  h::d::t -> (h+d)::agg t
| _ as x -> x;;

agg [1;2;3;4;5;6]=[1+2;3+4;5+6];;
agg [1;2;3;4;5]=[1+2;3+4;5];;
agg [1]=[1];;
agg [ ]=[ ];;

let agg2 =
  let rec aux acc = function
    h::d::t -> aux ((h+d)::acc) t
  | h::t -> aux (h::acc) t
  | _ -> List.rev acc
  in aux [];;

agg2 [1;2;3;4;5;6]=[1+2;3+4;5+6];;
agg2 [1;2;3;4;5]=[1+2;3+4;5];;
agg2 [1]=[1];;
agg2 [ ]=[ ];;
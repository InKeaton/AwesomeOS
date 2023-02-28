
let rec agg = function x as
  h::d::t -> (h+d)::agg t
| h::[] -> h::[]
| _ -> [];;

agg [1;2;3;4;5;6]=[1+2;3+4;5+6];;
agg [1;2;3;4;5]=[1+2;3+4;5];;
agg [1]=[1];;
agg [ ]=[ ];;

let rec agg = function
  x as h::d::t -> (h+d)::agg t
| h::[] -> h::[]
| _ -> [];;
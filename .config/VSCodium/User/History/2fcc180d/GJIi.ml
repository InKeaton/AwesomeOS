
let rec select p l1 l2= match l1,l2 with
  h1::t1, h2::t2 -> if (p l1 l2) then h1::select p t1 t2 
                                 else h2::select p t1 t2
| [], [] -> []
| _ -> raise (Invalid_argument "select");;

select ( < ) [0;2;5] [1;3;4]=[0;2;4];;
select ( < ) [] []=[];;

try select ( < ) [0] [1;3;5]=[] with _ -> true;;

let acc_select p l1 l2 = 
  let rec aux acc = function
    h1::t1, h2::t2 -> aux (if (p l1 l2) then h1 else h2)
  | [], [] -> List.rev acc
  | _ -> raise (Invalid_argument "select");;
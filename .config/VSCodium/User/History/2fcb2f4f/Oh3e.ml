
let all_pairs x = List.map (fun y -> x,y);; 

all_pairs 1 [ "Kirk"; "Spock"; "McCoy" ] = [ (1, "Kirk"); (1, "Spock"); (1, "McCoy") ];;
all_pairs 1 [] = [];;
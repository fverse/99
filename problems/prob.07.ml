(* Flatten a nested list *)

type 'a node =
  | One of 'a 
  | Many of 'a node list

let rec flatten (ls: 'a node list): 'a list = 
  match ls with 
  | [] -> []
  | One x :: rest -> x :: flatten rest
  | Many xs :: rest -> flatten xs @ flatten rest
;;

(* print_endline expects a string so we need to concatenate the list to a single string *)
print_endline (String.concat " " (flatten [One "a"; Many [One "b"; Many [One "c" ;One "d"]; One "e"]]));;



(** Problem 2: Last two elements of a list *)

let rec last_two (el: 'a list): ('a * 'a) option = 
  match el with
  | [] -> None
  | [_] -> None
  | [p; q] -> Some(p,  q)
  | _ :: rest -> last_two rest;;

let var = last_two ["1"; "2";  "3"];;



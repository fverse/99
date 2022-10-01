(** Problem 1: Tail of a list *)

let rec last (e: 'a list): 'a option = 
  match e with
  | [] -> None
  | [x] -> Some x
  | _ :: rest -> last rest;;


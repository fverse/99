(* Problem 3: N'th element of a list *)

let rec nth_el (ls: 'a list) (n: int): 'a option = 
  match ls with
  | [] -> None
  | _ when n < 0 -> raise (Failure "invalid argument")
  | x :: _ when n == 1 -> Some(x) 
  | _ :: rest -> nth_el (rest) (n-1)
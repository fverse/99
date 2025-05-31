(* Palindrome *)

let rev (xs: 'a list): 'a list =
  let rec rev' (xs: 'a list) (acc: 'a list): 'a list =
    match xs with
    | [] -> acc
    | x :: rest -> rev' rest (x :: acc)
  in rev' xs []

let is_palindrome (ls: 'a list): bool =
   match ls with
    | [] -> true
    | [_] -> true
    | _ -> ls = rev ls
;;

(* print_endline (string_of_bool (is_palindrome [1; 2])) *)

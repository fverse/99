let rev (xs: 'a list): 'a list =
  let rec rev' (xs: 'a list) (acc: 'a list): 'a list =
    match xs with
    | [] -> acc
    | x :: rest -> rev' rest (x :: acc)
  in rev' xs []



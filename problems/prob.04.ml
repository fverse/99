
let rec length (arr: 'a list): int = 
  match arr with
  | [] -> 0
  | _ :: rem -> 1 + length rem

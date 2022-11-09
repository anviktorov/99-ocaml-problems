let rec last_two = function
  | [ ] | [_] -> None
  | x1 :: x2 :: [] -> Some (x1, x2)
  | x1 :: x2 :: xs -> last_two xs

(* Test *)
let () =
  assert ((Some ("c", "d")) = last_two [ "a"; "b"; "c"; "d" ])

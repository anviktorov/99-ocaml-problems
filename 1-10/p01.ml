let rec last = function
    [] -> None
  | x :: [] -> Some (x)
  | x :: xs -> last xs

(* Test *)
let () =
  assert ((Some "d") = last [ "a"; "b"; "c"; "d" ])

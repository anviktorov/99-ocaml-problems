let rec nth n = function
    [ ] -> None
  | x :: xs -> if n = 0 then Some x else nth (n - 1) xs

(* Test *)
let () =
  assert (Some "c" = nth 2 [ "a"; "b"; "c"; "d"; "e" ])

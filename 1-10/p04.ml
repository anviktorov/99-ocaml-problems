let length =
  let rec aux acc = function
      [ ] -> acc
    | x :: xs -> aux (acc + 1) xs
  in
  aux 0

(* Test *)
let () =
  assert (5 = length [ "a"; "b"; "c"; "d"; "e" ])

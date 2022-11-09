let rev =
  let rec aux acc = function
      [ ] -> acc
    | x :: xs -> aux (x :: acc) xs
  in
  aux []

let () =
  assert ([ "a"; "b"; "c" ] = rev [ "c"; "b"; "a" ])

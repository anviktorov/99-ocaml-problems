type 'a node =
    One of 'a
  | Many of 'a node list

let flatten lst =
  let rec aux acc = function
      [ ] -> acc
    | One x :: xs -> aux (x :: acc) xs
    | Many x :: xs -> aux (aux acc x) xs
  in
  List.rev (aux [ ] lst)

let () =
  assert ([ "a"; "b"; "c"; "d"; "e" ] = flatten [One "a"; Many [One "b"; Many [One "c" ;One "d"]; One "e"]])

let rec last = function
    [] -> None
  | x :: [] -> Some (x)
  | x :: xs -> last xs

(* Test *)

let () =
  let lst = [ "a"; "b"; "c"; "d" ] in
  match last lst with
  | Some x -> print_endline (if x = "d" then "True" else "False")
  | None -> print_endline "False"

let palindrome_p lst =
  lst = List.rev lst

let () =
  assert (true = palindrome_p [ "x"; "a"; "m"; "a"; "x" ]);
  assert (false = palindrome_p [ "a"; "b" ])

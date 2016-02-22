let shift str = String.sub str 1 (String.length str - 1) ^ String.make 1 (String.get str 0)

let rec loop text = function
  | 0 -> ()
  | n -> print_endline text;
         loop (shift text) (n - 1)

let text =
  print_string "Enter some text: ";
  read_line ()

let num =
  print_string "Enter line amount: ";
  try read_int () with _ -> ~-1

let () = loop text (num + 1)

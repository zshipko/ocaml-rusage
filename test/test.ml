let get_maxrss () =
  let usage = Rusage.get SELF in
  usage.maxrss

let () =
  let a = get_maxrss () in
  let _s = Bytes.make (1024 * 1024 * 16) (char_of_int 0) in
  let b = get_maxrss () in
  assert (a < b);
  print_endline "OK"

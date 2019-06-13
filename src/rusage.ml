type t = {
  utime : float;
  stime : float;
  maxrss : int64;
  ixrss : int64;
  idrss : int64;
  isrss : int64;
  minflt : int64;
  majflt : int64;
  nswap : int64;
  inblock : int64;
  oublock : int64;
  msgsnd : int64;
  msgrcv : int64;
  nsignals : int64;
  nvcsw : int64;
  nivcsw : int64
}

type who = SELF | CHILDREN

external get : who -> t = "unix_getrusage"

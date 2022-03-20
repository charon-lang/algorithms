swap <-|
  $0 $1 > -> $1 $0
  $0 $1

check <-|
  $..0 len 2 < -> 1
  $0 $1 < -> 0
  $..1 check

pass_through <-|
  $..0 len 1 eq -> $0
  $..0 len 2 eq -> $..0 swap
  $1 $0 > -> $..2 $0 $1
  $..1 pass_through $0

sort <-|
  $..0 check 0 eq -> $..0 pass_through sort
  $..0

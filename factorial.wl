factorial <-|
  ( $0 0 eq ) ( $0 1 eq ) or  -> 1
  $0 ( $0 1 sub factorial ) mul

5 factorial

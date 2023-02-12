proc fibI(n: int): int =
  if n < 2: n else: fibI(n-2) + fibI(n-1)

proc fib(x: int): int =
  return fibI(x)

proc main =
  let s = fib(35)
  echo s

main()
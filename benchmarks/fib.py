def fibI(n):
  if n < 2:
    return n
  else:
    return fibI(n-2) + fibI(n-1)

def fib(x):
  return fibI(x)

def main():
  s = fib(35)
  print(s)

main()


def iterative_fib(n)
 return nil if n < 0
 a = 0
 b = 1
 temp = 0
  while n >= 0 do
    temp = a
    a = a + b
    b = temp
    n -= 1
  end
  return b
end


# iterative version of the fibonnaci sequence
def iterative_fib(n)
# find the fibonnaci number by adding the 2 numbers preceeding it
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

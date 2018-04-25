
# iterative version of the fibonnaci sequence
def fib(n)
# find the fibonnaci number by adding the 2 numbers preceeding it
 a = 0
 b = 1
 temp = 0
  while n >= 0 do
    temp = a
    a = a + b
    b = temp
    n -= 1
  end
  puts "fibonnaci number is: #{b}"
  return b
end

i = 0
10.times do
  puts "calling fib(#{i})"
  fib(i)
  i += 1
end


=begin
Output
calling fib(0)
fibonnaci number is: 0
calling fib(1)
fibonnaci number is: 1
calling fib(2)
fibonnaci number is: 1
calling fib(3)
fibonnaci number is: 2
calling fib(4)
fibonnaci number is: 3
calling fib(5)
fibonnaci number is: 5
calling fib(6)
fibonnaci number is: 8
calling fib(7)
fibonnaci number is: 13
calling fib(8)
fibonnaci number is: 21
calling fib(9)
fibonnaci number is: 34
=end

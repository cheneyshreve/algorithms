require 'benchmark'
require_relative 'iterative_fibonnaci'
require_relative 'fibonnaci_recursive'


n = 20
Benchmark.bm(5) do |x|
  x.report("iterative fib(20)") do
    for i in 0..n do
      iterative_fib(i)
    end
  end


  x.report("recursive fib(20)") do
    for i in 0..n do
      recursive_fib(i)
    end
  end


end

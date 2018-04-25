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

=begin
user     system      total        real
iterative fib(20)  0.000023   0.000003   0.000026 (  0.000018)
recursive fib(20)  0.002470   0.000004   0.002474 (  0.002482)
=end

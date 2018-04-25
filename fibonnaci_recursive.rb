def recursive_fib(n)
  return nil if n < 0
  if (n == 0)
    # #1
    return 0
  elsif (n == 1)
    # #2
    return 1
  else
    # #3
    return recursive_fib(n-1) + recursive_fib(n-2)
  end
end

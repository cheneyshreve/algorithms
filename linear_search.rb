=begin
write a Ruby method that takes a number, n, and prints the
worst-case number of iterations for linear search to find
an item in collections of size one to n. Use it to generate
a table of worst-case iterations of collections up to size 10.
=end

def linear_search(collection,n)
  if n > 0
    return puts "Worst-case scenario for a linear search" +
    "of size #{n} is #{collection.length}."
  else
    return nil
  end
end

1.upto(10) do |i|
  count = i
  collection = Array.new(count) { rand(1..10) }
  n = collection.length
  linear_search(collection, n)
end

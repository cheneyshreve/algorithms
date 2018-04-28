
# original version, assignment is to find & apply code optimizations
def poorly_written_ruby(*arrays)
  combined_array = []
  arrays.each do |array|
    array.each do |value|
      combined_array << value
    end
  end

  sorted_array = [combined_array.delete_at(combined_array.length - 1)]

  for val in combined_array
    i = 0
    while i < sorted_array.length
      if val <= sorted_array[i]
        sorted_array.insert(i,val)
        break
      elsif i == sorted_array.length - 1
        sorted_array << val
        break
      end
      i += 1
    end
  end
  sorted_array
end


# code optimized version
def poorly_written_ruby_opt(*arrays)

  combined_array = []

  arrays.each do |array|
  combined_array << array
  end
  combined_array.flatten!

  sorted_array = [combined_array[-1]]

  for val in combined_array
    i = 0
    while i < sorted_array.length
      current = sorted_array[i]
      if val < current
        sorted_array.insert(i, val)
        break
      end
      i += 1
    end

  end
  sorted_array
end


=begin
Code optimizations made
#1 The fist step is concatenating the arrays. The code in the example uses a nested loop.
 We can optimize this to use one loop and the flatten method, which will
 condense the values of the multidimensional combined_array into 1D array.
 We're making some tradeoffs using the flatten method. If you look at the source code
 for flatten, it makes a copy of the array, which takes additional memory, however,
 since the initial code is iterating over the individual elements for each array
  in the inner loop, which will take O(n) time, we're likely saving time by using
  flatten and making a copy only once. A bonus, I think, is we also improve readbility.
#2 We can rewrite the statement defining sorted_array to equal the last element in the array,
which allows us to also remove the second conditional within the while loop
#4 Define a variable, current, and modify <= to be = in the first conditional so that we
reduce the number of times we're accessing the sorted_array

=end

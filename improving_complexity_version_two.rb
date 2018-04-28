# code optimized version
def poorly_written_ruby_time_opt(*arrays)

  combined_array = []

  arrays.each do |array|
  combined_array << array
  end
  combined_array.flatten!

  sorted_array = [combined_array[-1]]



end

=begin
# we can use an algo with better run time than the original sort, which was linear O(n)
# for the outer loop and the inner loop for O(n^2) for time complexity, such as quick sort, merge sort,
# or heap sort, as they use a divide and conquer approach that has O(n log n) run time.
# When we compare these divide and conquer algos, heap sort has better space complexity, O(1) compared
# to the others, which have O(nlogn), so I'll implement the heap sort above.
=end

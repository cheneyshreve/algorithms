
def quick_sort(collection)
  return collection if collection.size <= 1
  pivot = collection.sample
  left,right = collection.partition{|e| e < pivot }
  quick_sort(left) + quick_sort(right)
end

def poorly_written_ruby_time_opt(*arrays)
  combined_array = []
  arrays.each do |array|
  combined_array << array
  end
  combined_array.flatten!
  quick_sort(combined_array)
end

=begin
# we can use an algo with better run time than the original sort, which had O(n^2) time complexity.
 We could replace that with quick sort, merge sort, or heap sort, as they use a divide and conquer approach that has O(n log n) run time. Quick sort is considered to be the best choice for time efficiency, even though
 it has the same average run time, yet typically performs better, so I'll implement that in this step. However, when we compare these divide and conquer algos, heap sort has better space complexity, O(1) compared to the others, which have O(nlogn), so I'll consider implementing the heap sort in the next step of the assignment on space complexity and also consider other influencing factors.
=end

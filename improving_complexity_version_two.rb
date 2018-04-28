
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

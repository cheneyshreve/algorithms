# optimize the code for space efficiency using heap sort
# heap sort code modified after codecodex.com
#  mods include: adding swap method, renaming variables to improve readibility
def swap(array,first,last)
  tmp = array[first]
  array[first] = array[last]
  array[last] = tmp
end

def heap_sort(array)
  n = array.size
  a = [nil] + array
  (n / 2).downto(1) do |i|
    down_heap(a, i, n)
  end
  while n > 1
    swap(a,1,n)
    n -= 1
    down_heap(a, 1, n)
  end
  a.drop(1)
end

def down_heap(a, parent, limit)
  parent_index = a[parent]
  while (child = 2 * parent) <= limit
     if child < limit && a[child] < a[child + 1]
       child += 1
     end
    break  if parent_index >= a[child]
    a[parent] = a[child]
    parent = child
  end
  a[parent] = parent_index
end

def poorly_written_ruby_space_opt(*arrays)
  combined_array = []
  arrays.each do |array|
  combined_array << array
  end
  combined_array.flatten!
  heap_sort(combined_array)
end

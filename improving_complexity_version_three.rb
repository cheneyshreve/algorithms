# optimize the code for space efficiency using heap sort
def heap_sort(array)
  n = array.size
  a = [nil] + array
  (n / 2).downto(1) do |i|
    down_heap(a, i, n)
  end
  while n > 1
    a[1], a[n] = a[n], a[1]
    n -= 1
    down_heap(a, 1, n)
  end
  a.drop(1)
end

def down_heap(a, parent, max)
  wk = a[parent]
  while (child = 2 * parent) <= max
    child += 1  if child < max and a[child] < a[child + 1]
    break  if wk >= a[child]
    a[parent] = a[child]
    parent = child
  end
  a[parent] = wk
end

def poorly_written_ruby_space_opt(*arrays)
  combined_array = []
  arrays.each do |array|
  combined_array << array
  end
  combined_array.flatten!
  heap_sort(combined_array)
end

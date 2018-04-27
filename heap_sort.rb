=begin
Modified from code from two sources:
http://www.codecodex.com/wiki/Heapsort
https://medium.com/@limichelle21/read-it-learn-it-build-it-sorting-algorithms-in-ruby-ead04b04baa6
=end

# returns heap values sorted by Max
def heap_sort(array)
  n = array.length - 1
  arr = array
  # build the heap
  (n / 2).downto(0) do |i|
    buildMaxHeap(arr, i, n)
  end

 #  until you reach the last element, swap the first and last values in the array
  while n > 0
    arr[0], arr[n] = arr[n], arr[0]
    n -= 1
    buildMaxHeap(arr, 0, n)
  end
  arr
end

def buildMaxHeap(array, parent, max)
  root = array[parent]
  # check values of children in comparison to the parent
  while (child = 2 * parent) <= max do
     if child < max && array[child] < array[child + 1]
       child += 1
     end
    # exit the loop if the root is the largest value
    break if root >= array[child]
    # swap parent value with child values if child is higher
     array[parent], parent = array[child], child
  end
  array[parent] = root
end

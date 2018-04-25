def binary_search_recursive(collection,value,low,high)

 mid = (low + high)/2
 return "Value not found." if mid > collection.length-1
 if collection[mid] > value
   return binary_search_recursive(collection, value, low, mid-1)
 elsif collection[mid] < value
   return binary_search_recursive(collection,value, mid+1, high)
 else
   return mid if (collection[mid] == value)
 end

end

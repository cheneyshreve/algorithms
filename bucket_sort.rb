
def insertion_sort(collection)
  sorted_collection = [collection.delete_at(0)]

  for val in collection
    sorted_collection_index = 0

    while sorted_collection_index < sorted_collection.length
      if val <= sorted_collection[sorted_collection_index]
        sorted_collection.insert(sorted_collection_index,val)
        break
      elsif sorted_collection_index == sorted_collection.length - 1
        sorted_collection.insert(sorted_collection_index + 1, val)
        break
      end

      sorted_collection_index += 1
    end

  end
  sorted_collection
end

# modified after http://www.growingwiththeweb.com/
# modifications made to the insertion sort method

def bucket_sort(array, bucket_size = 3)
  return nil if array.empty?
  # Determine minimum and maximum values
  min_value = array.min
  max_value = array.max

  # Initialise buckets
  bucket_count = ((max_value - min_value) / bucket_size).floor + 1
  buckets = Array.new(bucket_count)
  (0..buckets.length - 1).each do |i|
    buckets[i] = []
  end

  # Distribute input array values into buckets
  # use the min_value to define the index
  (0..array.length - 1).each do |i|
    buckets[((array[i] - min_value) / bucket_size).floor].push(array[i])
  end

# call insertion sort on the buckets
  array.clear
  (0..buckets.length - 1).each do |i|
    if !buckets[i].empty?
      arr = insertion_sort(buckets[i])
      array.push(arr)
    end
  end
  array.flatten
end

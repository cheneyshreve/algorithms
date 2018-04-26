def quick_sort(collection)

  if collection.length <= 1
    return collection
  else
    pivot = collection.sample
    collection.delete_at(collection.index(pivot))

    less = []
    greater = []

    collection.each do |x|
      if x <= pivot
        less << x
      else
        greater << x
      end
    end
    left = quick_sort(less)
    right = quick_sort(greater)
  end
  (left << pivot << right).flatten
end

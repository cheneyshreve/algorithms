require 'benchmark'
require_relative 'sorting/selection_sort'
require_relative 'sorting/insertion_sort'
require_relative 'sorting/bubble_sort'
require_relative 'sorting/merge_sort'

require_relative 'quick_sort'
require_relative 'heap_sort'
require_relative 'bucket_sort'


unsorted = Array.new(50) { rand(1..1000) }
Benchmark.bm(10) do |x|
  x.report("#selection_sort") do
    selection_sort(unsorted)
  end
  x.report("#insertion_sort") do
    insertion_sort(unsorted)
  end

  x.report("#bubble_sort") do
    bubble_sort(unsorted)
  end
  x.report("#merge_sort") do
    merge_sort(unsorted)
  end
  x.report("#quick_sort") do
    quick_sort(unsorted)
  end
  x.report("#heap_sort") do
    heap_sort(unsorted)
  end
  x.report("#bucket_sort") do
    bucket_sort(unsorted, bucket_size = 5)
  end
end

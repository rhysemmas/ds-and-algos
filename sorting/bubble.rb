def bubble_sort(array)
  # var to store whether the array is sorted
  sorted = false
  # var to store the index of the array which we have not yet sorted up to
  # (anything after this index is sorted)
  unsorted_until_index = array.length - 1

  while sorted == false
    # decrement the index by 1 in the range, as we will compare 1 to the right
    (0..unsorted_until_index - 1).each do |i|
      if array[i] > array[i + 1]
        # swap the values in the array if the left is greater than the right
        array[i], array[i + 1] = array[i + 1], array[i]
        # set sorted to false so we make sure to compare again in the next pass
        sorted = false
      else
        # if we have not made any swaps in the if above, set sorted to true as we are now in order
        sorted = true
      end
    end
    # decrement the unsorted until index so we don't compare values we know we've sorted now
    unsorted_until_index -= 1
  end

  array
end

ordered_array = bubble_sort([4, 2, 7, 1, 3, 69, 96, 102, 55, 8])
puts "ordered array: #{ordered_array}"

def insertion_sort(array)
  # loop from the 1 index of the array to the end
  (1..array.length - 1).each do |i|
    # save the value we will remove/compare against into a temp var
    temp_value = array[i]
    # setup a pointer to the left of value being removed
    left = i - 1
    # as long as we have not fallen off the left of the array
    while left >= 0
      # compare the left to the temp value, skip if it is smaller
      break unless array[left] > temp_value

      # if the left is larger, set the index to the right (the "gap") to the value of the left
      array[left + 1] = array[left]
      # decrement the left pointer so we can compare further back the array next time
      left -= 1
    end
    # insert our temp value for this pass to the right of our left pointer (into the "gap")
    array[left + 1] = temp_value
  end

  array
end

array = insertion_sort([6, 5, 4, 9, 2, 11])
puts "got array: #{array}"

array = insertion_sort([1, 2, 4, 9, 8, 11])
puts "got array: #{array}"

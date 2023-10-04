def selection_sort(array)
  # init sorted var as false
  sorted = false
  # set the start point for a pass - nothing is sorted now so start at index 0
  sorted_until_index = 0

  while sorted == false
    # iterate over the length of the array
    (sorted_until_index..array.length - 1).each do |i|
      # if we have a value in the array lower than our pass start point then swap them
      array[sorted_until_index], array[i] = array[i], array[sorted_until_index] if array[i] < array[sorted_until_index]

      # jump to the next iteration unless we have reached the end of the array
      next unless i == array.length - 1

      # increment the start point for the next pass
      sorted_until_index += 1

      # we have sorted the array if our sorted until index reaches the end of the array
      sorted = true if sorted_until_index == array.length - 1
    end
  end
  array
end

array = selection_sort([1, 3, 2, 7, 11, 10])
puts "got sorted array: #{array}"

array = selection_sort([-9, 3, 2, 7, 11, -5])
puts "got sorted array: #{array}"

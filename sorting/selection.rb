def selection_sort(array)
  # init a lowest value index var at the start of the array
  lowest_value_index = 0
  # init a starting index var at the start of the array
  starting_index = 0

  # for each index in the array (the value we will compare to)
  (starting_index..array.length - 1).each do |i|
    # start another loop through the array to find the lowest value
    (starting_index..array.length - 1).each do |j|
      # if we find a value lower than the current index, update our lowest_value_index var
      lowest_value_index = j if array[j] < array[lowest_value_index]
    end
    # swap the starting point of the pass with the lowest value found in the array
    array[i], array[lowest_value_index] = array[lowest_value_index], array[i]
    # increment the starting point for the next pass
    starting_index += 1
    # if our starting point is at the end of the array, we have finished sorting
    break if starting_index == array.length - 1
  end
  array
end

array = selection_sort([9, 7, 6, 8, 3, 1, 2])
puts "got selection sorted array: #{array}"

def not_quite_selection_sort(array)
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

array = not_quite_selection_sort([1, 3, 2, 7, 11, 10])
puts "got sorted array: #{array}"

array = not_quite_selection_sort([-9, 3, 2, 7, 11, -5])
puts "got sorted array: #{array}"

# is this just a bubble sort that bubbles small values to the left?
# i don't think so - i think it just doesn't find the smallest value which is
# what selection sort is meant to do: start at an index, find the smallest var in the
# array and swap it to that starting index
# yeah, pretty much doing this i think: https://stackoverflow.com/questions/59428286/selection-sort-storing-value-instead-of-index

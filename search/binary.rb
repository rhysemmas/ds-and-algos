def binary_search(array, search_value)
  lower_bound = 0
  upper_bound = array.length - 1

  # while loop until our lower and upper bounds meet
  while lower_bound <= upper_bound do
    # diving ints that will leave a remainder get rounded in ruby
    mid_point = (lower_bound + upper_bound) / 2

    # use elseif you weirdo
    if array[mid_point] == search_value
      return mid_point
    end

    # if mid point is greater, search value is somewhere on the left
    # so we set our upper bound to be the mid point
    if array[mid_point] > search_value
      upper_bound = mid_point - 1
    end

    # if our mid point is lower, search value is somewhere on the right
    # so we set our lower bound to be the mid point
    if array[mid_point] < search_value
      lower_bound = mid_point + 1
    end
  end
end

# Sorted array
# [2, 33, 45, 69, 102, 155]

index_of_search_value = binary_search([2, 33, 45, 69, 102, 155], 102)
puts "found index of search value: #{index_of_search_value}"

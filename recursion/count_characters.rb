def count_characters(array)
  # base case - if array only has one element, return its length
  return array[0].length if array.length == 1

  # solve the subset by recursively calling count_characters with the
  # array, minus the first element
  count = count_characters(array[1, array.length - 1])
  # sum the number of characters in the first element with whatever is
  # returned by the count_characters call above
  array[0].length + count
end

array = %w[ab c def ghij] # should return 10
count = count_characters(array)
puts "total number characters in array: #{count}"

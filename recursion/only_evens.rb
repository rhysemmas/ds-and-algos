# function that accepts an array of numbers and returns a new array
# containing just the even numbers
def only_even_numbers(array)
  # base case: if the array is empty, return an empty array
  return [] if array.empty?

  # subproblem: array less one element
  new_array = only_even_numbers(array[1, array.length - 1])
  # append the element we didn't remove if it is even
  new_array << array[0] if array[0].even?
  # return the new array
  new_array
end

# returns the new array in the wrong order!
array = only_even_numbers([0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
puts "got new array: #{array}"

array = only_even_numbers([8, 5, 2, 1, 6, 8, 9, 4, 2, 7, 10])
puts "got new array: #{array}"

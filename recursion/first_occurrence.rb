# returns the index of the first 'x' in a string
def first_x(string, starting_index)
  return starting_index if string[starting_index] == 'x'

  first_x(string, starting_index + 1)
end

index = first_x('abcdefghijklmnopqrstuvwxyz', 0)
puts "index of x: #{index}"

def first_x_no_extra_arg(string)
  return 0 if string[0] == 'x'

  # keeps shortening the string and adding one to the return value
  # essentially counting the number of times we call the func
  # until x ends up at index 0 and gets caught by the base case
  first_x_no_extra_arg(string[1, string.length - 1]) + 1
end

index = first_x('abcdefghijklmnopqrstuvwxyz', 0)
puts "index of x: #{index}"

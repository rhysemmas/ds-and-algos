# original function:
def slow_greatest_number(array)
  # i var continues to live after the for loop as 'for' does not create a new scope
  # for is syntactic sugar for delcaring a local var before using .each
  for i in array
    is_i_value_the_greatest = true

    array.each do |j|
      if j > i
        is_i_value_the_greatest = false
      end
    end
  end

  if is_i_value_the_greatest
    return i
  end
end

greatest_value = slow_greatest_number([1, 5, 7, 9])

puts "found greatest value in array: #{greatest_value}"

def fast_greatest_number(array)
  greatest_value = 0
  array.each do |i|
    if i > greatest_value
      greatest_value = i
    end
  end

  return greatest_value
end

greatest_value = fast_greatest_number([9, 7, 5, 1])

puts "found greatest value in array: #{greatest_value}"

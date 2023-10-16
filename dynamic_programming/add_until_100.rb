# method to optimise (too many recursive calls - get stack too deep error)
def add_until_100(array)
  return 0 if array.empty?

  return add_until_100([1, array.length - 1]) if array[0] + add_until_100([1, array.length - 1]) > 100

  array[0] + add_until_100([1, array.length - 1])
end

# NOTE: is this actually the wrong way round - wouldn't we want to sum from left to right?
def add_until_100_improved_recursion(array)
  return 0 if array.empty?

  sum = add_until_100_improved_recursion(array[1, array.length - 1])
  return sum if sum + array[0] > 100

  sum + array[0]
end

puts "got sum: #{add_until_100_improved_recursion([1, 100])}"

# NOTE: will sum left to right
def add_until_100_bottom_up(array)
  sum = 0
  array.each do |i|
    return sum if sum + i > 100

    sum += i
  end

  sum
end

puts "got sum: #{add_until_100_bottom_up([1, 2, 100])}"

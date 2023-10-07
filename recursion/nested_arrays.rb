def print_all_the_numbers(array)
  array.each do |i|
    print_all_the_numbers(i) if i.is_a?(Array)
    puts i if i.is_a?(Integer)
  end
end

array = [
  1,
  2,
  3,
  [4, 5, 6],
  7,
  [8,
   [9, 10, 11,
    [12, 13, 14]]],
  [15, 16, 17, 18, 19,
   [20, 21, 22,
    [23, 24, 25,
     [26, 27, 28, 29]], 30, 31], 32], 33
]

print_all_the_numbers(array)

def also_prints_all_the_numbers_cus_ruby_is_wild(array)
  array.each { |i| puts i }
end

also_prints_all_the_numbers_cus_ruby_is_wild(array)

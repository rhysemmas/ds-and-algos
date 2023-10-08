def triangular_numbers(n)
  return 0 if n.zero?

  n + triangular_numbers(n - 1)
end

total = triangular_numbers(7)
puts "total for 7: #{total}"

def intersection(array1, array2)
  hash = {}
  intersection_array = []

  array1.each { |v| hash[v] = false }
  array2.each { |v| hash[v] = hash.key?(v) ? true : false }

  hash.each do |k, v|
    intersection_array.append(k) if v == true
  end

  intersection_array
end

array = intersection([1, 2, 3, 4, 5], [0, 2, 4, 6, 8])
puts "got array: #{array}"

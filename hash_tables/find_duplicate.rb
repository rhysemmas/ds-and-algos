# find the first duplicate character in an array
def find_duplicate(array)
  hash = {}
  array.each do |v|
    return v if hash.key?(v)

    hash[v] = true
  end

  ''
end

duplicate = find_duplicate(%w[a b c d c e f f])
puts "found duplicate: #{duplicate}"

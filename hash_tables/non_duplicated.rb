# accepts a string, returns the first non-duplicated character
def non_duplicated(string)
  hash = {}

  string.each_char do |c|
    if hash.key?(c)
      hash[c] += 1
    else
      hash[c] = 1
    end
  end

  string.each_char do |c|
    return c if hash[c] == 1
  end
end

character = non_duplicated('minimum')
puts "got non-duplicated character: #{character}"

# This is O(n) - it is really O(2n), is there anyway to avoid iterating the array (or the hash)
# to find the non-duplicated value?

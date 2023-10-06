# accepts a string that contains all letters of the alphabet except one,
# returns the missing letter
def missing_letter(string)
  # setup a map with all the letters of the alphabet
  hash = {}
  ('a'..'z').each do |c|
    hash[c] = false
  end

  string.each_char do |s|
    hash[s] = true
  end

  hash.each do |k, v|
    return k if v == false
  end

  ''
end

letter = missing_letter('the quick brown box jumps over a lazy dog')
puts "found missing letter: #{letter}"

# this is O(n) - it is really O(26 + N + 26), but is there any way to speed it up,
# and maybe drop the iteration of the alphabet map to see which char was missing?
#
# can drop the first iteration by just storing the string in the map,
# then iterating the alphabet and checking for the missing key
def slightly_faster_missing_letter(string)
  hash = {}

  string.each_char do |s|
    hash[s] = true
  end

  ('a'..'z').each do |c|
    return c unless hash.key?(c)
  end

  ''
end

letter = missing_letter('the quick brown fox jumps over a lazy bog')
puts "found missing letter: #{letter}"

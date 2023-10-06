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

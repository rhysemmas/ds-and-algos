# similar to staircase problem
def unique_paths(rows, columns)
  return 1 if rows == 1 || columns == 1

  unique_paths(rows - 1, columns) + unique_paths(rows, columns - 1)
end

paths = unique_paths(3, 7) # expects 28
puts "got number of unique shortest paths: #{paths}"

# Input: m = 3, n = 2
# Output: 3
# Explanation: From the top-left corner, there are a total of 3 ways to reach the bottom-right corner:
# 1. Right -> Down -> Down
# 2. Down -> Down -> Right
# 3. Down -> Right -> Down
paths = unique_paths(3, 2)
puts "got number of unique shortest paths: #{paths}"

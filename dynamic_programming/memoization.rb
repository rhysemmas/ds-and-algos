# improve this func with memoization
def golomb(n)
  puts 'golomb called'
  return 1 if n == 1

  1 + golomb(n - golomb(golomb(n - 1)))
end

puts "got golomb of 5: #{golomb(5)}"

def golomb_memo(n, memo)
  puts 'golomb_memo called'
  return 1 if n == 1

  memo[n] = 1 + golomb_memo(n - golomb_memo(golomb_memo(n - 1, memo), memo), memo) if memo[n].nil?

  memo[n]
end

puts "got golomb_memo of 5: #{golomb_memo(5, {})}"

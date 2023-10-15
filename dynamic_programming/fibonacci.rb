# pure recursive example
# 0, 1, 1, 2, 3, 5, 8
# fib takes n which is the nth element of the fibonacci sequence to compute
def fib(n)
  puts 'fib called'
  return n if [0, 1].include?(n)

  fib(n - 1) + fib(n - 2)
end

puts "calling fib with 6: #{fib(6)}"
# O(2^n)

# dp example (memoization)
# fib_memo takes nth element and memo which is a hash table to store overlapping subproblem solutions
def fib_memo(n, memo)
  puts 'fib_memo called'
  return n if [0, 1].include?(n)

  memo[n] = fib_memo(n - 1, memo) + fib_memo(n - 2, memo) if memo[n].nil?

  memo[n]
end

puts "calling fib_memo with 6: #{fib_memo(6, {})}"
# O(2n - 1) == O(n)

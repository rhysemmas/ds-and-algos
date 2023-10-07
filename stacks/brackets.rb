class Stack
  def initialize
    @data = []
  end

  def push(element)
    @data << element
  end

  def pop
    @data.pop
  end

  def read
    @data.last
  end
end

# pseudo-syntax checker, every opening brace in a string should have a closing
# one of the same type and in the right order, e.g: ({[]})
def syntax_checker(string)
  stack = Stack.new
  bracket_types = { '(' => ')', '{' => '}', '[' => ']' }

  string.each_char do |c|
    # if we have an opening bracket, push it to the stack and skip to next iteration
    stack.push(c) && next if bracket_types.key?(c)

    # iterate over the values of the map (closing brackets) and check if they match our char
    bracket_types.each_value do |v|
      # skip to next if no match
      next unless c == v

      # pop from the stack if we do have a closing bracket, check for failure conditions
      open_bracket = stack.pop
      return "type 2: unexpected closing bracket before open: #{v}" if open_bracket.nil?
      return "type 3: got non matching brackets: #{open_bracket} and #{v}" if bracket_types[open_bracket] != v
    end
  end

  # if there is anything left on the stack at the end of our string parse, we have an unlcosed open bracket
  return "type 1: unclosed open bracket: #{stack.read}" unless stack.read.nil?

  nil
end

# happy path
error = syntax_checker('({[]})')
puts "got syntax error: #{error}" unless error.nil?

# type 1
error = syntax_checker('(')
puts "got syntax error: #{error}" unless error.nil?

# type 2
error = syntax_checker('}')
puts "got syntax error: #{error}" unless error.nil?

# type 3
error = syntax_checker('[)')
puts "got syntax error: #{error}" unless error.nil?

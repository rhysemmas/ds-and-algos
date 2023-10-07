class Stack
  def initialize
    @data = []
  end

  def push(element)
    @data << element
  end

  def pop
    # could use .pop but then where's the fun?
    last = @data[@data.length - 1]
    @data = if @data.length == 1
              []
            else
              @data[0..@data.length - 2]
            end
    last
  end

  def read
    @data[@data.length - 1]
  end
end

def reverse(string)
  stack = Stack.new

  string.each_char do |c|
    stack.push(c)
  end

  reversed_string = ''
  reversed_string += stack.pop while stack.read
  reversed_string
end

reversed_string = reverse('abcdefg')
puts "got reversed string: #{reversed_string}"

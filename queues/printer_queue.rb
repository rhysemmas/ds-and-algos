class Queue
  def initialize
    @data = []
  end

  def enqueue(element)
    @data << element
  end

  def dequeue
    # ruby's shift returns first element from array and removes it
    @data.shift
  end

  def read
    @data.first
  end
end

class PrintManager
  def initialize
    @queue = Queue.new
  end

  def queue_print_job(document)
    @queue.enqueue(document)
  end

  def run
    print(@queue.dequeue) while @queue.read
  end

  private

  def print(document)
    puts "printing document: #{document}"
  end
end

print_manager = PrintManager.new
print_manager.queue_print_job('Document 1')
print_manager.queue_print_job('Document 2')
print_manager.queue_print_job('Document 3')
print_manager.run

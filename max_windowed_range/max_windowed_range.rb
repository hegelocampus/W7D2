
def naive_max_window_range(arr, window)
  current_max_range = 0
  (0..arr.length - window).each do |idx|
    cur_range = arr[idx...(idx + window)]
    val = cur_range.max - cur_range.min
    current_max_range = val if val > current_max_range
  end

  current_max_range
end

class MyQueue
  def initialize
    @store = []
  end

  def peek
    @store[0]
  end

  def size
    @store.length
  end

  def empty?
    self.size == 0
  end

  def enqueue(val)
    @store << val
  end

  def dequeue
    @store.shift
  end


end



class MyStack
  def initialize
    @store = []
    @max = Hash.new
  end

  def peek
    @store[-1]
  end

  def size
    @store.length
  end

  def empty?
    self.size == 0
  end

  def pop
    del = @store.pop
    
    
  end

  def push(val)
    @store.push([val, self.max])
  end

  def max
    
  end

end

class StackQueue

  def initialize
    @stack_in = MyStack.new
    @stack_out = MyStack.new
  end

  def size
    @que.length
  end

  def empty?
    self.size == 0
  end

  def enqueue(val)
    @stack_in.push(val)
  end

  ## If not empty it is able to immediately return the element
  ## this makes the stackqueue more efficient than a normal queue
  def dequeue
    if stack_out.empty?
      until @stack_in.empty?
        ele = @stack_in.pop
        @stack_out.push(ele)
      end
    end
    return @stack_out.pop
  end

end


class MinMaxStack
  def initialize

  end

end
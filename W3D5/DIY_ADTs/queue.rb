class Queue
    attr_reader :qq

    def initialize
      # create ivar to store stack here!
      @qq= []
    end

    def [](index)
        @qq[index]
    end

    # def []=(index, ele)
    #     @qq[index] = ele
    # end

    def enqueue(el)
      # adds an element to the queue
      @qq.push(el)
    end

    def dequeue
      # removes one element from the queue
        @qq.shift
    end

    def peek
      # returns, but doesn't remove, the top element in the stack
      @qq.first
    end


  end
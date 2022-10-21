class Stack
    attr_accessor :ivar

    def initialize
      # create ivar to store stack here!
      @ivar = []
    end

    def [](index)
        @ivar[index]
    end

    def []=(index, ele)
        @ivar[index] = ele
    end

    def push(el)
      # adds an element to the stack
      @ivar << el
    end

    def pop
      # removes one element from the stack
        @ivar = @ivar[0..-2]
        @ivar[-1]
    end

    def peek
      # returns, but doesn't remove, the top element in the stack
      @ivar.first
    end


  end
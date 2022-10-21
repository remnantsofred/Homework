class Map
    attr_accessor :map

    def initialize
      # create map to store stack here!
      @map = []
    end

    # def [](index)
    #     @map[index]
    # end

    # def []=(index, ele)
    #     @map[index] = ele
    # end

    def set(key, value)
      # adds a key-value pair to the map
        @map.each do |kvpair| 
            if kvpair[0] == key
                return kvpair[1] = value
            end
        end
        @map << [key, value]
    end

    def get(key)
        # adds a key-value pair to the map
        @map.each do |kvpair| 
            if kvpair[0] == key
                return kvpair[1]
            end
        end
        nil
    end

    def delete(key)
      # removes one element from the stack
        @map.reject { |kvpair| kvpair[0] == key }
    end

    def show
      # returns, but doesn't remove, the top element in the stack
      @map.first
    end


  end
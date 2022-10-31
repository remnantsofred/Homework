require 'rspec'
require "LRU_cache"

describe LRUCache do
  describe '#initialize' do
    # it "should accept a number as an argument" do
    #   # johnny_cache = LRUCache.new(4)
    #   expect(LRUCache.new(4)).to_not raise_error
    # end

    it "sets the size of the cache to equal the number passed in" do
      johnny_cache = LRUCache.new(4)
      expect(johnny_cache.size).to eq (4)
    end

    it "should initially be empty" do
      expect(LRUCache.new(4).count).to eq(0)
    end

  end



end
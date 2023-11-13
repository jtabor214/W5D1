require "byebug"

class MaxIntSet

  attr_reader :max
  attr_accessor :store

  def initialize(max)
    @store = Array.new(max, false)
    @max = max
  end

  def insert(num)
    is_valid?(num)
    i = num % @store.length
    @store[i] = true
  end

  def remove(num)
    is_valid?(num)
    i = num % @store.length
    @store[i] = false

  end

  def include?(num)
    is_valid?(num)
    @store[num]
  end

  private

  def is_valid?(num)
    raise 'Out of bounds' if num > @store.length || num < 0
  end

  def validate!(num)
  end
end

class IntSet
  attr_accessor :store

  def initialize(num_buckets = 20)
    @store = Array.new(num_buckets) { Array.new }
  end

  def insert(num)
    return false if include?(num)
      self[num] << num 
      num
  #   if include?(num) == false
  #     self.store[num] << num
  #   end
  #   false
  end

  def remove(num)
  end

  def include?(num)
    self[num].include?(num)
  end

  private

  def [](num)
    self.store(num % num_buckets)
  end

  def num_buckets
    @store.length
  end
end

class ResizingIntSet
  attr_reader :count

  def initialize(num_buckets = 20)
    @store = Array.new(num_buckets) { Array.new }
    @count = 0
  end

  def insert(num)
  end

  def remove(num)
  end

  def include?(num)
  end

  private

  def num_buckets
    @store.length
  end

  def resize!
  end

  def [](num)
    # optional but useful; return the bucket corresponding to `num`
  end
end
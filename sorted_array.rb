class SortedArray
  attr_accessor :internal_arr # This is for convenience in the tests.

  def initialize(input_arr=[])
    @internal_arr = []
    # Fill in the rest of the initialize method here.
    # What should you do with each element of the incoming array?
    input_arr.each { |x|
      add(x)
    }
  end

  def add(new_ele)
    # Hint: Use the Array#insert method.
    @internal_arr.insert(first_larger_index(new_ele), new_ele)
    #raise NotImplementedError.new("You need to implement the add method!")
  end

  def size
    @internal_arr.size
  end

  def [](index)
    @internal_arr[index]
    #raise NotImplementedError.new("You need to implement the [] method!")
  end

  def first_larger_index(target, start_ind=0, end_ind=@internal_arr.size)
    i = start_ind
    @internal_arr.slice(start_ind..end_ind).each { |x|
      i += 1 if target > x}

      return i

    #raise NotImplementedError.new("You need to implement the first_larger_index method!")
  end

  def index(target)
    @internal_arr.find_index(target)
    #raise NotImplementedError.new("You need to implement the index method!")
  end
end

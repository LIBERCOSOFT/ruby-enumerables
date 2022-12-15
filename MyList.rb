require_relative 'MyEnumerable'

class MyList
  include MyEnumerable

  def initialize(*args)
    @list = args
  end

  def each
    counter = 0
    while counter < @list.length
      yield @list[counter]
      counter += 1
    end
  end
end

newList = MyList.new(1, 2, 3, 4)
newList.filter { |e| e.even? }

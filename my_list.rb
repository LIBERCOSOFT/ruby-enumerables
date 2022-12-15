require_relative 'my_enumerable'

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

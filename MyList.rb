class MyList
  def initialize(*args)
    @list = args
  end

  def each; end
end

newList = MyList.new(1, 2, 3, 4)
puts newList

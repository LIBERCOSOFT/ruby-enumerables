module MyEnumerable
  def all?
    result = true
    each { |e| result = false unless yield e }
    print result
  end

  def any?
    result = false
    each do |e|
      result = true if yield e
    end
    print result
  end

  def filter
    result_array = []
    each do |e|
      result_array.push e if yield e
    end
    print result_array
  end
end

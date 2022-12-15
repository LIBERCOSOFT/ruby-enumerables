module MyEnumerable
  
  def all?
    result = true
    each{|e| result = false unless yield e}
    print result
  end

  def any?
    result = false
    each {|e|
      if yield e
      result = true
      end
    }
    print result
  end

  def filter
    result_array = Array.new
    each { |e|
      if yield e
        result_array.push e
      end      
    }
    print result_array
  end
end
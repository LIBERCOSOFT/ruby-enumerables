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
end
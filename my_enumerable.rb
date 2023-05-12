module MyEnumerable
  def all?
    each do |num|
      unless yield num
        puts false
        return
      end
    end
    puts true
    nil
  end

  def any?
    each do |num|
      if yield num
        puts true
        return
      end
    end
    puts false
    nil
  end

  def filter
    filtered = []
    each do |num|
      filtered.push(num) if yield num
    end
    puts filtered.inspect
  end
end

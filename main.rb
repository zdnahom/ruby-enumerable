require_relative 'my_enumerable'

class MyList
  include MyEnumerable

  def initialize(list)
    @list = list
  end

  def each(&block)
    @list.each(&block)
  end
end

list = MyList.new([1, 2, 3, 4])
list.each { |e| puts e }
list.all? { |e| e < 5 }
list.any? { |e| e < 5 }
list.filter(&:even?)

require 'my_enumerable'
include MyEnumerable
class MyList
  def initialize(*list)
    @list = list
  end
  def my_each (*array)
    i = 0
    while i < array.length
      yield array[i]
      i += 1
    end
  end
end

list = MyList.new(1, 2, 3, 4)
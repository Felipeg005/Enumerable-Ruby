require 'my_enumerable'

class MyList
  include MyEnumerable
  def initialize (*list)
    @list= list
  end
  def my_each
    @list.each do |i|
      yield i
    end
  end
end


require_relative 'my_enumerable'

class MyList
  include MyEnumerable
  def initialize(*list)
    @list= list
  end
  def my_each
    @list.each do |i|
      yield i
    end
  end
end

list = MyList.new(1, 2, 3, 4)
puts(list.all? {|e| e < 5})
puts(list.all? {|e| e > 5})

puts(list.any? {|e| e == 2})
puts(list.any? {|e| e == 5})



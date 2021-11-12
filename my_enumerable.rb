module MyEnumerable
  def all?
    my_each do |i|
    return true unless block_given?
    true_false = yield(i)
    return false unless true_false
    end
  return true
  end
end

module MyEnumerable
  def my_all
    return true unless block_given?
    true_false = yield(element)
    return false unless true_false
  end
  # return true
end

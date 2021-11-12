# frozen_string_literal: true

module MyEnumerable
  def all?
    my_each do |i|
      return true unless block_given?

      true_false = yield(i)
      return false unless true_false
    end
    true
  end

  def any?
    my_each do |i|
      return false unless block_given?

      true_false = yield i
      return true unless true_false == false
    end
    false
  end

  def filter
    result = []
    my_each do |i|
      result.push(i) if yield(i)
    end
    print result
  end
end

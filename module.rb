module MyEnumerable
  def my_all?
    each do |e|
      return true unless block_given?
      return false unless yield(e)
    end
    true
  end

  def my_any?
    each do |e|
      return true unless block_given?
      return true if yield(e)
    end
    false
  end

  def my_filter?
    arr = []
    each { |e| arr.push(e) if yield(e) }
    arr
  end
end

require_relative './module'

class MyList
  include MyEnumerable

  def initialize(*list)
    @list = list
  end

  def each
    0.upto(@list.length - 1) do |x|
      yield @list[x]
    end
  end
end
list = MyList.new(1, 2, 3, 4)

puts(list.my_all? { |e| e < 5 })
puts(list.my_all? { |e| e > 5 })
puts(list.my_any? { |e| e == 2 })
puts(list.my_any? { |e| e == 5 })
puts(list.my_filter?(&:even?))

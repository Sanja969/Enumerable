require_relative 'enumerable'

class MyList
  include Enumerable

  def initialize(*list)
    @list = list
  end

  def each(&filter_block)
    return 'No block given' unless block_given?

    @list.filter(&filter_block)
  end
end

list = MyList.new(1, 2, 3, 4)

p list.all? { |e| e < 5 }

p list.all? { |e| e > 5 }

p list.any? { |e| e == 2 }

p list.any? { |e| e == 5 }

p list.filter { |e| e.even? }
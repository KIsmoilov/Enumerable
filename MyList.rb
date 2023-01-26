require_relative './Enumerable'
class MyList
  include MyEnumerable
  def initialize(*list)
    @list = list
  end

  def listeach
    return to_enum(:listeach) unless block_given?

    counter = 0
    while counter < @list.length
      yield(@list[counter])
      counter += 1
    end
    @list
  end
end

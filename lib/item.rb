class Item
  attr_accessor :name, :price, :type

  def initialize(name, price, type)
    @name = name
    @price = price
    @type = type
  end
end

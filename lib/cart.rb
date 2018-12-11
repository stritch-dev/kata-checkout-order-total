class Cart 

  attr_accessor :total
  
  def initialize
    items = Array.new
    discounts = Array.new
    #  item -> quantity
    @items = Hash.new {0} 
    @discounts = Array.new
    @total = 0
  end

  def add_item(item)
    if (@items.has_key? item)
      @items[item]
    else
      @items[item] = @items[item] +  1  
    end
  end

  def items
    @items
  end

  def add_discount(discount, item)
    @discounts[discount] = item
  end

  def discounts
    @discounts
  end

  def calculate_total
    items.each_key do |item|
      @total = @total + item.price
    end
  end

  def buy_this_many_get_that_many(this_many, that_many, item)
   item_count = items[item] 
   if item_count = this_many
     item.price
   end
  end

  def total
    calculate_total
    @total
  end
end



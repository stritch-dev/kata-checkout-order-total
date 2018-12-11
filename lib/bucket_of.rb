class BucketOf
  attr_accessor :type, :count

  def initialize(item)
    @type = item.name
    @count = 1
  end

  def add(quantity)
    @count += quantity 
  end


end

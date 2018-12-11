class BucketOf
  attr_accessor :type

  def initialize(item)
    @type = item.name
  end

  def count
    1
  end
end

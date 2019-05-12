class Item
  include ItemHelpers
  attr_accessor :name, :sell_in, :quality

  def initialize(name, sell_in, quality)
    @name = name
    @sell_in = sell_in
    @quality = quality
  end

  # Remember
  # Items quality should never decrease past 0
  # Items quality should never increase past 50
  def update_quality
  end

  def to_s
    "#{@name}, #{@sell_in}, #{@quality}"
  end

end

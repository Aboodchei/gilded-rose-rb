class GildedRose

  attr_accessor :items

  def initialize(items)
    @items = items
  end

  def update_quality
    items.each(&:update_quality)
  end

end
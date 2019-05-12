module ItemFactory
  def self.new_item(name, sell_in, quality)
    case name
    when 'Aged Brie'
      klass = Items::AgedBrie
    when 'Sulfuras, Hand of Ragnaros'
      klass = Items::Sulfuras
    when 'Backstage passes to a TAFKAL80ETC concert'
      klass = Items::Backstage
    when 'Conjured'
      klass = Items::Conjured
    else
      klass = Items::Regular
    end
    return klass.new(name, sell_in, quality)
  end
end
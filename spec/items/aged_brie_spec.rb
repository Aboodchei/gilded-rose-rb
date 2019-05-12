describe Items::AgedBrie do
  it 'sell in should decrease by 1' do
    item = ItemFactory.new_item("Aged Brie", 10, 12)
    rose = GildedRose.new([item])
    rose.update_quality
    expect(rose.items[0].sell_in).to eq(9)
  end

  it 'quality should increase by 1' do
    item = ItemFactory.new_item("Aged Brie", 10, 12)
    rose = GildedRose.new([item])
    rose.update_quality
    expect(rose.items[0].quality).to eq(13)
  end
  it 'quality should never exceed 50' do
    item = ItemFactory.new_item("Aged Brie", 10, 49)
    rose = GildedRose.new([item])
    rose.update_quality
    expect(rose.items[0].quality).to eq(50)
    rose.update_quality
    expect(rose.items[0].quality).to eq(50)
  end
end

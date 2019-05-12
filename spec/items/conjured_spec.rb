describe Items::Conjured do
  it 'sell in should decrease by 1' do
    item = ItemFactory.new_item("Conjured", 10, 12)
    rose = GildedRose.new([item])
    rose.update_quality
    expect(rose.items[0].sell_in).to eq(9)
  end

  it 'quality should decrease by 2' do
    item = ItemFactory.new_item("Conjured", 10, 12)
    rose = GildedRose.new([item])
    rose.update_quality
    expect(rose.items[0].quality).to eq(10)
  end
  it 'quality should never fall below 0' do
    item = ItemFactory.new_item("Conjured", 10, 1)
    rose = GildedRose.new([item])
    rose.update_quality
    expect(rose.items[0].quality).to eq(0)
    rose.update_quality
    expect(rose.items[0].quality).to eq(0)
  end
end

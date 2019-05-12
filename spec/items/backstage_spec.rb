describe Items::Backstage do
  it 'sell in should decrease by 1' do
    item = ItemFactory.new_item(
      "Backstage passes to a TAFKAL80ETC concert",
      10, 12
    )
    rose = GildedRose.new([item])
    rose.update_quality
    expect(rose.items[0].sell_in).to eq(9)
  end

  it 'quality should increase by 1 if sell in > 10' do
    item = ItemFactory.new_item(
      "Backstage passes to a TAFKAL80ETC concert",
      15, 12
    )
    rose = GildedRose.new([item])
    rose.update_quality
    expect(rose.items[0].quality).to eq(13)
  end

  it 'quality should increase by 2 if sell in < 10' do
    item = ItemFactory.new_item(
      "Backstage passes to a TAFKAL80ETC concert",
      10, 12
    )
    rose = GildedRose.new([item])
    rose.update_quality
    expect(rose.items[0].quality).to eq(14) 
    rose.update_quality
    expect(rose.items[0].quality).to eq(16)   
  end

  it 'quality should increase by 3 if sell in < 5' do
    item = ItemFactory.new_item(
      "Backstage passes to a TAFKAL80ETC concert",
      5, 12
    )
    rose = GildedRose.new([item])
    rose.update_quality
    expect(rose.items[0].quality).to eq(15) 
    rose.update_quality
    expect(rose.items[0].quality).to eq(18)   
  end

  it 'quality should never exceed 50' do
    item = ItemFactory.new_item(
      "Backstage passes to a TAFKAL80ETC concert",
      4, 49
    )
    rose = GildedRose.new([item])
    rose.update_quality
    expect(rose.items[0].quality).to eq(50)
    rose.update_quality
    expect(rose.items[0].quality).to eq(50)
  end

  it 'quality should become 0 if sell in < 0' do
    item = ItemFactory.new_item(
      "Backstage passes to a TAFKAL80ETC concert",
      0, 49
    )
    rose = GildedRose.new([item])
    rose.update_quality
    expect(rose.items[0].quality).to eq(0)
  end

end

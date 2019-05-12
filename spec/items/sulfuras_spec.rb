describe Items::Sulfuras do
  it 'all qualities should remain unchanged' do
    item = ItemFactory.new_item("Sulfuras, Hand of Ragnaros", 10, 12)
    rose = GildedRose.new([item])
    rose.update_quality
    expect(rose.items[0].sell_in).to eq(10)
    expect(rose.items[0].quality).to eq(12)
  end
end

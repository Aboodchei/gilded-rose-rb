module ItemHelpers

  def degrade_quality(number=1)
    @quality -= number
  end

  def improve_quality(number=1)
    @quality += number
  end

  def max_quality?
    @quality >= 50
  end

  def past_sell_in?
    @sell_in <= 0
  end

  def zero_quality?
    @quality == 0
  end

  def decrease_sell_in
    @sell_in -= 1
  end

end
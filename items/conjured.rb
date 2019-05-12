module Items
  class Conjured < Item

    # Conjured items decrease in quality double the speed of regular items

    def update_quality
      decrease_sell_in
      return if zero_quality?

      # Corner case
      # We take the max, in case the quality = 1 sell_in = 0 when calling this function 

      @quality = [@quality - 2, 0].max
      @quality = [@quality - 2, 0].max if past_sell_in?
    end

  end
end
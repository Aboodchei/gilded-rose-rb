module Items
  class Regular < Item

    # Regular non special items sell in decrease, and quality decrease

    def update_quality
      decrease_sell_in
      return if zero_quality?

      degrade_quality

      # Corner case
      # We take the max, in case the quality = 1 and sell_in = 0 when calling this function 
      @quality = [@quality - 1, 0].max if past_sell_in?
    end

  end
end
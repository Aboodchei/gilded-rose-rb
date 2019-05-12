module Items
  class AgedBrie < Item

    # Aged Brie's sell in decreases
    # They increase in quality while sell in decreases, but never exceed 50

    def update_quality
      decrease_sell_in
      return if max_quality?
      improve_quality

      # Corner case
      # We take the minimum, in case the quality is 49, and sell in is 0 before 
      # calling this function
      @quality = [@quality + 1, 50].min if past_sell_in?
    end

  end
end
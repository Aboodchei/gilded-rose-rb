module Items
  class Backstage < Item

    # Backstage items drop to 0 after sell in is zero
    # they increase 2 fold when sell in is less than 10
    # they increase 3 fold when sell in is less than 5

    def update_quality
      @sell_in -= 1
      return @quality = 0 if past_sell_in?
      return if max_quality?

      improve_quality

      # Corner case
      # We take the minimum in order to ensure it never passes 50, in case
      # the quality = 49, and the sell_in = 10 or 5 before calling this function
      @quality = [@quality + 1, 50].min if @sell_in < 10
      @quality = [@quality + 1, 50].min if @sell_in < 5
    end

  end
end
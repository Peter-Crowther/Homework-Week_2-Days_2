class River
  attr_reader :river_name, :fish_in_river
  def initialize(river_name, fish_in_river)
    @river_name = river_name
    @fish_in_river = fish_in_river
  end

  def fish_count
    @fish_in_river.count
  end

  def bear_eats_fish_from_river(fish)
    @fish_in_river.delete(fish)
    return fish_count
    
  end


end

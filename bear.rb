class Bear
attr_accessor :bear_name

  def initialize(bear_name)
    @bear_name = bear_name
    @stomach_contents = []
  end

  def stomach_contents_count
  @stomach_contents.count
  end

  def bear_roars
    return "RROOAARR!!"
  end

  def add_fish_to_stomach(fish)
    @stomach_contents.push(fish)
    return stomach_contents_count
    return bear_roars
  end



end

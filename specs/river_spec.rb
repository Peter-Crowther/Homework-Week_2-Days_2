require_relative("../river.rb")
require_relative("../fish.rb")
require_relative("../bear.rb")
require("minitest/autorun")
require("minitest/rg")

class TestRiver < MiniTest::Test
  def setup
    @bear = Bear.new("Yogi")
    @carp = Fish.new("carp")
    @trout = Fish.new("trout")
    @river_fish = [@carp, @trout]
    @river = River.new("Amazon", @river_fish)
  end

  def test_river_name
    assert_equal("Amazon", @river.river_name)
  end

  def test_fish_in_river
    assert_equal(2, @river.fish_count)
  end



  def test_bear_eats_fish
    @bear.add_fish_to_stomach(@trout)
    assert_equal(1, @bear.stomach_contents_count)
    @river.bear_eats_fish_from_river(@trout)
    assert_equal(1, @river.fish_count)

  end






end

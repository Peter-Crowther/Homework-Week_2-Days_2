require_relative("../river.rb")
require_relative("../fish.rb")
require("minitest/autorun")
require("minitest/rg")

class TestRiver < MiniTest::Test
  def setup
    @river = River.new("Amazon", [@carp, @trout])
  end

  def test_river_name
    assert_equal("Amazon", @river.river_name)
  end

  def test_fish_in_river
    assert_equal(2, @river.fish_count) 
  end





end

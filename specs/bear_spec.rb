require_relative("../bear.rb")
require_relative("../river.rb")
require_relative("../fish.rb")
require("minitest/autorun")
require("minitest/rg")

class TestBear <MiniTest::Test

  def setup
    @bear = Bear.new("Yogi")
    @carp = Fish.new("carp")
    @trout = Fish.new("trout")

    @river_fish = [@carp, @trout]
    @river = River.new("Amazon", [@river_fish])

  end

  def test_bear_name
  assert_equal("Yogi", @bear.bear_name)
  end

  def test_stomach_contents_count
    assert_equal(0, @bear.stomach_contents_count)
  end

  def test_bear_roars
    assert_equal("RROOAARR!!", @bear.bear_roars)
  end


  def test_bear_eats_fish
    @bear.add_fish_to_stomach(@trout)
    assert_equal(1, @bear.stomach_contents_count)

  end




end

require_relative("../bear.rb")
require_relative("../river.rb")
require("minitest/autorun")
require("minitest/rg")

class TestBear <MiniTest::Test

  def setup
    @bear = Bear.new("Yogi", [])

  end

  def test_bear_name
  assert_equal("Yogi", @bear.bear_name)
  end

  def test_stomach_contents
    result = 0
    assert_equal(0, result)
  end

  def test_eats_fish



end

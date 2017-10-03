require_relative("../fish.rb")
require("minitest/autorun")
require("minitest/rg")

class TestFish < MiniTest::Test

  def setup
    @carp = Fish.new("carp")
    @trout = Fish.new("trout")    
  end

  def test_fish_name
    assert_equal("carp", @fish.fish_name)
  end


end

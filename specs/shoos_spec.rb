require 'minitest/autorun'
require 'minitest/rg'
require_relative '../models/shoos.rb'

class TestShoos < MiniTest::Test

  def setup
    params = {
      "name" => "Francesco Palma",
      "address" => "West TollCross, 22, Edinburgh, UK",
      "quantity" => "1",
      "size" => "10"
    }
    @shoos = Shoos.new(params)
  end

  def test_created
    assert_equal("Francesco Palma", @shoos.name)
    assert_equal("West TollCross, 22, Edinburgh, UK", @shoos.address)
    assert_equal(1, @shoos.quantity)
    assert_equal(10, @shoos.size)
  end

end


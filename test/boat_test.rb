require 'minitest/autorun'
require 'minitest/pride'
require './lib/boat'
require './lib/renter'
class BoatTest < Minitest::Test
  def test_it_exists_and_has_attributes
    kayak = Boat.new(:kayak, 20)

    assert_instance_of Boat, kayak
    assert_equal :kayak, kayak.type
    assert_equal 20, kayak.price_per_hour
  end

  def test_hours_rented
    kayak = Boat.new(:kayak, 20)

    assert_equal 0, kayak.hours_rented

    kayak.add_hour
    kayak.add_hour
    kayak.add_hour

    assert_equal 3, kayak.hours_rented
  end
end

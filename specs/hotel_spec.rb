require('minitest/autorun')
require('minitest/rg')
require_relative('../hotel.rb')
require_relative('../guest.rb')
# require_relative('../room.rb')

class TestGuest < MiniTest::Test

  def setup()
    @hotel = Hotel.new( "Maple River Hotel", Array.new(10) )
  end

  def test_hotel_has_name()
      tested_name = @hotel.hotel_name()
      expected_name = "Maple River Hotel"
      assert_equal( expected_name, tested_name )
  end

  def test_hotel_has_10_rooms()
    num_of_rooms = @hotel.rooms.length
    expected = 10
    assert_equal( expected, num_of_rooms )
  end

end
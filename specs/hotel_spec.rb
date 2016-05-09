require('minitest/autorun')
require('minitest/rg')
require_relative('../hotel.rb')
require_relative('../guest.rb')
require_relative('../room.rb')

class TestGuest < MiniTest::Test

  def setup
      @room1 = Room.new( 1 )
      @room2 = Room.new( 2 )
      @room3 = Room.new( 3 )
      @room4 = Room.new( 4 )
      rooms = [ @room1, @room2, @room3, @room4 ]
      @hotel = Hotel.new( "Maple River Hotel", rooms )
  end

  def test_hotel_has_name()
      tested_name = @hotel.hotel_name()
      expected_name = "Maple River Hotel"
      assert_equal( expected_name, tested_name )
  end

  def test_hotel_has_4_rooms()
    num_of_rooms = @hotel.rooms.length
    expected = 4
    assert_equal( expected, num_of_rooms )
  end


end
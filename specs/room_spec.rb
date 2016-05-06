require('minitest/autorun')
require('minitest/rg')
require_relative('../room.rb')
require_relative('../hotel.rb')

class TestGuest < MiniTest::Test

  def setup
    @room = Room.new( 1, "Jeffrey Tambor" )
    @hotel = Hotel.new( "Maple River Hotel", Array.new(10) )
  end


  def test_room_has_number()
    tested = @room.room_state[:room_num]
    expected = 1
    assert_equal( expected, tested )
  end

end
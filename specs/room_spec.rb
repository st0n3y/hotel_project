require('minitest/autorun')
require('minitest/rg')
require_relative('../room.rb')
require_relative('../hotel.rb')

class TestGuest < MiniTest::Test

  def setup()
    @room1 = Room.new( 1, 1 )
    @room2 = Room.new( 2, 1 )
  end


  # def test_room_has_number()
  #   tested = @room.room_state[:room_num]
  #   expected = 1
  #   assert_equal( expected, tested )
  # end

  def test_room_has_number()
    tested = @room1.room_num
    expected = 1
    assert_equal( expected, tested )
  end

  def test_check_in()
    @room1.check_in( [ "Jeffrey Tambor" ] )
    tested = @room1.guests_resident
    expected = [ "Jeffrey Tambor" ]
    assert_equal( expected, tested )
  end

  def test_check_in_fail()
    @room2.check_in( [ "Jeffrey Tambor" ] )
    tested = @room2.check_in( [ "Jason Bateman" ] )
    expected = "This room is already occupied."
    assert_equal( expected, tested )
  end

  def test_check_out()

  end

end
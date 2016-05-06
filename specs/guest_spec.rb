require('minitest/autorun')
require('minitest/rg')
require_relative('../guest.rb')

class TestGuest < MiniTest::Test

  def setup()
    @guest = Guest.new( "Jeffrey Tambor" )
  end

  def test_guest_has_name()
    tested_name = @guest.guest_name()
    expected_name = "Jeffrey Tambor"
    assert_equal( expected_name, tested_name)
  end

end
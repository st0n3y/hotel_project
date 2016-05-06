class Room

  attr_accessor :room_state

  def initialize( num, name )
    @room_state = { room_num: num, guest_name: name }
  end

  

end
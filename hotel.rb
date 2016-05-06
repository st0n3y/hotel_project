class Hotel

  attr_accessor :hotel_name, :rooms

  def initialize( name, rooms )
    @hotel_name = name
    @rooms = rooms
  end

end
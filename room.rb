class Room

  attr_accessor :room_num, :num_of_beds, :guests_resident

  def initialize( num, beds )
    @room_num = num
    @num_of_beds = beds
    @guests_resident = []
  end

  def check_in( guests )
    if @guests_resident.length == 0
      for guest in guests 
        @guests_resident << guest
      end
    elsif guests.length > @num_of_beds
      "Not enough beds in this room."
    else "This room is already occupied."
    end
  end

  def check_out( guest )
    if @guests_resident.length != 0
      @guests_resident.delete( guest )
    
    else "This room is already unoccupied."
    end
  end


end
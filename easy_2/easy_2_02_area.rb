# SQ_FT_PER_METER = 10.7639

# print 'Enter the length of the room in meters: '
# length = gets.chomp.to_f
# print 'Enter the width of the room in meters: '
# width = gets.chomp.to_f

# sq_meter = (length * width).round(2)
# sq_ft = (sq_meter * SQ_FT_PER_METER).round(2)

# puts "The area of the room is #{sq_meter} square meters (#{sq_ft} square feet)."


class Room
  SQ_FT_PER_METER = 10.7639
  
  attr_reader :length, :width
  
  def initialize
    print 'Enter the length of the room in meters: '
    @length = gets.chomp.to_f
    print 'Enter the width of the room in meters: '
    @width = gets.chomp.to_f
  end
  
  def area
    sq_meter = (length * width).round(2)
    sq_ft = (sq_meter * SQ_FT_PER_METER).round(2)
    "The area of the room is #{sq_meter} square meters (#{sq_ft} square feet)."
  end
end

my_room = Room.new
puts my_room.area
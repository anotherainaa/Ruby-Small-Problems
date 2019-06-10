SQMETERS_TO_FEET = 10.7639

puts "Enter the length of the room in meters:"
length = gets.chomp.to_i
puts "Enter the width of the room in meters:"
width = gets.chomp.to_i

room_area_metres = (length * width).round(2)
room_area_feet = (room_area_metres * SQMETERS_TO_FEET).round(2)

puts "The area of the room is #{room_area_metres} square meters" + \
     " (#{room_area_feet} square feet)."

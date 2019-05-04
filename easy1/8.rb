# Using loop

# def average(integers)
#   iterator = 0
#   sum = 0
#   while iterator < integers.length
#     sum += integers[iterator]
#     iterator += 1
#   end
#   sum / integers.length
# end

# Non basic construct way

def average(integers)
  integers.reduce(:+) / integers.length
end

# Further exploration

# def average(integers)
#   integers.reduce(:+) / integers.length.to_f
# end

puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40

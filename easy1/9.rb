# Loop way

# def sum(integer)
#   iterator = 0
#   sum = 0
#   array = integer.to_s.chars
#   loop do
#     sum += array[iterator].to_i
#     break if iterator == array.length - 1
#     iterator += 1
#   end
#   sum
# end

# without any basic looping constructs

def sum(integer)
  integer.to_s.chars.map(&:to_i).reduce(:+)
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45

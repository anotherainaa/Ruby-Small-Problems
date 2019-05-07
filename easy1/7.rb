# def stringy(integer)
#   string = ''
#   integer.times do |i|
#    i.even? ? string << '1' : string << '0'
#   end
#   string
# end

# Further exploration

def stringy(integer, start_value = 1)
  string = ''
  integer.times do |i|
    if start_value == 0
      i.even? ? string << '0' : string << '1'
    else
      i.even? ? string << '1' : string << '0'
    end
  end
  string
end


puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
puts stringy(7, 0) == '0101010'

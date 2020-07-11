# My answer 

def stringy1(integer)
  string = ''
  integer.times do |i|
   i.even? ? string << '1' : string << '0'
  end
  string
end

# LS answer 

def stringy(size)
  numbers = []

  size.times do |index|
    number = index.even? ? 1 : 0
    numbers << number
  end

  numbers.join
end

# Further exploration
# Are there any caveats to using string instead of an array

def stringy2(integer, start_value = 1)
  string = ''
  integer.times do |i|
    if start_value.zero?
      number = i.even? ? 0 : 1
      string << number.to_s
    else
      number = i.even? ? 1 : 0
      string << number.to_s
    end
  end
  string
end

puts stringy2(6) == '101010'
puts stringy2(9) == '101010101'
puts stringy2(4) == '1010'
puts stringy2(7) == '1010101'
puts stringy2(7, 0) == '0101010'
# Loop way

def sum(integer)
  iterator = 0
  sum = 0
  array = integer.to_s.chars
  loop do
    sum += array[iterator].to_i
    break if iterator == array.length - 1
    iterator += 1
  end
  sum
end

# without any basic looping constructs
# Note: LS Solution 2 is same as below

def sum2(integer)
  integer.to_s.chars.map(&:to_i).reduce(:+) # #chars = integer.to_s.split('')
end

# LS Solution 1: Using .each

def sum3(number)
  sum = 0
  str_digits = number.to_s.chars

  str_digits.each do |str_digit|
    sum += str_digit.to_i
  end

  sum
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45

NUMBER = {
  '0' => 0,
  '1' => 1,
  '2' => 2,
  '3' => 3,
  '4' => 4,
  '5' => 5,
  '6' => 6,
  '7' => 7,
  '8' => 8,
  '9' => 9,
  'A' => 10, 
  'B' => 11, 
  'C' => 12,
  'D' => 13,
  'E' => 14,
  'F' => 15
}

def string_to_integer(string)
  digits = string.split('').map do |n|
    NUMBER[n]
  end
  integer = 0
  digits.reverse.each_with_index do |digit, index|
    integer += digit * (10 ** index)
  end
  integer
end

#Further exploration

def hexadecimal_to_integer(string)
  numbers = string.chars.map do |element|
    NUMBER[element.upcase]
  end
  value = 0
  numbers.each {|number| value = 16 * value + number}
  value
end

p string_to_integer('4321')  == 4321
p string_to_integer('570') == 570
p hexadecimal_to_integer('4D9f') == 19871
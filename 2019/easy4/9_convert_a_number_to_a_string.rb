STRING_TO_NUMBER = {
  0 => '0',
  1 => '1',
  2 => '2',
  3 => '3',
  4 => '4',
  5 => '5',
  6 => '6',
  7 => '7',
  8 => '8',
  9 => '9'
}

def integer_to_string(number)
  digits = [] 
  loop do
    number, remainder = number.divmod(10)
    digits.unshift(remainder)
    break if number == 0
  end

  string = ''
  digits.map do |digit|
    string += STRING_TO_NUMBER[digit]
  end
  string
end

p integer_to_string(4321) == '4321'
p integer_to_string(0)  == '0'
p integer_to_string(5000) == '5000'
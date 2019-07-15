NUMBERS = {
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

def integer_to_string(integer)
  digits = ''

  loop do
    integer, remainder = integer.divmod(10)
    digits.prepend(NUMBERS[remainder])
    break if integer == 0
  end
  p digits
end

def signed_integer_to_string(integer)
  if integer > 0
    '+' + integer_to_string(integer)
  elsif integer < 0
    '-' + integer_to_string(integer.abs)
  else
    integer_to_string(integer)
  end
end

# Further exploration

def signed_integer_to_string2(integer)
  string = integer_to_string(integer.abs)
  return string if integer == 0
  integer > 0 ? '+' + string : '-' + string
end

p signed_integer_to_string2(4321) == '+4321'
p signed_integer_to_string2(-123) == '-123'
p signed_integer_to_string2(0) == '0'

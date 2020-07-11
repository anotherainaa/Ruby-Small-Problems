require 'pry'

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
  '9' => 9
}

def string_to_signed_integer(string)  
  reversed_digits = []
  string.split('').reverse.each_with_index do |element, index|
    if element == '-'
      reversed_digits[index - 1] = reversed_digits[index - 1] * -1
    elsif element == '+'
      reversed_digits[index - 1] = reversed_digits[index - 1] * 1
    else
      reversed_digits << NUMBER[element]
    end
  end

  value = 0
  reversed_digits.each_with_index do |element, index|
    if element > 0
      value += element * (10 ** index)
    elsif element < 0
      value = -value + element * (10 ** index)
    end
  end
  value
end

p string_to_signed_integer('-4321') == -4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100
p string_to_signed_integer('100') == 100
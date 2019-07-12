def rotate_array(array)
  rotate_array = array.dup
  first_element = rotate_array.shift
  rotate_array << first_element
end

def rotate_rightmost_digits(digits, n)
  string_digits = digits.to_s.chars
  rotated_array = string_digits[0..-1 - n] + rotate_array(string_digits[-n..-1])
  rotated_array.join.to_i
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p  rotate_rightmost_digits(735291, 4) == 732915
p  rotate_rightmost_digits(735291, 5) == 752913
p  rotate_rightmost_digits(735291, 6) == 352917

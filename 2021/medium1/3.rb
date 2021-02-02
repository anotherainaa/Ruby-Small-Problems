def rotate_array(array)
  array[1..-1] + [array[0]]
end

def rotate_rightmost_digits(digits, n)
  digits_ary = digits.to_s.chars
  digits_ary[-n..-1] = rotate_array(digits_ary[-n..-1])
  digits_ary.join.to_i
end

def max_rotation(digits)
  counter = digits.to_s.size

  loop do
    break if counter == 1
    digits = rotate_rightmost_digits(digits, counter)
    counter -= 1
  end
  digits
end

p max_rotation(735291) == 321579
# p max_rotation(3) == 3
# p max_rotation(35) == 53
# p max_rotation(105) == 15 # the leading zero gets dropped
# p max_rotation(8_703_529_146) == 7_321_609_845
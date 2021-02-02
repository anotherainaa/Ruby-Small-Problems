=begin
rotate the last n digits of a number 
Approach 
- only rotate the parts of the array that applies. 
- grab only the last n digits. 
- apply rotate on it. 

=end

def rotate_array(array)
  results = array[1..-1]
  results << array[0]
end


def rotate_rightmost_digits(digits, n)
  digits_ary = digits.to_s.split("")
  digits_ary[-n..-1] = rotate_array(digits_ary[-n..-1])
  digits_ary.join.to_i
end

p rotate_array([7, 3, 5, 2, 9, 1])
p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) #== 735219
p rotate_rightmost_digits(735291, 3) #== 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) # == 352917
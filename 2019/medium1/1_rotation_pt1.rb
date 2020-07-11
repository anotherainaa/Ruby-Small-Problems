# My solution

def rotate_array2(array)
  rotate_array = array.dup
  first_element = rotate_array.shift
  rotate_array << first_element
end

# Further exploration

# Using LS's solution
def rotate_array(array)
  array[1..-1] + [array[0]]
end

# Tried both LS and my solution and both worked

def rotate_string(string)
  rotate_array(string.chars).join
end

def rotate_integer(integer)
  rotate_string(integer.to_s).to_i
end

# rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
# rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
# rotate_array(['a']) == ['a']

# x = [1, 2, 3, 4]
# rotate_array(x) == [2, 3, 4, 1]   # => true
# x == [1, 2, 3, 4]             # => true

p rotate_string("abc") == "bca"
p rotate_integer(1234) == 2341

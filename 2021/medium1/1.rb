=begin
Approach
- iterate through array
  - first index push
  - later onwards prepend

=end

# def rotate_array(array)
#   first = array.shift
#   array << first
# end

def rotate_array(array)
  results = array[1..-1]
  results << array[0]
end


p rotate_array([7, 3, 5, 2, 9, 1]) # == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]                 # => true
# Solution 1: First trial

def digit_list(integer)
  str_of_int = integer.to_s
  array_of_int_in_str = str_of_int.split('')
  new_array = []

  array_of_int_in_str.each do |char|
    new_array << char.to_i
  end
  new_array
end

# Solution 2: refactor the above solution using .map
# unnecessary variable commented out to remind myself of the process I took
# Notes: have to provide ('') to .split. If not, split on whitespace
# Which in this case, does not split the number into individual numbers

def digit_list2(integer)
  # array_of_int_in_str = integer.to_s.split("")
  integer.to_s.split('').map { |char| char.to_i }
  # new_array
end

# Solution 3: using Ruby's syntactic sugar for block
# (&:to_i) is Ruby's syntactic sugar
# good thing is Rubocop picks up and recommends the syntactic sugar below
# C(Convention): Pass &:to_i as an argument to map instead of a block.

def digit_list3(integer)
  integer.to_s.split('').map(&:to_i)
end

# Solution 4: LS solution
# chars is the same as str.each_char.to_a.

def digit_list4(number)
  number.to_s.chars.map(&:to_i)
end

# Solution5 : LS example solution
# Brute force approach which is chopping off digits from the back

def digit_list5(number)
  digits = []
  loop do
    number, remainder = number.divmod(10)
    digits.unshift(remainder)
    break if number == 0
  end
  digits
end

# Solution 6: Using Integer#digits
# Caveats: This solution is only applicable for Ruby version 2.4.0 and above

def digit_list6(number)
  number.digits.reverse
end

p digit_list6(12_345)
p digit_list6(7)
p digit_list6(375_290)
p digit_list6(444)
p digit_list6(0)

puts digit_list6(12_345) == [1, 2, 3, 4, 5]     # => true
puts digit_list6(7) == [7]                      # => true
puts digit_list6(375_290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list6(444) == [4, 4, 4]              # => true

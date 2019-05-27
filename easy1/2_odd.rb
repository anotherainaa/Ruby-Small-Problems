# Solution 1
# return true false is redundant.
#  integer % 2 != 0 will return true if truthy

def is_odd?(integer)
  if integer % 2 != 0
    true
  else
    false
  end
end

# Solution 2
# return true false is redundant.
# integer % 2 != 0 will return true if truthy

def is_odd2?(integer)
  integer % 2 != 0 ? true : false
end

# Solution 3
# solution provided by ls.

def is_odd3?(integer)
  integer % 2 == 1
end

# Solution 4: Using remainder
# Further exploration remainder method
# This solution behaves differently compared to % because of return value

def is_odd4?(integer)
  integer.remainder(2) == 1
end

# Solution 5: Using remainder
# This solution covers both modulo and remainder

def is_odd5?(integer)
  integer.remainder(2) != 0
end


# puts is_odd?(2)    # => false
# puts is_odd?(5)    # => true
# puts is_odd?(-17)  # => true
# puts is_odd?(-8)   # => false
# puts is_odd?(0)    # => false
# puts is_odd?(7)    # => true

# puts is_odd4?(2)    # => false
# puts is_odd4?(5)    # => true
# puts is_odd4?(-17)  # => true
# puts is_odd4?(-8)   # => false
# puts is_odd4?(0)    # => false
# puts is_odd4?(7)    # => true

puts is_odd5?(2)    # => false
puts is_odd5?(5)    # => true
puts is_odd5?(-17)  # => true
puts is_odd5?(-8)   # => false
puts is_odd5?(0)    # => false
puts is_odd5?(7)    # => true

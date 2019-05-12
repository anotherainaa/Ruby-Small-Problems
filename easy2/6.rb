# Print all odd numbers from 1 to 99, inclusive. All numbers should be printed on
# separate lines.

# for i in 1..99
#   if i % 2 != 0
#     puts i
#   end
# end

# Further exploration

# Repeat this exercise with a technique different from the one you just used, and
# different from the solution shown above. You may want to explore the use
# Integer#upto or Array#select methods, or maybe use Integer#odd?

# Array#select + Integer#odd method

# array = (1..99).to_a

# array.select do |element|
#   puts e if e.odd?
# end

# OR

# array.select {|e| puts e if e.odd?}

# Integer#upto

1.upto(99) {|i| puts i if i.odd? }

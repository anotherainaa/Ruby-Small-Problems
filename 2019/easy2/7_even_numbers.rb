1.upto(99) {|i| puts i if i.even? }

# LS Solution
# Note: variation of odd solution but incremented by 1 and only print if even.

value = 1
while value <= 99
  puts value if value.even?
  value += 1
end
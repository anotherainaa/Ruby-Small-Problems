# Solution 1

def calculate_bonus(salary, bonus)
  result = 0
  if bonus
    result = salary / 2
  end
  result
end

# Solution 2
# Notes: trying to refactor the method

def calculate_bonus2(salary, bonus)
  result = 0 # without this, returns nil when 0 and false because false condition is not defined
  result = salary / 2 if bonus
  result
end

# Solution 3: Ternary operator

def calculate_bonus3(salary, bonus)
  bonus ? salary / 2 : 0
end

# Solution4: The other way around
# Caveats: This is probably a bit harder to understand
# because it's like a double negative grammar

def calculate_bonus4(salary, bonus)
  return 0 if !bonus
  salary / 2
end

# Given test cases
puts calculate_bonus4(2800, true) == 1400
puts calculate_bonus4(1000, false) == 0
puts calculate_bonus4(50000, true) == 25000

# Added test cases
puts calculate_bonus4(0, false)
puts calculate_bonus4(0, true)

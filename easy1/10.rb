# def calculate_bonus(salary, bonus)
#   result = 0
#   if bonus
#     result = salary / 2
#   end
#   result
# end

# Refactor

# def calculate_bonus(salary, bonus)
#   result = 0
#   result = salary / 2 if bonus
#   result
# end

# Ternary operator

# def calculate_bonus(salary, bonus)
#   bonus ? salary / 2 : 0
# end

# The other way around

def calculate_bonus(salary, bonus)
  return 0 if !bonus
  salary / 2
end


# Given test cases
puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000

# Added test cases
puts calculate_bonus(0, false)
puts calculate_bonus(0, true)

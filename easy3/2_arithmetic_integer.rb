
# notes: edge cases to consider are not having 0 for the second number
# if we do, it will throw an error at / because cannot be divided by 0
# Note that only operators that require division throws an error like #/ and #%
# Other methods will return the appropriate result accordingly

puts "Enter the first number:"
first_number = gets.chomp.to_i
puts "Enter the second number:"
second_number = gets.chomp.to_i

puts "#{first_number} + #{second_number} = #{first_number + second_number}"
puts "#{first_number} - #{second_number} = #{first_number - second_number}"
puts "#{first_number} * #{second_number} = #{first_number * second_number}"
puts "#{first_number} / #{second_number} = #{first_number / second_number}"
puts "#{first_number} % #{second_number} = #{first_number % second_number}"
puts "#{first_number} ** #{second_number} = #{first_number ** second_number}"

# other interesting solutions
# using array and reduce
# note that this doesn't solve the 0 division problem
# and the return value of perform_operations is ["+", "-", "*", "/", "%", "**"]
# because of #each

arr = []
operators = [:+,:-,:*,:/,:%,:**]

puts "==> Enter the first number:"
arr << 23
puts "==> Enter the second number:"
arr << 17

operators.each do |op|
  result = arr.reduce(&op)
  puts "==> #{arr[0]} #{op} #{arr[1]} = #{result}"
end

# other interesting soulutions: 
# note that this doesn't solve the 0 division problem
# #eval runs the string like a method
# and that the return value of perform_operations is ["+", "-", "*", "/", "%", "**"]
# because of #each

OPERATORS = %w[+ - * / % **]


def perform_operations(num1, num2)
  OPERATORS.each do |operator| 
    puts "#{num1} #{operator} #{num2} = #{eval "#{num1} #{operator} #{num2}"}"
  end
end

puts "Enter the first number:"
num1 = gets.chomp.to_i

puts "Enter the second number:"
num2 = gets.chomp.to_i
perform_operations(num1, num2)
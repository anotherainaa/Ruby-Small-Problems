
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

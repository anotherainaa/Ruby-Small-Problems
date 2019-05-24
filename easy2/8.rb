# def compute_sum(number)
#   sum = nil
#   for i in 1..number
#     if sum.nil?
#       sum = i
#     else
#       sum += i
#     end
#   end
#   sum
# end

# def compute_product(number)
#   product = nil
#   i = 1
#   while i <= number
#     if product.nil?
#       product = i
#     else
#       product *= i
#     end
#     i += 1
#   end
#   product
# end

# Further exploration

def compute_sum(number)
  (1..number).to_a.inject(:+)
end

def compute_product(number)
  (1..number).to_a.inject(:*)
end

puts ">> Please enter an integer greater than 0:"
number = gets.chomp.to_i

puts ">> Enter 's' to compute the sum, 'p' to compute the product."
input = gets.chomp

if input == 's'
  puts "The sum of the integers between 1 and #{number} is #{compute_sum(number)}."
elsif input == 'p'
  puts "The product of the integers between 1 and #{number} is #{compute_product(number)}."
else
  puts "Unknown operation."
end



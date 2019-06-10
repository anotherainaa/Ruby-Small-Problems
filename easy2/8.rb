# Solution 1: for loop

def compute_sum(number)
  sum = nil
  for i in 1..number
    if sum.nil?
      sum = i
    else
      sum += i
    end
  end
  sum
end

# Solution 2: while loop

def compute_product(number)
  product = nil
  i = 1
  while i <= number
    if product.nil?
      product = i
    else
      product *= i
    end
    i += 1
  end
  product
end

# LS Solution: Using upto method

def compute_sum2(number)
  total = 0
  1.upto(number) { |value| total += value }
  total
end

def compute_product2(number)
  total = 1
  1.upto(number) { |value| total *= value }
  total
end


# Further exploration: using range, array and inject
# Note: it'd be nice to gauge the performance difference between the solutions

def compute_sum3(number)
  (1..number).to_a.inject(:+)
end

def compute_product3(number)
  (1..number).to_a.inject(:*)
end

puts ">> Please enter an integer greater than 0:"
number = gets.chomp.to_i

puts ">> Enter 's' to compute the sum, 'p' to compute the product."
input = gets.chomp

if input == 's'
  puts "The sum of the integers between 1 and #{number} is #{compute_sum2(number)}."
elsif input == 'p'
  puts "The product of the integers between 1 and #{number} is #{compute_product2(number)}."
else
  puts "Unknown operation."
end



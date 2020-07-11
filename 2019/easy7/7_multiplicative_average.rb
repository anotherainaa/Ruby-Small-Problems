def show_multiplicative_average(numbers)
  product = 1
  counter = 0

  loop do 
    break if counter == numbers.size

    current_number = numbers[counter]
    product *= current_number

    counter += 1
  end
  average = product / numbers.size.to_f
  puts "The result is #{format('%.3f', average)}"
end

def show_multiplicative_average2(numbers)
  product = numbers.inject(:*)
  average = product / numbers.size.to_f
  puts "The result is #{format('%.3f', average)}"
end


show_multiplicative_average([3, 5])
# The result is 7.500

show_multiplicative_average([6])
# The result is 6.000

show_multiplicative_average([2, 5, 7, 11, 13, 17])
# The result is 28361.667
def sum_of_sums(numbers)
  counter = 0
  accumulated_numbers = []

  loop do
    break if counter == numbers.size

    (counter + 1).times do |n|
      accumulated_numbers << numbers[n]
    end

    counter += 1
  end
  accumulated_numbers.inject(:+)
end

def sum_of_sums2(numbers)
  accumulated_numbers = []
  numbers.each_with_index do |number, index|
    counter = index + 1
    counter.times do |n|
      accumulated_numbers << numbers[n]
    end
  end
  accumulated_numbers.inject(:+)
end

p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35

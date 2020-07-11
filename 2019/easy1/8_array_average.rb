# Using loop

def average(integers)
  iterator = 0
  sum = 0
  while iterator < integers.length
    sum += integers[iterator]
    iterator += 1
  end
  sum / integers.length
end

# Non basic construct way

def average2(integers)
  integers.reduce(:+) / integers.length
end

# Further exploration

def average3(integers)
  integers.reduce(:+) / integers.length.to_f
end

# LS solution
# Note: are there any difference between below to the method I wrote
# Perhaps below is easier to understand and fix because each part only does one thing?  

def average4(numbers)
  sum = numbers.reduce { |sum, number| sum + number }
  sum / numbers.count
end

# Other solutions by other students
# Note: #sum is a method introduced in version 2.4 and above

def average5(array)
  array.sum / array.length
end


puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40

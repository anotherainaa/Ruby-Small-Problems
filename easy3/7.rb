require 'pry'

# Solution 1
# This solution doesn't cover edge cases like when there is more than one element with the same value.

# def oddities(array)
#   array.select do |element|
#     array.index(element).even?
#   end
# end


def oddities(array)
  array.select.with_index do |element, index|
    index.even?
  end
end

# Solution 2

# def oddities(array)
#   odd_elements = []
#   index = 0
#   loop do
#     break if index >= array.length
#     odd_elements << array[index]
#     index += 2
#   end
#   odd_elements
# end

# def oddities(array)
#   odd_elements = []
#   index = 0
#   while index < array.size
#     odd_elements << array[index]
#     index += 2
#   end
#   odd_elements
# end

# Further exploration

# def evenities(array)
#   array.select do |element|
#     array.index(element).odd?
#   end
# end

p oddities([2, 2, 2, 2, 3, 4, 5, 6]) == [2, 2, 3, 5]
# p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
# p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
# p oddities(['abc', 'def']) == ['abc']
# p oddities([123]) == [123]
# p oddities([]) == []
p oddities([])

# p evenities([2, 3, 4, 5, 6])
# p evenities([1, 2, 3, 4, 5, 6])
# p evenities(['abc', 'def'])
# p evenities([123])
# p evenities([])

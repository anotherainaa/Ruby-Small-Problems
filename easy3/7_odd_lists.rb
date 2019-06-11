require 'pry'

# Solution 1
# This solution doesn't cover edge cases like when there is
# more than one element with the same value.

def oddities(array)
  array.select do |element|
    array.index(element).even?
  end
end

# Solution 2: select.with_index

def oddities2(array)
  array.select.with_index do |_, index|
    index.even?
  end
end

# Solution 3
# Redoing LS solution with a basic loop.

def oddities3(array)
  odd_elements = []
  index = 0
  loop do
    break if index >= array.length
    odd_elements << array[index]
    index += 2
  end
  odd_elements
end

# Solution 4: LS Solution
# This iterates through the array faster because it skips by +2

def oddities4(array)
  odd_elements = []
  index = 0
  while index < array.size
    odd_elements << array[index]
    index += 2
  end
  odd_elements
end

# Further exploration

# Evenities
def evenities(array)
  array.select.with_index do |_, index|
    index.odd?
  end
end

# Other ways to solve the problem: delete
# This method doesn't work because of the same problem with #select
# index of second element with the same value onwards returns the index value of the first element.
def oddities5(array)
  array.reject { |element| array.index(element).odd? }
end

# Each with index

def oddities6(array)  
  new_array = []
  array.each_with_index do |e, i| 
    new_array << e if i.even? 
  end
  new_array
end

p oddities6([2, 2, 2, 2, 3, 4, 5, 6]) == [2, 2, 3, 5]
p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []
p oddities6([])

p evenities([2, 3, 4, 5, 6])
p evenities([1, 2, 3, 4, 5, 6])
p evenities(['abc', 'def'])
p evenities([123])
p evenities([])



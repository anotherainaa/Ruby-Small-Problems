def running_total(array)
  sum = 0
  array.map do |element|
    sum += element 
  end
end

# Further exploration 

def running_total2(array)
  sum = 0
  array.each_with_object([]) do |value, array|
    array << sum += value
  end
end

# Inject

def running_total3(array)
  new_array = []
  array.inject(0) do |sum, value|
    new_array << sum += value
    sum
  end 
  new_array
end

p running_total3([2, 5, 13]) == [2, 7, 20]
p running_total3([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total3([3]) == [3]
p running_total3([]) == []
def include?(array, target)
  counter = 0

  loop do
    break if counter == array.size

    current_element = array[counter]
    return true if current_element == target
    
    counter += 1
  end
  false
end

p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false
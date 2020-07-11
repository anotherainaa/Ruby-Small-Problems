def merge(array1, array2)
  merged_array = []
  counter1 = 0
  counter2 = 0

  loop do 
    break if counter1 == array1.size

    current_element = array1[counter1]
    merged_array << current_element

    counter1 += 1
  end

  loop do
    break if counter2 == array2.size
    
    current_element = array2[counter2]
    counter2 += 1

    next if merged_array.include?(current_element)
    merged_array << current_element
  end

  merged_array
end

p merge([1, 3, 5], [3, 6, 9])  == [1, 3, 5, 6, 9]
p merge(["a", "b", "c"], ["c", "d", "e", "f"]) 
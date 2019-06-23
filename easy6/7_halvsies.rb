def halvsies(array)
  array1 = []
  array2 = []
  counter = 0
  
  loop do
    break if counter == array.size
    halfpoint = (array.size / 2.to_f).ceil 

    current_element = array[counter]
    if counter < halfpoint
      array1 << current_element
    else
      array2 << current_element
    end
    
    counter += 1
  end
  [array1, array2]
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3])  == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]
p halvsies([1, 5, 2, 4, 3, 3, 5])
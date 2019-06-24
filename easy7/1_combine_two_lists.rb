def interleave(array1, array2)
  counter = 0
  result = []

  loop do
    break if counter == array1.size

    current_element1 = array1[counter]
    current_element2 = array2[counter]
    result.push(current_element1).push(current_element2)

    counter += 1
  end
  result
end

def interleave2(array1, array2)
  result = []
  array1.size.times do |i|
    result.push(array1[i]).push(array2[i])
  end
  result
end

# Further Exploration 

def interleave3(array1, array2)
  array1.zip(array2).flatten
end


p interleave2([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
def multiply_list(array1, array2)
  array1.map.with_index do |element, index|
    element * array2[index]
  end
end

def multiply_list(array1, array2)
  array1.zip(array2).map do |num1, num2|
    num1 * num2
  end
end

p multiply_list([3, 5, 7], [9, 10, 11]) # == [27, 50, 77]
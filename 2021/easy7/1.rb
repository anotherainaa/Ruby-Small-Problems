# def interleave(array1, array2)
#   results = []
#   array1.each_with_index do |element, index|
#     results << element << array2[index]
#   end
#   results
# end

def interleave(array1, array2)
  array1.zip(array2).flatten
end

p interleave([1, 2, 3], ['a', 'b', 'c']) #== [1, 'a', 2, 'b', 3, 'c']
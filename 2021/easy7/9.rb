# approach
# for each element in array1, multiply it with every element in array 2 and insert into results
# sort results 

def multiply_all_pairs(array1, array2)
  results = []
  array1.each do |element1|
    array2.each do |element2|
      results << element1 * element2
    end
  end
  results.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
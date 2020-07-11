def reverse!(array)
  counter = 0

  loop do
    break if counter == array.size / 2
    last_index = array.size - 1

    array[counter], array[last_index - counter] = array[last_index - counter], array[counter]

    counter += 1
  end
  array
end



list = [1,2,3,4]
p result = reverse!(list)
p result == [4, 3, 2, 1]
p list == [4, 3, 2, 1]
p list.object_id == result.object_id

list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"]
p list == ["c", "d", "e", "b", "a"]

list = ['abc']
p reverse!(list) == ["abc"]
p list == ["abc"]

list = []
p reverse!(list) == []
p list == []
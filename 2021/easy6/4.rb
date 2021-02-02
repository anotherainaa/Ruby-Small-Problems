=begin

Approach
- take half the size of the array

- iterate til half of the array 
  - swap the current element and corresponding element

[1, 2, 3, 4, 5]

itarate 5/2 times, 0, 1, 2
  - first = index
  - last = array.size - 1 - index
  - swap

next iteration, index 1
  - first = index (1)
  - last = array.size - 1 - index (5 -1 - 1 = 3)

next iteration, index 2
 - first = index 2
- last = array.size - 1- 2 = (5-1-2 = 2)
=end

def reverse!(array)
  return array if array.empty?

  0.upto(array.size / 2) do |index|
    array[array.size - 1 - index], array[index] = array[index], array[array.size - 1 - index]
  end 
  array
end

list = [1,2,3,4]
result = reverse!(list)
p result # == [4, 3, 2, 1] # true
p list # == [4, 3, 2, 1] # true
p list.object_id == result.object_id # true

list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"] # true
p list == ["c", "d", "e", "b", "a"] # true

list = ['abc']
p reverse!(list) == ["abc"] # true
p list == ["abc"] # true

list = []
reverse!(list) == [] # true
list == [] # true
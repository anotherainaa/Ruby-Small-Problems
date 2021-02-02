# def reverse(array)
#   reverse = [] 

#   array.each do |element|
#     reverse = [element] + reverse
#   end
#   reverse
# end

# def reverse(array)
#   array.inject([]) do |arr, element|
#     arr = [element] + arr
#   end
# end


def reverse(array)
  array.each_with_object([]) do |element, reversed|
    reversed.prepend(element)
  end
end


p reverse([1,2,3,4]) #== [4,3,2,1]          # => true
p reverse(%w(a b e d c)) == %w(c d e b a)  # => true
p reverse(['abc']) == ['abc']              # => true
p reverse([]) == []                        # => true

p list = [1, 3, 2]                      # => [1, 3, 2]
p new_list = reverse(list)              # => [2, 3, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 3, 2]                     # => true
p new_list == [2, 3, 1]                 # => true


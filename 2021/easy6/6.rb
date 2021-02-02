=begin

Approach
- take the two given arrays 
- combine the two array
- make sure all values are unique. 


=end

def merge(arr1, arr2)
  # (arr1 + arr2).uniq
  arr1 | arr2
end

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
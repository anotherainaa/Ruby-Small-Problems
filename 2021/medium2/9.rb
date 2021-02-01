=begin
Problem
Input: Array
Output: Array sorted

Rules
- sort the array. 
- mutate the array. 
- array always contains at least 2 elements. 

Example
- see below. 

Data Structure
Array 

Algorithm 
- loop through array as many times until we pass through the array without making any swaps
  - initalise a swap flag to detect if swap happens. 

# the last element will not have a next element 
- iterate through the array with index(only until the second last element), for each element 
  - compare current element to next element. 
  - if next element is smaller, swap places 
    - flag swap as yes
  - if not, do nothing

break if swaps == no?)

- return array 
=end

def bubble_sort!(array)
  loop do
    swap = false

    array[0..-2].each_with_index do |element, index|
      current_index = index
      next_index = index + 1

      if array[next_index] < element
        array[current_index], array[next_index] = array[next_index], array[current_index]
        swap = true
      end
    end

    break if swap == false
  end
  array
end

# p array = [5, 3]
# p bubble_sort!(array)
# p array == [3, 5]

p array = [6, 2, 7, 1, 4]
p bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

p array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
p bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
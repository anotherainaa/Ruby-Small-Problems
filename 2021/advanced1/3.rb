
=begin

transpose the matrix such that the vertical elements are transposed to become horizontal. 

Input: Nested array 
Output: Nested array transposed 

Data Structure: 
Arrays

Algorithm:
- loop through nested array, for each inner array 
  - loop through array again. 
    - index 0 goes into a new_array1
    - index 1 goes into a new_array2, 
    - index 2 goes into a new_array3 

    - repeat the steps for all inner array  
- return newarray 

=end

def transpose(matrix)
  result = []
  (0..2).each do |column_index|
    new_row = (0..2).map {|row_index| matrix[row_index][column_index] }
    result << new_row
  end
  result
end

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

new_matrix = transpose(matrix)

p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]
=begin
Problem
Input: Integer, representing the number pf digits weare looking for
Output: Integer, representing the index of the first digit with that length

Example

Approach
- fibonacci array. = [1, 1]
loop do 
  - total = first + second 
  - add total to fibonacci array 

- for each total 
  - check if the digits length is equal to argument. 
    - if true find the index of the last thing in the array return the index. 

  - first = second
  - second = total
- do over again. 

=end

def find_fibonacci_index_by_length(integer)
  fibonacci = [1, 1]
  first, second = fibonacci
  index = 3
  loop do
    total = first + second

    break if total.to_s.size >= integer

    first = second
    second = total
    index += 1
  end
  index
end

# def find_fibonacci_index_by_length(number_digits)
#   first = 1
#   second = 1
#   index = 2

#   loop do
#     index += 1
#     fibonacci = first + second
#     break if fibonacci.to_s.size >= number_digits

#     first = second
#     second = fibonacci
#   end

#   index
# end

p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847
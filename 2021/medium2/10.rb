=begin
Problem
Input: Integer
Output: Integer

Rules
  - sqaure of the first n positive integers
  - && sum of the squares of the first n positive integers

Examples
- 3 
# -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)

- 1
# -> (1)**2 - (1**2)

Data Structure
- Integers, arrays? to loop? 

Algorithm 

- take the given integer

- get square of the first n positive integers
  - from 1..integer
    - sum everything ** 2

get the sum of the square
  - for 1..integer, for each i
    - total = i ** 2
    - add total to sum. 

 - finally minues square of sum and sum of square.    
=end

def square_of_sum(integer)
  (1..integer).sum ** 2
end

def sum_of_squares(integer)
  (1..integer).to_a.inject(0) do |sum, num|
    num = num ** 2
    sum += num
  end
end

def sum_square_difference(integer)
  square_of_sum(integer) - sum_of_squares(integer)
end

p sum_square_difference(3) == 22
#   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150
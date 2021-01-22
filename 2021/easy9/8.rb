=begin

Problem
- return an array containing multiples of the argument "starting number". the number 
of multiples is determined by the argument "count"

Rules / Questions/ Edge cases
- Negative numbers as starting number is a valid number. 
- 0 is a valid number
- What about -1 as count argument? Assume that all inputs are valid? 
- multiples include the starting number as in (1 * starting number)

Example
- sequence(count, start_number)

sequence(5, 1) #=> [1, 2, 3, 4, 5]
sequence(4, -7) #=> [-7, -14, -21, -28]
sequence(3, 0) #=> [0, 0, 0]
sequence(0, 1000000) #=> []
sequence(3, 3) #=> [3, 6, 9]

Data structure
Input: 2 integers, count and first number 
Output: Array 

Approach / Algorithm
- until I reach the same number as count, keep adding to an array 
multiples of starting number sequentially until I'm done
- finally return the array of the multiples. 

Algorithm
- Initialise results = []
- loop count times, for each index 
  - mutiplication = (index + 1) * starting number
  - insert multiplication in results array 
- return array   
=end

# def sequence(count, start_number)
#   results = []
#   count.times do |i|
#     multiplication = (i + 1) * start_number
#     results << multiplication
#   end
#   results
# end

def sequence(count, start_number)
  (1..count).map { |number| number * start_number }
end


p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []
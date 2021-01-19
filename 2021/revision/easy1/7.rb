=begin

Problem
- a method that takes one positive integer, and returns a string of alternating 1s and 0s, 
always starting with 1. 

Input: Integer
Output: String - formatted as per rule

Rules
- takes an integer 
- returns a string with alternating 1s and 0s starting with 1
- length of string need to match the given integer

Example
- See test cases below 

Any questions? 
- Does 0 have to return empty string? - edge case? 
- Can you start with 0 instead?

Data structures 
- String 

Approach / Algorithm 
- take the given integer
- Loop only as many times as the given integer
- In the first iteration put a 1 as a string into a new variable
- In the next iteration put a 0 as a string into the new variable
- Alternating the steps above until finish
- Return the new variable with string

Algorithm
- create a variables assigned to an empty string results = ''
- use times on given integer
  - if the index is even, put 1 as string into results
  - else, if the index is odd, put 0 as string into results
- return results 

=end

def stringy(int)
  results = ""
  
  int.times do |i|
    if i.even?
      results << '1'
    else
      results << '0'
    end
  end
  results
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
puts stringy(0) == ''
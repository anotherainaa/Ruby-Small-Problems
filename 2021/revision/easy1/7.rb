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

=begin
- take an extra argument that defaults to 1
- but will start with 0 if this argument is set to 0. 

approach
- take the given integer
- Loop only as many times as the given integer
- if the optinal argument is equal to 1 
  - if so, insert 1 if even, else insert 0
- else
  - insert 0 if even, else insert 1
- Return the new variable with string

=end

def stringy(int, start = 1)
  results = ""

  int.times do |i|
    if start == 1 
      number = i.even? ? "1" : "0"
      results << number
    else
      number = i.even? ? "0" : "1"
      results << number
    end
  end
  results
end

puts stringy(6, 0) == '101010'
puts stringy(9, 0) == '101010101'
# puts stringy(4) == '1010'
# puts stringy(7) == '1010101'
# puts stringy(0) == ''
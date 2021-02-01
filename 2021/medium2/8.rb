require 'pry'

=begin
Problem
Input: integer 
Output: integer, representing the next featured number greater than argument

Rules
- feature number is a
  - odd number
  - multiple of 87
  - digits occur exactly one each (unique!)
- invalid inputs? 
- what about 0? => next featured number 
- if argument is bigger than 9_999_999_999 return no number

Example
12 => 21
20 => 21
21 => 35
997 => 1029
1029 => 1043

Data Structure 
- Integers, Array? 

Algorithm
- using the given integer, loop sequentially until I find the next featured number. 

if number > 9,999,999,999 return no possible number

main
- starting number is argument + 1, assign this to variable current_number
- loop
- check if the current number is a featured_number?
 - if true, return number

featured_number?
- is the number odd? and divisible by 7? and still itself if I call (array)unique?  to it
  - return true
-return false

 Note: If I'm looping forever, my loop cannot find the next featured number. 
=end

def featured_number?(integer)
  odd = integer.odd? 
  multiple_of_seven = (integer % 7 == 0)
  unique_numbers = (integer.to_s.chars.uniq.join == integer.to_s)

  odd && multiple_of_seven && unique_numbers ? true : false
end


def featured(integer)
  current_number = integer + 1 # find next multiple of 7
  until current_number % 7 == 0
    current_number += 1 
  end

  loop do 
    return current_number if featured_number?(current_number)
    current_number += 7

    break if current_number >= 9_999_999_999
  end
  return "No possible number" 
end

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
# p featured(999_999_987) == 1_023_456_987
# p featured(9_999_999_999) # => no number that fulfills those requirements? because numbers would occus at least once. 
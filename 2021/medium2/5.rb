=begin

Input: 3 Integers, representing triangle length
Output: Symbol, representing the shape of the triangle or :invalid 

Rules
- to be a valid triangle, sum of the lengths of two of the shortest sides 
must be greater than the length of the longest side
- all sides must have lengths greater than 0
- if the conditions above are not satisfied, the tiangle is valid 



Examples
3, 3, 3 => :equilateral - three sides are the same length
3, 3, 1.5 => :isosceles - long legs, small base
3, 4, 5 => random sizes of lengths
0, 3, 3 => invalid because one is less than 0. 
3, 1, 1 => invalid because the sum of the legnths of the shortest sides not greater than length of longest 

Data Structure
Hash? 

Algorihtm 
- check if the given integers are valid?
  - put the integer into array integers and sort [short, shorter, longest]?  
  - return false if integers include? 0
  - check that the sum of the first two > length of longest ? true : false

- if valid? evaluates to false, return :invalid 

# Integers are valid
-  if all three integers are of equal value
  - return :equilateral 
- if the 3 numbers are different 
  - return :isosceles
- else (if one side is smaller 2 are different)
  -return :scalene? 

=end

def valid?(integers)
  return false if integers.include?(0)

  integers[0..1].sum > integers[-1] ? true : false
end

def triangle(int1, int2, int3)
  integers = [int1, int2, int3].sort

  return :invalid if !valid?(integers)

  if integers.uniq.length == 1
    return :equilateral
  elsif integers.uniq.length == 3
    return :scalene
  else
    return :isosceles
  end
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid
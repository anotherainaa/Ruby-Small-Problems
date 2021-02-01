=begin
Problem
Input: 3 integers representing degrees
Outpu: symbol, representing the name of triangle or :invalid

Rules
- All inputs are valid. No need to worry about floats any input that doesn't represent degrees
- must check if valid triangle. 
  - no side with 0. 
  - angles must total to 180 
Triangles: 
  - :right - one is 90 
  - :acute - all 3 are less than 90 
  - :obtuse - one angle is greater than 90

Example
- 60, 70 , 50 => :acute - none are more than 90 
- 30 , 90, 60 => :right - one is 90 
- 120, 50, 10 => one is greather than 90
0, 90, 90 - including 0
50, 50, 50 - not equivalent to 180 

Data Structure
Arrays 

Algotrithm 
- put the integers into an array integers 
- check if integers are valid? 
  - return false if including 0
  - check if sum == 180 ? true : false
- if false, return :invalid 

if integers inculde 90
  - return :right
if integers does not include 90
  - return :acute
if one is greater than 90 
  - return :obtuse 


=end

def valid?(angles)
  return false if angles.include?(0)

  angles.sum == 180 ? true : false
end

def triangle(angle1, angle2, angle3)
  angles = [angle1, angle2, angle3]
  return :invalid if !valid?(angles)

  if angles.include?(90)
    return :right
  elsif angles.all? {|angle| angle < 90}
    return :acute
  else
    return :obtuse
  end
end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid

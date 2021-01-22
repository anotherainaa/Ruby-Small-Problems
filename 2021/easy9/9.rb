=begin
Problem
- write a method that determines the mean or average of 3 scores passed into it, 
- return the letter value associated with that grade 

Rules
- refer to tables for scores. 
- return value is a string associated to that grade

Question
- What is the best way to represent the grade? - if statements? 

Example
- get_grade(95, 90, 93) == "A"
- get_grade(80, 75, 86) == "B"
- get_grade(50, 50, 95) == "D"

Data Structure
Input: 3 scores in the form of integers (score1, score2, score3)  
Output: String Object represented grade. 

Approach & Algorithm 

- take the 3 given arguments, sum them up and then divide it by 3 to get the average.
then using the average, determine the grade and return the string object representing the grade. 

Algorithm
- initialise a variable average and assign it to sum of the 3 arguments divided by 3
- if the average is >= 90 then A
- if the average is >= 80 then B
- if the average is >= 70 then C
- if the average is >= 60 then D
- else then F

Note: If statement or case ? 

=end

def get_grade(score1, score2, score3)
  average = (score1 + score2 + score3) / 3 

  case average
  when 90..100 then "A"
  when 80..89  then "B"
  when 70..79  then "C"
  when 60..69  then "D"
  else              "F"
  end
end

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"
=begin

Problem 
- write a fibonacci number that takes on argument which represents the fibonacci sequence order and return the fibonacci number in that sequence 
- in other words, do the fibonacci recursively bsaed on the number and return the value at that position. 

What is a Fibonacci number? 
- 1 + 1 = 2
- 1 + 2 = 3

Order: 1, 1, 2, 3, 5, 8, 13, 21

Data Structure
Input: nth an integer representing the position of the Fibonacci number
Ouput: the value of Fibonacci number at nth position 

=end


def fibonacci(nth)
  return 1 if nth <= 2
    
  fibonacci(nth - 1) + fibonacci(nth - 2)
end


p fibonacci(1) == 1
p fibonacci(2) == 1
p fibonacci(3) == 2
p fibonacci(4) == 3
p fibonacci(5) == 5
p fibonacci(12) == 144
p fibonacci(20) == 6765
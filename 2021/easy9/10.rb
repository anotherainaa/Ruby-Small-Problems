=begin

Problem
- write a method that take a grocery list
and then converts it in to an array of the correct number of each fruit. 

Edge cases? 
- can there be two inner arrays with the same ingredients but with different spelling, 
does it matter? 
- invalid inputs? 

Example
- See below. 

Data Structure
- Input: a nested array (inner array is made of ingredients + quantities)
- Output: a new array of the correct number of each fruit (not nested)

Approach & Algorithm 
- initialise a results = [] 
- take the given nested array and iterate
- for each fruit, put the "fruit"(index 0) into a new array as many times as the number in the array at index 1
- return the new array

=end

def buy_fruit(list)
  results = []
  list.each do |fruit, amount|
    amount.times { results << fruit }
  end
  results
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]

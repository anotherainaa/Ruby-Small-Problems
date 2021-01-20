=begin

- return 2 times the number provided as argument, UNLESS the argument is a double number. 
- what is a double number? 44, 3333, 7676 which means the right side and the left side are equal. 

Problem
- return double the integer unless double number 
- need to split the number exactly in the middle 

Input: Integer
Output: Integer

Questions?
- Does 3 digits always mean that it will be doubled? 
- Only numbers with even amount of digits inside can be csplit down the middle. 

Example:
See below 

Data structure
- Array to split and manage comparing numbers 

Approach / Alogorithm 
- split the numbers
- check if there are even numbers of digits in a given integer. 
- split it down the middle, if numbers are less than middle than dig1, else dig2 
- compare the two. 
- if same return int
- else return int * 2


=end

def twice(number)
  digits = number.to_s.split("").reverse

  arr1 = ""
  arr2 = ""

  digits.each_with_index do |element, index|
    if index < digits.size / 2
      arr1 << element
    else
      arr2 << element
    end
  end
  
  if arr1.to_i == arr2.to_i
    return number
  else
    return number * 2
  end
end

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10
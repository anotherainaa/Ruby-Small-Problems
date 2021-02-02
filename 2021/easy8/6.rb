=begin

Approach
results = []
- from 1..15, for each number 
  - if number is divisible by 3 & 5
    - results << FizzBuzz
  - if number is divisible by 5
    - reuslts << Buzz
  - if number is divisible by 3
    - results << Fizz
else
  - number  
  
- join results by ,
=end

def fizzbuzz(start_num, end_num)
  results = []
  (start_num..end_num).to_a.each do |number|
    if number % 3 == 0 && number % 5 == 0
      results << "FizzBuzz"
    elsif number % 5 == 0
      results << "Buzz"
    elsif number % 3 == 0 
      results << "Fizz"
    else
      results << number
    end
  end
  results.join(", ")
end

p fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz
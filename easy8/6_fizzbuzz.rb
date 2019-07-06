def fizzbuzz(start_number, end_number)
  array = []
  start_number.upto(end_number) do |i|
    if i % 3 == 0 && i % 5 == 0
      array << "FizzBuzz"
    elsif i % 3 == 0
      array << "Fizz"
    elsif i % 5 == 0
      array << "Buzz"
    else
      array << i
    end
  end
  array.join(", ")
end

p fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz

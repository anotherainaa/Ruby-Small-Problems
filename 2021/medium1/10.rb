def fibonacci_last(nth)
  first = 0
  second = 1
  sum = second + first 

  return sum if nth <= 2

  (nth - 2).times do
    first = second
    second = sum

    sum = (first + second) % 10
  end

  sum
end


def fibonacci_last_refactored(nth)
  fibonacci_last(nth % 60)
end

puts fibonacci_last_refactored(123_456_789_987_745) # -> 5



# def fibonacci_last(nth)
#   last_2 = [1, 1]

#   3.upto(nth) do
#     last_2 = [last_2.last, (last_2.first + last_2.last) % 10] 
#   end

#   p last_2
#   last_2.last
# end

p fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
p fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
p fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
p fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
p fibonacci_last_refactored(1_000_007) # -> 3 (this is a 208989 digit number)
p fibonacci_last_refactored(123456789) # -> 4
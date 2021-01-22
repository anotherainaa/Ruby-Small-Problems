# def fibonacci(nth)
#   first = 0
#   second = 1
#   sum = 0

#   nth.times do
#     sum = first + second
#     second = first
#     first = sum
#   end

#   sum
# end

def fibonacci(nth)
  first, last = [1, 1]

  3.upto(nth) do 
    first, last = [last, first + last]
  end

  last
end

#Order: 1, 1, 2, 3, 5, 8, 13, 21

p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075
p fibonacci(100_001) # => 4202692702.....8285979669707537501
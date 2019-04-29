# def repeat(string, number)
#   number.times { puts string }
# end

# def repeat(string, number)
#   for i in 1..number do
#     puts string
#   }
#   end
# end

# def repeat(string, number)
#   n = 0
#   while n < number
#     puts string
#     n += 1
#   end
# end

# def repeat(string, number)
#   n = 0
#   until n > number
#     puts string
#     n += 1
#   end
# end

# def repeat(string, number)
#   n = 0
#   loop do
#     puts string
#     n += 1
#     break if n == number
#   end
# end

def repeat(string, number)
  puts (string + "\n") * number
end

repeat('Hello', 5)

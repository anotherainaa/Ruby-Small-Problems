def multiply(a, b)
  a * b
end

def square(number)
  multiply(number, number)
end

p square(5) == 25
p square(-8) == 64

# Further exploration: power to the n method

# def power(number, exponent)
#   result = 1
#   exponent.times do
#     result *= multiply(number, 1)
#   end
#   result
# end

# p power(2, 3) == 8
# p power(2, 4) == 16
# p power(2, 5) == 32

# Other interesting solution by other students: Recursive solution


def power2(number, exponent)
  if exponent <= 0
    return 1 
  elsif exponent == 1
    return number
  else
    multiply(number, number) * power2(number, exponent - 2)
  end
end

p power2(2, 3) 
p power2(2, 4) 
p power2(2, 5)

# Other interesting solution by other students: Recursive solution
# This is similat to above but I found it abit easier to get this one
# Probably because this more easily translated into below
# power of 5: n * multiply(n、n) * multiply(n, n)


def power_rec(n, ex)
  if ex == 0
    1
  else
    if ex % 2 == 0
      power_rec(multiply(n,n), ex/2)
    else
      n * power_rec(multiply(n,n), ex/2)
    end
  end
end

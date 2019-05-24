def multiply(a, b)
  a * b
end

def square(x)
  multiply(x, x)
end

def power(x, n)
  multiply(n, n) * x
end

# p square(5) == 25
# p square(-8) == 64

p power(2, 5)

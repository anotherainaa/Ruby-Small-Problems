# Solution 1:  Using times

def repeat(string, number)
  number.times { puts string }
end

# Solution 2: using for loop
# Caveats1: Rubocop complains over convention. C: Prefer each over for.
# Caveats2: Rubocop complains with a warning.
# W: Useless assignment to variable - n.

def repeat2(string, number)
  for n in 1..number do
    puts string
  end
end

# Solution3: while loop

def repeat3(string, number)
  n = 0
  while n < number
    puts string
    n += 1
  end
end

# Solution 4: until loop
# Problems: Initially string is printed once when 0 is input
# This is because the until condition needed to be n >= number not n > number

def repeat4(string, number)
  n = 0
  until n >= number
    n += 1
    puts string
  end
end

# Solution 5: loop do
# Problem1: Initially went on an infinite loop when number is set to 0
# Problem2: String is printed once before breaking out of loop when n = 0
# In order to ensure string is not displayed if number is 0,
# placement of break is important

def repeat5(string, number)
  n = 0
  loop do
    break if n >= number
    puts string
    n += 1
  end
end

# Solution 6: until loop
# Caveats: Prints an empty line when number is set to 0

def repeat6(string, number)
  puts (string + "\n") * number
end

# Change the method name here to test other methods.

# repeat('Hello', 5)
repeat('Hello', -1)

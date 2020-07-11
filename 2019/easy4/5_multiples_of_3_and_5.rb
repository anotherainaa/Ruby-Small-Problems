require 'pry'

def multisum(number)
  sum = 0
  (1..number).to_a.each do |n|
    if n % 3 == 0 || n % 5 == 0
      sum += n
    end
  end
  sum
end

# LS Solution
# the multiple function helps make multisum more readable

def multiple?(number, divisor)
  number % divisor == 0
end

def multisum2(max_value)
  sum = 0
  1.upto(max_value) do |number|
    if multiple?(number, 3) || multiple?(number, 5)
      sum += number
    end
  end
  sum
end

# Further exploration
# it was really hard to get working as I didn't know where nil was coming from initially
# inject is easier to use when paired with another method like select
# but as it is, a developer would really have to know what it works and what it returns
# to understand what the code below is doing. 

def multisum3(max_value)
  (1..max_value).reduce(0) do |sum, number|
    if multiple?(number, 3) || multiple?(number, 5)
      sum += number
    else
      sum
    end
  end
end

# For example, below is a revision solution attempted with PEDAC and a basic loop construct
# I found that this is was easier to check whether I was on the right path
# by capturing all the numbers I want in the array result first
# and calling method inject after it to sum the numbers

def multisum4(number)
  result = []
  counter = 1

  loop do
    if multiple?(counter, 3) || multiple?(counter, 5)
      result << counter
    end

    counter += 1
    break if counter > number
  end
  result.inject(:+)
end

p multisum4(3) == 3
p multisum4(5) == 8
# p multisum3(10) == 33
# p multisum3(1000) == 234168

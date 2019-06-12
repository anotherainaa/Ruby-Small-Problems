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
def multisum3(max_value)
  (1..max_value).reduce(0) do |sum, number|
    if multiple?(number, 3) || multiple?(number, 5)
      sum += number
    else
      sum
    end
  end
end


p multisum3(3) == 3
# p multisum3(5) == 8
# p multisum3(10) == 33
# p multisum3(1000) == 234168

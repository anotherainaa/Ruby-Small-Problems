# approach
# iterate as many times as 1..integer
# for each iteration, print out max - i * space and i * stars

def triangle(integer)
  (0).upto(integer) do |i|
    space = " "
    star = "*"
    puts (space * (integer - i)) + (star * (i))
  end
end

triangle(9)
def sequence(count, starting_number)
  result = []
  product = 1

  count.times do |i|
    product = starting_number * (i + 1)
    result << product
  end
  p result
end

def sequence2(count, starting_number)
  p starting_number.step(by: starting_number).take(count)
end

p sequence2(5, 1) == [1, 2, 3, 4, 5]
p sequence2(4, -7) == [-7, -14, -21, -28]
p sequence2(3, 0) == [0, 0, 0]
p sequence2(0, 1000000) == []

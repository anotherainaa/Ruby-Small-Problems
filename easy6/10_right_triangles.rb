def triangle(number)
  number.times do |n|
    n += 1
    puts (" " * (number - n)) + ("*" * n)
  end
end


triangle(5)
triangle(9)
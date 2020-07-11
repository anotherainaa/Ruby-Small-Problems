def multiply(a, b)
  a * b
end

p multiply(5, 3) == 15

# Further exploration
p multiply('hi', 3)
p multiply([1, 2], 3)
p multiply([[5],[5]], 3) # this is equivalent to [[5],[5]] + [[5],[5]] + [[5],[5]]
p multiply([5, [5], [[5]]], 3) 

# When the first number is an array, much like the string object
# the array prints itself 3 times

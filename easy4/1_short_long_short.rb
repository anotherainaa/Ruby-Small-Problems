# Write a method that takes two strings as arguments, determines the longest of 
# the two strings, and then returns the result of concatenating the shorter string, 
# the longer string, and the shorter string once again. 
# You may assume that the strings are of different lengths.

# concatenate string

def short_long_short(string1, string2)
  new_string = ''
  if string2.length > string1.length
    new_string << string1
    new_string << string2
    new_string << string1
  else
    new_string << string2
    new_string << string1
    new_string << string2
  end
  new_string
end

# Using array and #join to achieve the same result as above

def short_long_short2(string1, string2)
  result = []
  if string2.length > string1.length
    result.push(string1).push(string2).push(string1)
  else
    result.push(string2).push(string1).push(string2)
  end
  result.join
end

# LS Solution
# Concatenating the string together 
# note that it's not necessary to declare a variable as per my first solution
# String interpolation is also possible

def short_long_short3(string1, string2)
  if string1.length > string2.length
    string2 + string1 + string2
  else
    string1 + string2 + string1
  end
end

# Key takeaway is that Clarity is more important than density.

# Other solution by LS
# Note that this may be harder to understand.

def short_long_short4(string1, string2)
  arr = [string1, string2].sort_by { |element| element.length}
  arr.first + arr.last + arr.first
end 

p short_long_short2('abc', 'defgh') == "abcdefghabc"
p short_long_short2('abcde', 'fgh') == "fghabcdefgh"
p short_long_short2('', 'xyz') == "xyz"
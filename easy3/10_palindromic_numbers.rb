def palindrome?(words)
  words.reverse == words
end

# Solution 1

def palindromic_number?(number)
  palindrome?(number.to_s)
end

# Solution 2
## Note that below only works on 2.4 and above.

def palindromic_number2?(num)
  num.digits == num.digits.reverse
end

# Further exploration
# Would it still work if number started with 0 i.e 034543
# No it would not because a 0 ni the front means the number is an octal number
# In order to make it work, you'd have to convert the octal number first
# Or make a validation to reject octal numbers for the method.
# Or take the input as strings to evaluate them like string

p palindromic_number?(34543) == true
p palindromic_number?(123210) == false
p palindromic_number?(22) == true
p palindromic_number?(5) == true

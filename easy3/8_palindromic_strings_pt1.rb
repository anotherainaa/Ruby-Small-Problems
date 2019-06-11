# Solution 1: #reverse

def palindrome?(string)
  string.reverse == string
end

# Further exploration
# write a method that can determine whether a string or array is palindrome
# Notice that nothing needs to be changed from the code above because #reverse
# is a method that can be used by both string and array 
# It's probably better to be concise with the variable naming to help
# other people know what this method really does.

def palindrome2?(array)
  array.reverse == array
end

def palindrome3?(words)
  words.reverse == words
end

p palindrome3?('madam') == true
p palindrome3?('Madam') == false          # (case matters)
p palindrome3?("madam i'm adam") == false # (all characters matter)
p palindrome3?('356653')
p palindrome3?('rotor')
p palindrome3?('kayak')
p palindrome3?('Kayak')
p palindrome3?('Was it a car or a cat I saw')
p palindrome3?('refer')
p palindrome3?('123321')


p palindrome3?(['1', '2', '3', '2', '1'])

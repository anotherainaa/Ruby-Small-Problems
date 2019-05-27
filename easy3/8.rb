def palindrome1?(string)
  string.reverse == string
end

def palindrome2?(array)
  array.reverse == array
end

def palindrome?(words)
  words.reverse == words
end

p palindrome?('madam') == true
p palindrome?('Madam') == false          # (case matters)
p palindrome?("madam i'm adam") == false # (all characters matter)
p palindrome?('356653')
p palindrome?('rotor')
p palindrome?('kayak')
p palindrome?('Kayak')
p palindrome?('Was it a car or a cat I saw')
p palindrome?('refer')
p palindrome?('123321')


p palindrome?(['1', '2', '3', '2', '1'])

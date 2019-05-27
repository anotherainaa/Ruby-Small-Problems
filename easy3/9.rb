def palindrome?(words)
  words.reverse == words
end

# def strip_non_alphanumeric_characters(words)
#   words = words.split("") if words.class == String
#   array_of_characters = []
#   valid_characters = ('a'..'z').to_a + %w(0 1 2 3 4 5 6 7 8 9)
#   words.each do |letter|
#     if valid_characters.include?(letter.downcase)
#       array_of_characters << letter.downcase
#     end
#   end
#   array_of_characters
# end

# def real_palindrome?(words)
#   words = strip_non_alphanumeric_characters(words)
#   palindrome?(words)
# end


# LS Solution
def real_palindrome?(string)
  string = string.downcase.delete('^a-z0-9')
  palindrome?(string)
end

p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true
p real_palindrome?("madam i'm adam") == true
p real_palindrome?('356653')
p real_palindrome?('rotor')
p real_palindrome?('kayak')
p real_palindrome?('Kayak')
p real_palindrome?("Was it a car or a cat I saw?")
p real_palindrome?('refer')
p real_palindrome?('123321')
p real_palindrome?("A man, a plan, a canal, Panama!")
p real_palindrome?("No 'x' in Nixon.")

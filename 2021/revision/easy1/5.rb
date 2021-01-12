=begin

Algorithm
- initalise an empty array results
- take the given string and split it between the spaces 
- iterate over it and save the current word into the front of the results array using unshift 
- return results joined together with a space
=end

def reverse_sentence(words)
  results = []
  words.split.each do |word|
    results.unshift(word)
  end

  results.join(" ")
end


puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'

# Testing something from previous solution

def test(string)
  string.split.reverse.map(&:reverse).join(" ")
end

# Actual problem + solution

=begin
 Problem
 - returns the given string with words that contain five or more characters reversed 
 
 Input: string of one word or many words
 Output: a new string with words that contain five or more characters reversed. 

 Questions:
- What happens if there is only one character? 
  - It should return as is
- What about spaces? 
  - Spaces need to remain in the same place between words 
- Any edge cases to consider? 
  - For this question, consider all valid inputs. 

Example
- See the ones below 

Data Structure 
- String and Arrays(need to manipulate words and preserve the order)

Approach
- take the given string and split the word at spaces. 
- for each word, check if there is more than 4 characters in that word.
  - if yes, reverse it and put it into a new array 
  - if no, put the word into a new array as is. 
- return the new array containing all the words joined with a space 

Algorithm
- create an empty array called results to hold the words updated based on the requirement
- split the string using method #split which returns an array
- iterate over the array using #each, each element represent a word
  - if word.size > 4
    - reverse the word
    - push the reversed word into results
  - else
    - push the wor into the results array as is
- join the results with a space and return this 
=end

def reverse_words(string)
  results = []
  string.split.each do |word|
    if word.size > 4
      results << word.reverse
    else
      results << word
    end
  end
  results.join(" ")
end


puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')      
puts reverse_words('A')   
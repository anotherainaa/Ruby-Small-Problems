=begin

Problem
- write a method that take a string as argument, returns an array with every word + the word length. 

Rules
- punctuations are counted as well in the word length as demonstrated by example 3
- spaces are not counted. 

Example
- cow sheep chicken which returns ["cow 3", "sheep 5", "chicken 7"]

Data structure
Input: String (of words)
Output: Array (word + space and word length)

Approach 
- take the given string. 
- split it into an array by word (by using spaces). 
- iterate over the array add the word to a new array and append a word count to it. 
- return the new array 

Algorithm 
- initialise a results_array to keep the results. 
- take the given string, split it by spaces into an array
- iterate over the array, for each word
  - insert into the array the word + space + word.length
return the new array

=end

def word_lengths(words)
  results = []
  words.split.each do |word|
    results << (word + " #{word.length}")
  end
  results
end

p word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

p word_lengths("baseball hot dogs and apple pie") == ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

p word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

p word_lengths("Supercalifragilisticexpialidocious") == ["Supercalifragilisticexpialidocious 34"]

p word_lengths("") == []
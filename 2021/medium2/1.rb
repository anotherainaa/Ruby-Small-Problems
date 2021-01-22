=begin

Problem
- write a program that reads the content of a text file

Input
- Input: string of text
- Output: the number of words in the longest sentence 

Approach

- create a results array to keep the word count for each sentence

- for each sentence
  - get the words in each sentence by split every word by spaces.
  - add to the results array the number of words 

- return the biggest number. 
=end

def longest_sentence(text)
  sentences = text.split(/\.|\?|!/)
  
  largest_sentence = sentences.max do |a, b|
    a.length <=> b.length
  end

  word_count = []
  
  sentences.each do |sentence|
    words = sentence.split
    word_count << words.length
  end

  puts "#{largest_sentence}"
  puts "Total words: #{word_count.max}"
end

file = File.open("/Users/ainaasakinah/Desktop/pg84.txt")

p longest_sentence(file.read)
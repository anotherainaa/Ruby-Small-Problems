
# Solution 1

def calculate_characters(words)
  characters = 0
  words.split(' ').each do |element|
    characters += element.length
  end
  characters
end

# Solution 2
# Note this was revised at a later date

def count_characters2(words)
  no_of_characters = 0
  words.split.each do |word|
    no_of_characters += word.length
  end
  no_of_characters
end

puts 'Please write word or multiple words: '
words = gets.chomp
characters = calculate_characters2(words)
puts "There are #{characters} characters in #{words}."

# LS Solution
# Note the \"\" that is added to match the original expected output

print 'Please write word or multiple words: '
input = gets.chomp
number_of_characters = input.delete(' ').size
puts "There are #{number_of_characters} characters in \"#{input}\"."




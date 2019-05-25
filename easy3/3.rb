
def calculate_characters(words)
  characters = 0
  words.split(' ').each do |element|
    characters += element.length
  end
  characters
end

puts "Please write word or multiple words:"
words = gets.chomp

characters = calculate_characters(words)
puts "There are #{characters} characters in #{words}."


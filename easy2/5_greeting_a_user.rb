# My solution

puts "What is your name?"
name = gets.chomp

if name.include?('!')
  puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}."
end

# LS Solution 
# Note : #chop return the chopped string , not the chopped item
# You can use #last on an array but there is no #last method on string. 

puts "What is your name?"
name = gets.chomp

if name[-1] == '!'
  name = name.chop
  puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}."
end

# Further exploration


puts "What is your name?"
name = gets.chomp

if name[-1] == '!'
  name.chop!
  puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}."
end


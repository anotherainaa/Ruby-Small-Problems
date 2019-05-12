# Exercise title: How old is Teddy?

# age = rand(20..200)
# puts "Teddy is #{age} years old!"

# Further exploration

puts "What's your name?"
name = gets.chomp

age = rand(20..200)

if name.empty?
  puts "Teddy is #{age} years old!"
else
  puts "#{name} is #{age} years old"
end


# Solution
# When rand is used with a range all numbers in range is included. 
# whereas if not range, the integer being passed as argument will never be returned

# age = rand(20..200)
# puts "Teddy is #{age} years old!"

# # Further exploration

puts "What's your name?"
name = gets.chomp

age = rand(20..200)

if name.empty?
  puts "Teddy is #{age} years old!"
else
  puts "#{name} is #{age} years old"
end

# Using a method to define default name
# Caveats = This doesn't work when entering name into name = gets.chomp above
# which means there is no chance for the default value 'Teddy' to ever be shown in this case

def compute_age(name = 'Teddy')
  age = rand(20..200)
  puts "#{name} is #{age} years old!"
end

p compute_age(name)
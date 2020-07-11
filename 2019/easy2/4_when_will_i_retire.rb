puts "What is your age?"
age = gets.chomp.to_i

puts "At what age would you like to retire?"
retirement_age = gets.chomp.to_i

current_year = Time.now.year
years_to_retirement = retirement_age - age
retirement_year = current_year + years_to_retirement

puts "It's #{current_year}. You will retire in #{retirement_year}."
puts "You have only #{years_to_retirement} years of work to go!"

# Notes: You can also require date and use Date.today.year but 
# Time.now.year don't need to require anyting and seems more suitable for this exercise
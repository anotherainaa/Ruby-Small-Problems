puts "What is the bill?"
bill = gets.chomp.to_f

puts "What is the tip percentage?"
percentage = gets.chomp.to_f

total_tip = percentage / 100 * bill.round(2)
total_paid = bill + total_tip.round(2)

# Further exploration
# Note: I originally copy pasted the format from the course exercise
# but after reading the doc , I realiased only below is needed. 
# Go back to exercise and check understanding of the #format in that exercise

puts "The tip is $#{format('%.2f', total_tip)}"
puts "The total is $#{format('%.2f',total_paid)}"

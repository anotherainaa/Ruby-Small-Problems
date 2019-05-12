puts "What is the bill?"
bill = gets.chomp.to_f

puts "What is the tip percentage?"
percentage = gets.chomp.to_f

total_tip = percentage / 100 * bill.round(2)
total_paid = bill + total_tip.round(2)

# Further exploration

puts "The tip is $#{format('%02.2f', total_tip)}"
puts "The total is $#{format('%02.2f',total_paid)}"

def print_in_box2(string)
  puts "+-" + ("-" * string.length) + "-+" + "\n"
  puts "| " + (" " * string.length) + " |" + "\n"
  puts "| " + string + " |" + "\n"
  puts "| " + (" " * string.length) + " |" + "\n"
  puts "+-" + ("-" * string.length) + "-+" + "\n"
end

def print_in_box(string)
  count = 1
  until count > 5
    if count == 1 || count == 5
      puts "+-" + ("-" * string.length) + "-+" + "\n"
    elsif count == 2 || count == 4
      puts "| " + (" " * string.length) + " |" + "\n"
    else
      puts "| " + string + " |" + "\n"
    end
    count += 1
  end
end

print_in_box('To boldly go where no one has gone before.')
print_in_box('')
print_in_box('To be or not to be.')
print_in_box('Christmas carols: Rudolf the red nnose reinder had a very shiny nose')
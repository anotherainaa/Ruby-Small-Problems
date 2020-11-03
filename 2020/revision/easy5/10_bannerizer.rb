=begin 

Write a method that will take a short line of text, and print it within a box. 

- Problem
Create a method that prints out the given string in a box. 

Input - String
Output - output string to terminal in a box. 

- Assume do not need to return anything. Return nil beucase using puts to print the given string
- You may assume that the input will always fit in your terminal window. 

- Examples: 

print_in_box('To boldly go where no one has gone before.')
+--------------------------------------------+
|                                            |
| To boldly go where no one has gone before. |
|                                            |
+--------------------------------------------+
 
print_in_box('To boldly go where no one has gone before.')
+--------------------------------------------+
|                                            |
| To boldly go where no one has gone before. |
|                                            |
+--------------------------------------------+

- Note: Not going to add any extra test cases because this cover everything I need. 

Data structure: 
- Getting a string input but will only print the string. 

Algorithm 
- Create a method that takes in a string. 
- Create the border
- Create the border on the second line and calculting the amount of spaces required. given string + one space in front and at the back. 
- Create the middl of the box + string. padding the given text. 
- Create the border on the second line and calculting the amount of spaces required. given string + one space in front and at the back. 
- Create the border

- Note: There is pattern to the border. Can the code be re-used on the repitition?

=end

def print_in_box(string)
  outer_border = "+" + "-" * (string.length + 2) + "+"
  inner_border = "|" + " " * (string.length + 2) + "|"
  message = "| " + string  + " |"

  puts outer_border
  puts inner_border
  puts message
  puts inner_border
  puts outer_border
end

# print_in_box("test")
# print_in_box("To boldly go where no one has gone before.")
# print_in_box("")



=begin
Further exploration. 
Modify this method so it will truncate the message if it will be too wide to fit inside a standard terminal window (80 columns, including the sides of the box). 
For a real challenge, try word wrapping very long messages so they appear on multiple lines, but still within a box.

Problem
- Given a string of text, print it in a box 

Rules
- If it's more than 80 columns, break it up so that they still fit within the box. 
- Extend the box to print out all the string. 

Input: String, more than 80 columns 
Output: String printed in a neatly formatted box. 

Example: 

+------------------------------------------------------------------------------+
|                                                                              |
| To boldly go where no one has gone before. To boldly go where no one has gon |
| e before. To boldly go where no one has gone before. To boldly go where no o |
| ne has gone before.                                                          |
|                                                                              |
+------------------------------------------------------------------------------+

- Note that it has to be 76 characters + 2 spaces + 2 borders to create 80. 
- The message has to be wrapped as many times until it finishes.  

# print_in_box("To boldly go where no one has gone before. To boldly go where no one has gone before. To boldly go where no one has gone before. To boldly go where no one has gone before.")

# Data strcuture
- Array to split up the string? 

# Algorithm 
- check if the string has more than 76 characters. 
- if yes, print until message is finished. 
- else print normal 

=end

# First attempt

def print_in_box(string)  
  outer_border = "+" + "-" * (string.length + 2) + "+"
  inner_border = "|" + " " * (string.length + 2) + "|"
  middle = "| " + string  + " |"

  if string.length <= 76
    puts outer_border
    puts inner_border
    puts middle
    puts inner_border
    puts outer_border
  else
    messages = string.scan(/.{1,76}/)

    puts "+" + "-" * (messages[0].length + 2) + "+"
    puts "|" + " " * (messages[0].length + 2) + "|"

    messages.each do |message|
      puts "| " + message + " " * (76 - message.length) + " |"
    end

    puts "|" + " " * (messages[0].length + 2) + "|"
    puts "+" + "-" * (messages[0].length + 2) + "+"
  end
end

# Final comments
# How can I change the method to be more DRY? 

# Second attempt to make the code more DRY
# Comments: Tried to make the code more dry but should maybe look at other student's exploration to explore other ideas

def print_in_box(string)  
  messages = []
  if string == ""
    messages << string
  else
    messages = string.scan(/.{1,76}/)
  end

  puts "+" + "-" * (messages[0].length + 2) + "+"
  puts "|" + " " * (messages[0].length + 2) + "|"

  messages.each do |message|
    if string.length <= 76
      puts "| " + message + " |"
    else
      puts "| " + message + " " * (76 - message.length) + " |"
    end
  end

  puts "|" + " " * (messages[0].length + 2) + "|"
  puts "+" + "-" * (messages[0].length + 2) + "+"

end

print_in_box("")
print_in_box("test")
print_in_box("To boldly go where no one has gone before.")
print_in_box("To boldly go where no one has gone before. To boldly go where no one has gone before. To boldly go where no one has gone before. To boldly go where no one has gone before.")

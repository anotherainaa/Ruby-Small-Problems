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

print_in_box("test")
print_in_box("To boldly go where no one has gone before.")
print_in_box("")
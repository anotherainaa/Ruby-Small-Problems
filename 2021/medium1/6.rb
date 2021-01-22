=begin

Problem
- write A method that implements a miniature stack 

- stack - array that uses push and pop methods
- register is not part of the stack

- at any time there is an operation, use the top of stack and register and store the result back in register. 

- all programs are correct programs

Data Stuctures
Input: string of instructions divided by spaces
Output: 

Approach:
- initalise stack = []
- initliase register = 0
- divide instructions up by space
- for each instruction, determine what they do. 
  - if it's an integer `n` they must be set to the register
  - register = integer `n`
  - if it's an instruction, determine what the instruction does. 
    - PUSH - push register value to stack #push
    - ADD - pops a value from the stack and add it to the register value. store the result in register
    - POP -#pop the outermost value and place in register
    - PRINT - output the register value
- output to the terminal when needed. 


=end

def integer?(str)
  str.to_i.to_s == str
end

def minilang(instructions)
  stack = []
  register = 0

  instructions.split.each do |instruction|
    case instruction
    when "PUSH"
      stack << register
    when "ADD"
      register += stack.pop
    when "SUB"
      register -= stack.pop - register 
    when "MULT"
      register *= stack.pop * register
    when "DIV"
      register /= stack.pop
    when "MOD"
      register %= stack.pop
    when "PRINT"
      puts register
    when "POP"
      register = stack.pop
    else
      register = instruction.to_i if integer?(instruction)
    end
  end
end

minilang('PRINT')
# 0

minilang('5 PUSH 3 MULT PRINT')
# 15

minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# 5
# 3
# 8

minilang('5 PUSH POP PRINT')
# 5

minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# 5
# 10
# 4
# 7

minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# 6

minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# 12

minilang('-3 PUSH 5 SUB PRINT')
# 8

minilang('6 PUSH')
# (nothing printed; no PRINT commands)

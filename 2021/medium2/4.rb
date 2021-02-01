=begin

Problem
Input: string
Output: Boolean, true if string balanced, false if not

Rules
- For a string to be balanced, parenthese must occur in matching ( and ) pairs. 
- Balanced pair must start with a ( and not ) (with ending parenthese)
- string with No parentheses returns true. 

Examples:
- 'What (is) this?' => True, because parenthesis is balanced, starts with a ( and ends with a)
- 'What is) this?' => false there is only one )
- 'What (is this? => false because there is only one. 
- '((What) (is this))?' => true because both parentheses start with ( and end with a)
  - Note that the location doesn't matter. 
  - What matters is that they are both closed. 
- ((What)) (is this) => false because of nested parenthese. Not balanced! ( occurs twice (
- Hey! => true because there are no parenthese. 

Data Structure
- Strings ??? Will I need arrays? 

Algorithm 
 
- initlalise variable parentheses = ""
- Delete all other characters besides brackets and assign the value to parentheses. 
- return true if parenthese is equal to empty string.

# once I have only parenthese,
- until parenthese is empty or legnth == 1
 - sub all ()
=end


def balanced?(str)
  parentheses = str.delete('^()')
  return true if parentheses.empty?

  until parentheses == parentheses.sub("()", "")
    parentheses.sub!("()", "")
  end

  return true if parentheses.empty?
  return false
end

# Try again with the LS solution

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false
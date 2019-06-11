# My original solution
# Notice in LS solution that it's not necesary to return true false. 

def xor?(condition1, condition2)
  if (condition1 && !condition2) || (!condition1 && condition2)
    true
  else
    false
  end
end

# LS solution 1
# This code return nil without the false at the end. 
# Since by convention, methods with ? return a true or false value it's necessary to 
# return false at the end for the situations besides the two codes above it.

def xor?(value1, value2)
  return true if value1 && !value2
  return true if value2 && !value1
  false
end

# LS solution 2
# Notice that this is the if confition removed from my solution

def xor?(condition1, condition2)
  (condition1 && !condition2) || (!condition1 && condition2)
end

p xor?(5.even?, 4.even?)
p xor?(5.odd?, 4.odd?)
p xor?(5.odd?, 4.even?)
p xor?(5.even?, 4.odd?)

# Futher exploration
# || and && are so-called short circuit operators in that the 
# second operand is not evaluated if its value is not needed. 
# Does the xor method perform short-circuit evaluation of its operands? 
# Why or why not? Does short-circuit evaluation in xor operations even make sense?

# => Imo, xor method does not perform short-circuit evaluation 
# because we need to know both values in order to know the final output

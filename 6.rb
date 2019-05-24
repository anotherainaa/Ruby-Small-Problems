# def xor?(condition1, condition2)
#   if (condition1 && !condition2) || (!condition1 && condition2)
#     true
#   else
#     false
#   end
# end

# can be simplified into

def xor?(condition1, condition2)
  (condition1 && !condition2) || (!condition1 && condition2)
end

p xor?(5.even?, 4.even?)
p xor?(5.odd?, 4.odd?)
p xor?(5.odd?, 4.even?)
p xor?(5.even?, 4.odd?)

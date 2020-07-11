# def uppercase?(string)
#   string.chars.all? do |char|
#     char == char.upcase
#   end
# end

# LS one liner method

def uppercase?(string)
  string == string.upcase
end

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true

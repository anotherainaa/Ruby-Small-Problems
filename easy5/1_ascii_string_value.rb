# Use string#ord

=begin
input:  string
output: total sum of string in ascii value

#map to transform element into ascii value
sum += value

=end

# You can also use #reduce on this problem

def ascii_value(string)
  sum = 0
  string.chars.map do |character|
    sum += character.ord
  end
  sum
end

# Further exploration

p char = 'abds'
p char.ord.chr == char

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0
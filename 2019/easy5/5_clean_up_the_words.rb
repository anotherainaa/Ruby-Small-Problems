ALPHABETS = ('a'..'z').to_a + ('A'..'Z').to_a

# This was my first attempt at tackling this solution using regex
# and also first time knowing about the method String#squeeze
def cleanup(string)
  # string.gsub(/[^a-z]+/, ' ')
  string.gsub(/[^a-z]/, ' ').squeeze(' ')
end

# This was a revision some time later.
# I tried to come up with the algorithms of the LS solution
# and also solve the problem without looking at the answer again.
# While I managed to figure out this algorithm during this revision
# It would perhaps be easier to use an array instead of string for this problem
# as I would have acces to Array#last method which would be easier to
# understand at a glance

def cleanup(string)
  clean_letters = ''

  string.chars.each do |char|
    if ALPHABETS.include?(char)
      clean_letters << char
    else
      last_index = clean_letters.size - 1
      next if clean_letters[last_index] == ' '
      clean_letters << ' '
    end
  end
  clean_letters
end

p cleanup("---what's my +*& line?") == ' what s my line '
p cleanup("---WhAt's my +*& line?") == ' WhAt s my line '

p cleanup("---what's my +*& line?") == ' what s my line '
p cleanup("---hello?") == ' hello '

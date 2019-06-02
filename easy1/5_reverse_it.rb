# Solution 1: Ruby idiomatic way

def reverse_sentence(string)
  string.split.reverse.join(' ')
end

# Solution 2: Iterate over array and return last
# item while removing it from array using Array#pop
# Caveats: Must be careful if incrementing ++ because array is mutated.
# See loop solution.

def reverse_sentence2(string)
  new_string = []
  strings_array = string.split
  until strings_array.length <= 0
    new_string << strings_array.pop
  end
  new_string.join(' ')
end

# Solution 3: Using loop
# Mutating an array while looping through it

def reverse_sentence3(string)
  new_string = []
  strings_array = string.split
  count = strings_array.length
  loop do
    new_string << strings_array.pop
    count -= 1
    break if count <= 0
  end
  new_string.join(' ')
end

p reverse_sentence('')
p reverse_sentence('Hello World')
p reverse_sentence('Reverse these words')
puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
